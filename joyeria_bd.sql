CREATE DATABASE Joyeria_bd;

CREATE TABLE  stock(
    stock_id NOT NULL AUTO_INCREMENT,
    aretes_id INTEGER,
    cantidad DECIMAL,
    PRIMARY KEY(stock_id),
    FOREIGN KEY (aretes_id)
      REFERENCES aretes(aretes_id)
);

CREATE TABLE aretes(
    aretes_id NOT NULL AUTO_INCREMENT,
    clave VARCHAR(50),
    nombre_comercial,
    material_id INTEGER,
    fecha_creacion DATETIME,
    creado_por INTEGER,
    fecha_edicion DATETIME,
    editado_por INTEGER,
    PRIMARY KEY(aretes_id),
    FOREIGN KEY (material_id)
      REFERENCES material(material_id)
);

CREATE TABLE aretes_venta(
    aretes_venta_id NOT NULL AUTO_INCREMENT,
    compra_id INTEGER,
    aretes_id INTEGER,
    cantidad DECIMAL,
    PRIMARY KEY(compra_id,aretes_id)
    FOREIGN KEY (compra_id)
      REFERENCES compra(compra_id),
    FOREIGN KEY (aretes_id)
      REFERENCES aretes(aretes_id)
);

CREATE TABLE compra(
    compra_id NOT NULL AUTO_INCREMENT,
    cliente_id INTEGER,
    fecha_creacion DATETIME,
    PRIMARY KEY(compra_id),
    FOREIGN KEY (created_by)
      REFERENCES user_uc(user_id)
);

CREATE TABLE cliente
    cliente_id NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(50),
    apellidos VARCHAR(100),
    telefono VARCHAR(10),
    PRIMARY KEY (cliente_id),
);

