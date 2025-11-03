# app/update_areas.py
from sqlalchemy import create_engine
from sqlalchemy.orm import Session
from app import models

# 🔹 Usa la base de Render directamente
DB_URL = "postgresql+psycopg2://demre2024_full_user:WsuGr8Tm4DqoIH7xzaV8usIC37Bh5K1Q@dpg-d43pgb63jp1c73ah5ut0-a.oregon-postgres.render.com/demre2024_full?sslmode=require"

engine = create_engine(DB_URL)
session = Session(bind=engine)

def definir_area(nombre: str) -> str:
    """Clasifica la carrera según su nombre."""
    n = nombre.lower()
    if "ingeniería" in n:
        return "Ingeniería"
    elif any(x in n for x in ["medicina", "enfermería", "salud", "odontología", "kinesiología"]):
        return "Salud"
    elif any(x in n for x in ["arte", "música", "teatro", "diseño"]):
        return "Artes"
    elif any(x in n for x in ["derecho", "historia", "filosofía", "sociología", "periodismo"]):
        return "Humanidades"
    elif any(x in n for x in ["educación", "pedagogía", "docencia"]):
        return "Educación"
    elif any(x in n for x in ["comercial", "administración", "contabilidad", "economía"]):
        return "Ciencias Sociales y Economía"
    elif any(x in n for x in ["biología", "química", "física", "matemática", "astronomía"]):
        return "Ciencias"
    else:
        return "Otras áreas"

def actualizar_areas():
    carreras = session.query(models.Carrera).all()
    contador = 0

    for c in carreras:
        nueva_area = definir_area(c.nombre)
        if c.area != nueva_area:
            print(f"Actualizando: {c.nombre} → {nueva_area}")  # 👈 Muestra qué se actualiza
            c.area = nueva_area
            contador += 1

    session.commit()
    print(f"\n✅ {contador} áreas actualizadas correctamente.\n")

if __name__ == "__main__":
    actualizar_areas()
    session.close()
