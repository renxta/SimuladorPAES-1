from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from fastapi.staticfiles import StaticFiles
from fastapi.responses import FileResponse
from . import simulador
import os
import logging

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

# Incluir router principal
app.include_router(simulador.router)

# Servir archivos estáticos construidos por React (se asume que están en backend/app/static)
base_dir = os.path.dirname(__file__)
static_dir = os.path.join(base_dir, "static")
if os.path.isdir(static_dir):
    # Usamos la ruta absoluta para evitar problemas con cwd
    app.mount("/", StaticFiles(directory=static_dir, html=True), name="static")
else:
    logging.warning(f"Static directory not found at {static_dir}. Frontend will not be served from backend.")

# Endpoints base de verificación
@app.get("/api", tags=["default"])
def root_api():
    return {"ok": True, "msg": "Simulador PAES API"}

@app.get("/health", tags=["default"])
def health():
    return {"status": "ok"}



# ----------------------------
# EJECUCIÓN LOCAL (solo para dev)
# ----------------------------
if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app=app, host="0.0.0.0", port=8000, reload=True)
