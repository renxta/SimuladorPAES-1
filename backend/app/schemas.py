# app/schemas.py
from typing import Optional, List
from pydantic import BaseModel, Field

# =====================================================
# 📥 MODELOS DE ENTRADA (request)
# =====================================================

class SimularRequest(BaseModel):
    """Datos que el usuario ingresa para simular su postulación."""
    ano: int = Field(..., ge=2000, le=2100)
    lenguaje: float
    matematicas: float
    matematicas2: float
    ciencias: float
    historia: float
    nem: float
    ranking: float
    universidad: Optional[str] = None  # filtro "contiene"
    carrera: Optional[str] = None      # filtro "contiene"
    limit: int = 120                   # cantidad máxima de resultados


# =====================================================
# 📤 MODELOS DE SALIDA (response)
# =====================================================

class OpcionPostulacion(BaseModel):
    """Resultado devuelto por el simulador."""
    universidad: str
    carrera: str
    area: Optional[str] = None
    puntaje_corte: float
    puntaje_ponderado: float
    margen: float  # diferencia entre ponderado y corte

    class Config:
        from_attributes = True


# -----------------------------------------------------
# UNIVERSIDADES
# -----------------------------------------------------
class UniversidadOut(BaseModel):
    id: int
    nombre: str
    acreditacion: Optional[int] = None
    sitio_web: Optional[str] = None
    direccion: Optional[str] = None

    class Config:
        from_attributes = True


# -----------------------------------------------------
# CARRERAS
# -----------------------------------------------------
class CarreraOut(BaseModel):
    """Representación de una carrera en la API."""
    id: int
    nombre: str
    area: Optional[str] = None          # 👈 agregado para incluir área
    vacantes: Optional[int] = None
    arancel: Optional[int] = None
    universidad_id: int

    class Config:
        orm_mode = True
        from_attributes = True


# -----------------------------------------------------
# PONDERACIONES (opcional)
# -----------------------------------------------------
class PonderacionOut(BaseModel):
    carrera_id: int
    w_lenguaje: float
    w_matematicas: float
    w_matematicas2: float
    w_ciencias: float
    w_historia: float
    w_nem: float
    w_ranking: float

    class Config:
        from_attributes = True


# -----------------------------------------------------
# PUNTAJES DE CORTE (opcional)
# -----------------------------------------------------
class PuntajeCorteOut(BaseModel):
    carrera_id: int
    puntaje_minimo: float
    ano: int

    class Config:
        from_attributes = True
