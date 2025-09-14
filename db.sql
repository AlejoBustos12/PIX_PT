-- Crear la base de datos
CREATE DATABASE pix;

-- Conectarse a la base de datos recién creada
\c pix;

-- Crear la tabla Productos
CREATE TABLE "Productos" (
    id SERIAL PRIMARY KEY,  -- Este es un campo autoincremental para el id
    title VARCHAR(255) NOT NULL,  -- El título del producto, no puede ser nulo
    price DECIMAL(10, 2) NOT NULL,  -- El precio del producto con dos decimales
    category VARCHAR(100),  -- Categoría del producto
    description TEXT,  -- Descripción del producto
    fecha_insercion TIMESTAMP DEFAULT CURRENT_TIMESTAMP  -- Fecha de inserción, por defecto la actual
);
