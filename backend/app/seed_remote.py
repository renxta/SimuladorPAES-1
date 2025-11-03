# app/seed_remote.py
import sys
from sqlalchemy import create_engine
from sqlalchemy.orm import Session
from app import models

# Forzar salida en UTF-8 (evita errores con acentos)
sys.stdout.reconfigure(encoding='utf-8')

# ------------------------------------
# Conexiones a ambas bases
# ------------------------------------

# Base local
LOCAL_DB_URL = "postgresql+psycopg2://postgres:1012@localhost:5432/demre2024_full"

# Base Render (remota)
REMOTE_DB_URL = (
    "postgresql+psycopg2://demre2024_full_user:WsuGr8Tm4DqoIH7xzaV8usIC37Bh5K1Q"
    "@dpg-d43pgb63jp1c73ah5ut0-a.oregon-postgres.render.com/demre2024_full?sslmode=require"
)

# Crear engines
local_engine = create_engine(LOCAL_DB_URL)
remote_engine = create_engine(REMOTE_DB_URL)

local_session = Session(bind=local_engine)
remote_session = Session(bind=remote_engine)

# ------------------------------------
# Clasificación por área
# ------------------------------------
def definir_area(carrera_nombre: str):
    nombre = carrera_nombre.lower()
    if "ingeniería" in nombre:
        return "Ingeniería"
    elif "salud" in nombre or "enfermería" in nombre or "medicina" in nombre:
        return "Salud"
    elif "arte" in nombre or "música" in nombre or "teatro" in nombre:
        return "Artes"
    elif "derecho" in nombre or "historia" in nombre or "filosofía" in nombre:
        return "Humanidades"
    elif "educación" in nombre or "pedagogía" in nombre:
        return "Educación"
    else:
        return "Otras áreas"

print("🚀 Iniciando migración de datos...")

try:
    # UNIVERSIDADES
    universidades = local_session.query(models.Universidad).all()
    for u in universidades:
        existe = remote_session.query(models.Universidad).filter_by(nombre=u.nombre).first()
        if not existe:
            remote_session.add(models.Universidad(
                nombre=u.nombre,
                acreditacion=u.acreditacion,
                sitio_web=u.sitio_web,
                direccion=u.direccion,
                latitud=u.latitud,
                longitud=u.longitud
            ))
    remote_session.commit()
    print(f"✅ {len(universidades)} universidades migradas.")

    # CARRERAS
    carreras = local_session.query(models.Carrera).all()
    for c in carreras:
        existe = remote_session.query(models.Carrera).filter_by(nombre=c.nombre).first()
        if not existe:
            area = definir_area(c.nombre)  # 👈 Clasificación automática
            remote_session.add(models.Carrera(
                nombre=c.nombre,
                vacantes=c.vacantes,
                arancel=c.arancel,
                area=area,
                universidad_id=c.universidad_id
            ))
    remote_session.commit()
    print(f"✅ {len(carreras)} carreras migradas con áreas asignadas.")

    # PONDERACIONES
    ponderaciones = local_session.query(models.Ponderacion).all()
    for p in ponderaciones:
        existe = remote_session.query(models.Ponderacion).filter_by(carrera_id=p.carrera_id).first()
        if not existe:
            remote_session.add(models.Ponderacion(
                carrera_id=p.carrera_id,
                w_lenguaje=p.w_lenguaje,
                w_matematicas=p.w_matematicas,
                w_matematicas2=p.w_matematicas2,
                w_ciencias=p.w_ciencias,
                w_historia=p.w_historia,
                w_nem=p.w_nem,
                w_ranking=p.w_ranking
            ))
    remote_session.commit()
    print(f"✅ {len(ponderaciones)} ponderaciones migradas.")

    # PUNTAJES CORTE
    puntajes = local_session.query(models.PuntajeCorte).all()
    for p in puntajes:
        existe = remote_session.query(models.PuntajeCorte).filter_by(carrera_id=p.carrera_id, ano=p.ano).first()
        if not existe:
            remote_session.add(models.PuntajeCorte(
                carrera_id=p.carrera_id,
                puntaje_minimo=p.puntaje_minimo,
                ano=p.ano
            ))
    remote_session.commit()
    print(f"✅ {len(puntajes)} puntajes de corte migrados.")

    # SIMULACIONES (opcional)
    simulaciones = local_session.query(models.Simulacion).all()
    for s in simulaciones:
        remote_session.add(models.Simulacion(
            carrera_id=s.carrera_id,
            puntaje_lenguaje=s.puntaje_lenguaje,
            puntaje_matematicas=s.puntaje_matematicas,
            puntaje_matematicas2=s.puntaje_matematicas2,
            puntaje_ciencias=s.puntaje_ciencias,
            puntaje_historia=s.puntaje_historia,
            puntaje_nem=s.puntaje_nem,
            puntaje_ranking=s.puntaje_ranking,
            puntaje_total=s.puntaje_total
        ))
    remote_session.commit()
    print(f"✅ {len(simulaciones)} simulaciones migradas.")

    print("\n🎉 Migración completada correctamente.")

except Exception as e:
    print(f"❌ Error durante la migración: {e}")

finally:
    local_session.close()
    remote_session.close()
