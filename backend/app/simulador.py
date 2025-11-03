# app/routes/simulador.py
from typing import List, Optional
from fastapi import APIRouter, Depends, HTTPException
from pydantic import BaseModel
from sqlalchemy.orm import Session
from app.db import get_db
from app import models

router = APIRouter(prefix="/simulador", tags=["simulador"])


# ---------------------------
# Modelo de solicitud
# ---------------------------
class SimularRequest(BaseModel):
    lenguaje: float
    matematicas: float
    matematicas2: Optional[float] = 0
    ciencias: Optional[float] = 0
    historia: Optional[float] = 0
    nem: float
    ranking: float
    universidad: Optional[str] = None
    carrera: Optional[str] = None
    area: Optional[str] = None   # 👈 🔹 Nuevo campo para filtrar por área
    limit: Optional[int] = 120


# ---------------------------
# Modelo de respuesta
# ---------------------------
class OpcionPostulacion(BaseModel):
    universidad: str
    carrera: str
    area: Optional[str]   # 👈 Mostrar también el área en la respuesta
    puntaje_ponderado: float
    puntaje_corte: float
    margen: float


# ---------------------------
# Endpoint principal
# ---------------------------
@router.post("/", response_model=List[OpcionPostulacion])
def simular(req: SimularRequest, db: Session = Depends(get_db)):
    try:
        q = (
            db.query(
                models.Universidad.nombre.label("universidad"),
                models.Carrera.nombre.label("carrera"),
                models.Carrera.area.label("area"),  # 👈 Importante
                models.Ponderacion,
                models.PuntajeCorte.puntaje_minimo,
            )
            .join(models.Carrera, models.Carrera.universidad_id == models.Universidad.id)
            .join(models.Ponderacion, models.Ponderacion.carrera_id == models.Carrera.id)
            .join(models.PuntajeCorte, models.PuntajeCorte.carrera_id == models.Carrera.id)
        )

        # Filtros opcionales
        if req.universidad:
            q = q.filter(models.Universidad.nombre.ilike(f"%{req.universidad}%"))
        if req.carrera:
            q = q.filter(models.Carrera.nombre.ilike(f"%{req.carrera}%"))
        if req.area:  # 👈 Filtro nuevo
            q = q.filter(models.Carrera.area.ilike(f"%{req.area}%"))

        # Ejecutar consulta
        results = q.all()
        if not results:
            return []

        out = []
        for r in results:
            ponderado = (
                req.lenguaje * float(r.Ponderacion.w_lenguaje)
                + req.matematicas * float(r.Ponderacion.w_matematicas)
                + req.matematicas2 * float(r.Ponderacion.w_matematicas2)
                + max(
                    req.ciencias * float(r.Ponderacion.w_ciencias),
                    req.historia * float(r.Ponderacion.w_historia),
                )
                + req.nem * float(r.Ponderacion.w_nem)
                + req.ranking * float(r.Ponderacion.w_ranking)
            )

            corte = float(r.puntaje_minimo or 0)
            margen = round(ponderado - corte, 2)

            out.append(
                OpcionPostulacion(
                    universidad=r.universidad,
                    carrera=r.carrera,
                    area=r.area,  # 👈 incluir en salida
                    puntaje_ponderado=round(ponderado, 2),
                    puntaje_corte=corte,
                    margen=margen,
                )
            )

        # Ordenar y limitar resultados
        out.sort(key=lambda x: x.margen, reverse=True)
        out = out[:req.limit]

        print(f"✅ Enviando {len(out)} carreras (con filtro de área).")
        return out

    except Exception as e:
        raise HTTPException(status_code=500, detail=f"Error en la simulación: {str(e)}")
