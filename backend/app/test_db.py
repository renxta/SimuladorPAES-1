from db_connection import get_connection

conn = get_connection()

if conn:
    try:
        cur = conn.cursor()
        cur.execute("SELECT * FROM universidades;")
        rows = cur.fetchall()

        print("📚 Datos desde la tabla 'universidades':")
        for row in rows:
            print(row)

        cur.close()
    except Exception as e:
        print("⚠️ Error en la consulta:", e)
    finally:
        conn.close()
        print("🔒 Conexión cerrada")
