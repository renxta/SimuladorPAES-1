# app/main.py
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from app import simulador
from app.routes import universidades, carreras, puntajes

app = FastAPI(
    title="Simulador PAES API",
    version="1.0.0",
    contact={"name": "Simulador PAES"},
)

# ----------------------------------------
# Configuración CORS (para Swagger y Frontend React)
# ----------------------------------------
app.add_middleware(
    CORSMiddleware,
    allow_origins=[
        "http://localhost:3000",  # frontend React local
        "http://127.0.0.1:3000",
        "*",  # opcional: permite cualquier origen durante pruebas
    ],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# ----------------------------------------
# Rutas principales
# ----------------------------------------
app.include_router(universidades.router)
app.include_router(carreras.router)
app.include_router(puntajes.router)
app.include_router(simulador.router)

# ----------------------------------------
# Endpoints base de verificación
# ----------------------------------------
@app.get("/", tags=["default"])
def root():
    return {"ok": True, "msg": "Simulador PAES API en ejecución 🚀"}

@app.get("/health", tags=["default"])
def health():
    return {"status": "ok"}

# ----------------------------------------
# Modo ejecución directa
# ----------------------------------------
if __name__ == "__main__":
    import uvicorn
    uvicorn.run("app.main:app", host="127.0.0.1", port=8000, reload=True)
