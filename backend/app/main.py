from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from fastapi.staticfiles import StaticFiles
from fastapi.responses import FileResponse
from . import simulador
import os
import logging
import time
from starlette.requests import Request
from fastapi.responses import JSONResponse

app = FastAPI(
    title="Simulador PAES API",
    version="1.0.0",
    contact={"name": "Simulador PAES"},
)

# Middleware CORS
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],  # puedes restringir tu dominio en producción
    allow_credentials=False,
    allow_methods=["*"],
    allow_headers=["*"],
)

# Incluir router principal bajo el prefijo /api para que todas las rutas de la API
# queden como /api/...
app.include_router(simulador.router, prefix="/api")
# Directorios base para estáticos (se usan más abajo, después de declarar endpoints)
base_dir = os.path.dirname(__file__)
static_dir = os.path.join(base_dir, "static")


# Middleware para loguear cada petición (método, path, status y tiempo)
@app.middleware("http")
async def log_requests(request: Request, call_next):
    start_time = time.time()
    try:
        response = await call_next(request)
    except Exception as exc:
        # Loggear excepciones también
        logging.exception(f"Error handling request {request.method} {request.url.path}")
        raise
    process_time = (time.time() - start_time) * 1000
    logging.info(f"{request.client.host if request.client else 'unknown'} - {request.method} {request.url.path} -> {response.status_code} ({process_time:.2f}ms)")
    return response


# Endpoint de diagnóstico disponible solo si DEBUG=1 o true
def _is_debug_enabled():
    return os.getenv("DEBUG", "").lower() in ("1", "true")


if _is_debug_enabled():
    @app.get("/api/__debug", tags=["debug"])
    def debug_info():
        try:
            files = []
            if os.path.isdir(static_dir):
                files = sorted(os.listdir(static_dir))
        except Exception:
            files = ["<error listing files>"]
        info = {
            "static_exists": os.path.isdir(static_dir),
            "static_listing": files,
            "pid": os.getpid(),
            "port_env": os.getenv("PORT"),
            "debug": True,
        }
        return JSONResponse(info)

# Endpoints base de verificación
@app.get("/api", tags=["default"])
def root_api():
    return {"ok": True, "msg": "Simulador PAES API"}

@app.get("/api/health", tags=["default"])
def health():
    return {"status": "ok"}


# Montar archivos estáticos al final para que las rutas de la API tengan prioridad
if os.path.isdir(static_dir):
    # Usamos la ruta absoluta para evitar problemas con cwd
    app.mount("/", StaticFiles(directory=static_dir, html=True), name="static")
else:
    logging.warning(f"Static directory not found at {static_dir}. Frontend will not be served from backend.")

# ----------------------------
# EJECUCIÓN LOCAL (solo para dev)
# ----------------------------
if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app=app, host="0.0.0.0", port=8000, reload=True)
