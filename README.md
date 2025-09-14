# Prueba Técnica - Desarrollo RPA con PIX RPA

## ✅ Estado de la Prueba  
Esta prueba técnica fue **desarrollada, presentada y solucionada exitosamente**.  
El proyecto cumple con todos los requerimientos establecidos, incluyendo:  
- Consumo de APIs  
- Almacenamiento en base de datos  
- Generación de reportes en Excel  
- Automatización web para envío de formularios  
- Integración con OneDrive mediante Microsoft Graph API  

---

## 🎯 Objetivo General  
Automatizar el análisis diario de productos en una tienda online ficticia utilizando la plantilla universal de **PIX RPA**.  

---

## 📌 Contexto  
El proceso RPA implementado realiza las siguientes tareas:  
1. Obtiene productos desde una API pública.  
2. Guarda los datos originales y estructurados.  
3. Almacena los productos en una base de datos evitando duplicados.  
4. Genera un reporte de Excel con estadísticas relevantes.  
5. Sube el reporte a **OneDrive** automáticamente.  
6. Envía el reporte a través de un formulario web.  
7. Registra evidencias del proceso.  

---

## ⚙️ Detalle Técnico Implementado  

### 1. Consumo de API Pública  
- **Fuente:** Fake Store API  
- **Endpoint:** https://fakestoreapi.com/products  
- Los datos se guardan en un archivo `.json` y se suben automáticamente a OneDrive (`/RPA/Logs/Productos_YYYY-MM-DD.json`).  

### 2. Base de Datos  
- **Tabla:** `Productos`  
- Campos: `id`, `title`, `price`, `category`, `description`, `fecha_insercion`.  
- Se valida que no se inserten productos duplicados.  

### 3. Reporte en Excel  
- **Formato:** `.xlsx`  
- **Nombre:** `ConsolidadoFakeStore_YYYY-MM-DD.xlsx`  
- Contiene:  
  - Hoja 1: listado completo de productos  
  - Hoja 2: métricas de resumen (total, promedios y cantidades por categoría)  
- Se guarda en `/Reportes/` y se sube a OneDrive (`/RPA/Reportes/ConsolidadoFakeStore_YYYY-MM-DD.xlsx`).  

### 4. Automatización Web – Formulario  
- **Formulario usado:** https://submit.jotform.com/252556762766066  
- El bot llena los campos requeridos, sube el archivo y registra la confirmación en `/Evidencias/formulario_confirmacion.png`.  

### 5. Integración con OneDrive  
- Implementada con **Microsoft Graph API**.  
- Manejo de autenticación sin interacción de usuario.  
- Control de creación de carpetas y versiones de archivos.  

---

## 📊 Resultados Obtenidos  
- Archivo `.json` con respaldo de datos consumidos de la API.  
- Reporte en Excel completo con métricas de resumen.  
- Datos estructurados en base de datos sin duplicados.  
- Reporte enviado exitosamente vía formulario web.  
- Evidencia visual generada de la confirmación del envío.  
- Archivos subidos a OneDrive de manera automatizada.  

---
## 🖥️ Configuración y Ejecución  

1. Clonar el repo:  
   ```bash
   git clone https://github.com/AlejoBustos12/PIX_PT.git
   ```  
2. Abrir el archivo `*.pixproj*` en **PIX Studio**.  
3. Configurar `Data/Config.xlsx` con las credenciales de DB y API de OneDrive.  
4. Ejecutar el flujo en **PIX Studio** para reproducir el proceso completo.  

---

## 📚 Recursos de apoyo  
- Cursos: https://academy.es.pixrobotics.com/course/index.php  
- Descarga PIX Studio: https://es.pixrobotics.com/download/  

---

## 🚀 Conclusión  
La prueba fue completada con éxito, cumpliendo con todos los requerimientos técnicos, de integración y documentación solicitados.
