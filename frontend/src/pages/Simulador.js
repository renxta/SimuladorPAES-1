import React, { useState, useEffect } from "react";
import { useNavigate } from "react-router-dom";
import "../App.css";

function Simulador() {
  const navigate = useNavigate();

  const [formData, setFormData] = useState({
    lenguaje: "",
    matematicas: "",
    matematicas2: "",
    ciencias: "",
    historia: "",
    area: "",
    nem: "",
    ranking: "",
  });

  const [loading, setLoading] = useState(false);

  // ✅ Recuperar puntajes previos
  useEffect(() => {
    const saved = localStorage.getItem("simuladorData");
    if (saved) setFormData(JSON.parse(saved));
  }, []);

  // ✅ Guardar en localStorage cada cambio
  useEffect(() => {
    localStorage.setItem("simuladorData", JSON.stringify(formData));
  }, [formData]);

  const handleChange = (e) => {
    setFormData({ ...formData, [e.target.name]: e.target.value });
  };

  // ✅ Enviar datos al backend FastAPI
  const handleSubmit = async (e) => {
    e.preventDefault();
    setLoading(true);

    try {
      const payload = {
        lenguaje: parseFloat(formData.lenguaje) || 0,
        matematicas: parseFloat(formData.matematicas) || 0,
        matematicas2: parseFloat(formData.matematicas2) || 0,
        ciencias: parseFloat(formData.ciencias) || 0,
        historia: parseFloat(formData.historia) || 0,
        nem: parseFloat(formData.nem) || 0,
        ranking: parseFloat(formData.ranking) || 0,
        nem: parseFloat(formData.nem) || 350, // valor por defecto
        ranking: parseFloat(formData.ranking) || 350, // valor por defecto
      };


      // ✅ Validación flexible: se requiere Lenguaje o Matemática, más NEM y Ranking
      if (
        (!payload.lenguaje && !payload.matematicas) || // si faltan ambas
        !payload.nem ||
        !payload.ranking
      ) {
        alert("Debes ingresar al menos Lenguaje o Matemática, además de NEM y Ranking.");
        setLoading(false);
        return;
      }

      const res = await fetch("http://127.0.0.1:8000/simulador/", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(payload),
      });

      if (!res.ok) throw new Error("Error al conectar con el backend");

      const data = await res.json();
      const resultados = Array.isArray(data) ? data : data.resultados;

      if (!resultados || resultados.length === 0) {
        throw new Error("La respuesta del servidor no contiene resultados válidos.");
      }

      localStorage.setItem("resultadosSimulacion", JSON.stringify(resultados));
      navigate("/opciones");
    } catch (err) {
      console.error("❌ Error en simulación:", err);
      alert("Hubo un problema al simular los resultados. Verifica que el backend esté activo en el puerto 8000.");
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className="simulador-wrapper">
      <h1 className="titulo-principal">Simulador de Puntaje</h1>
      <p className="descripcion">
        Ingresa tus resultados PAES y descubre tus posibles opciones universitarias
      </p>

      <div className="simulador-form-container">
        <form onSubmit={handleSubmit}>
          <div className="fila-inputs">
            <div className="campo">
              <label>Comprensión Lectora:</label>
              <input type="number" name="lenguaje" value={formData.lenguaje} onChange={handleChange} />
            </div>
            <div className="campo">
              <label>Matemática 1:</label>
              <input type="number" name="matematicas" value={formData.matematicas} onChange={handleChange} />
            </div>
            <div className="campo">
              <label>Matemática 2:</label>
              <input type="number" name="matematicas2" value={formData.matematicas2} onChange={handleChange} />
            </div>
          </div>

          <div className="fila-inputs">
            <div className="campo">
              <label>Ciencias:</label>
              <input type="number" name="ciencias" value={formData.ciencias} onChange={handleChange} />
            </div>
            <div className="campo">
              <label>Historia y Ciencias Sociales:</label>
              <input type="number" name="historia" value={formData.historia} onChange={handleChange} />
            </div>
            <div className="campo">
              <label>NEM (%):</label>
              <input type="number" name="nem" value={formData.nem} onChange={handleChange} />
            </div>
          </div>

          <div className="fila-inputs">
            <div className="campo">
              <label>Ranking (%):</label>
              <input type="number" name="ranking" value={formData.ranking} onChange={handleChange} />
            </div>
          </div>

          <button type="submit" className="boton-simular" disabled={loading}>
            🔍 {loading ? "Cargando..." : "Mostrar Opciones"}
          </button>
        </form>
      </div>
    </div>
  );
}

export default Simulador;