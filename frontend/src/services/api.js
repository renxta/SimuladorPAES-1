import axios from "axios";

// Base de la API: en desarrollo apuntar al backend local, en producción usar mismo origen
// o el URL desplegado. Añadimos el prefijo `/api` para que todas las llamadas salgan a /api/...
const API_BASE = process.env.NODE_ENV === "development"
  ? "http://localhost:8000/api"
  : "https://simuladorpaes-1-production.up.railway.app/api";

// ⚡ Crear instancia de axios con tamaño máximo aumentado
export const api = axios.create({
  baseURL: API_BASE,
  headers: { "Content-Type": "application/json" },
  maxContentLength: Infinity,
  maxBodyLength: Infinity,
  timeout: 120000,
});

export async function simularPAES(formData) {
  try {
    const response = await api.post("/simulador/", formData);
    console.log("✅ Carreras recibidas:", response.data.length);
    return response.data;
  } catch (error) {
    console.error("❌ Error al llamar al backend:", error);
    throw error;
  }
}

