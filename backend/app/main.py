from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from fastapi.staticfiles import StaticFiles
from fastapi.responses import FileResponse
from app import simulador
import os

app = FastAPI(
    title="Simulador PAES API",
    version="1.0.0",
    contact={"name": "Simulador PAES"},
)

# Middleware CORS
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],  # en producción puedes limitarlo a tu dominio
    allow_credentials=False,
    allow_methods=["*"],
    allow_headers=["*"],
)

# Incluir router principal
app.include_router(simulador.router)

# Endpoints de verificación
@app.get("/api", tags=["default"])
def root_api():
    return {"ok": True, "msg": "Simulador PAES API"}

@app.get("/health", tags=["default"])
def health():
    return {"status": "ok"}

# ---------------------------
# 🚀 Servir el frontend React
# ---------------------------
frontend_path = os.path.join(os.path.dirname(__file__), "../../frontend/build")

if os.path.exists(frontend_path):
    app.mount("/static", StaticFiles(directory=os.path.join(frontend_path, "static")), name="static")

    @app.get("/")
    def serve_react():
        index_path = os.path.join(frontend_path, "index.html")
        return FileResponse(index_path)
else:
    @app.get("/")
    def no_frontend():
        return {"msg": "Frontend no compilado. Ejecuta 'npm run build' en la carpeta frontend."}

if __name__ == "__main__":
    import uvicorn
    uvicorn.run("app.main:app", host="0.0.0.0", port=8000, reload=True)
else:
    @app.get("/")
    def serve_placeholder():
        return {
            "msg": "El frontend aún no ha sido compilado. Ejecuta 'npm run build' en la carpeta frontend."
        }

# ----------------------------
# EJECUCIÓN LOCAL
# ----------------------------
if __name__ == "__main__":
    import uvicorn
    uvicorn.run("app.main:app", host="0.0.0.0", port=8000, reload=True)