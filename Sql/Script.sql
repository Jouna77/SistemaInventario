CREATE TABLE PRODUCTOS
(
 ID INTEGER PRIMARY KEY AUTOINCREMENT,
 CODIGO TEXT UNIQUE NOT NULL,
 NOMBRE TEXT NOT NULL,
 DESCRIPCION TEXT,
 CLASIFICACION TEXT NOT NULL,
 UNIDAD TEXT NOT NULL,
 IMAGEN BLOB,
 PROVEDOR TEXT NOT NULL,
 EXISTENCIA REAL NOT NULL DEFAULT 0,
 MINIMO REAL NOT NULL DEFAULT 0,
 MAXIMO REAL NOT NULL DEFAULT 0,
 PRECIO REAL NOT NULL DEFAULT 0,
 OCULTO INT NOT NULL DEFAULT 0
);
CREATE TABLE USUARIOS
(
ID INTEGER PRIMARY KEY AUTOINCREMENT,
NICKNAME TEXT NOT NULL UNIQUE,
NOMBRE TEXT NOT NULL, 
PASSWORD TEXT NOT NULL,
PENTRADA INTEGER NOT NULL DEFAULT 0,
PSALIDA INTEGER NOT NULL DEFAULT 0,
PREPORTES INTEGER NOT NULL DEFAULT 0,
ROLSL INTEGER NOT NULL DEFAULT 0,
OCULTO INTEGER NOT NULL DEFAULT 0,
IMAGEN BLOB DEFAULT NULL
);
CREATE TABLE MOVIMIENTOS
(
ID INTEGER PRIMARY KEY AUTOINCREMENT,
ID_PRODUCTO INTEGER,
ID_USUARIO  INTEGER,
TIPO TEXT NOT NULL,
CANTIDAD REAL NOT NULL DEFAULT 0,
EXISTENCIA_ACTUAL REAL NOT NULL,
EXISTENCIA_POSTERIOR REAL NOT NULL,
CONCEPTO TEXT NOT NULL,
FECHA TEXT NOT NULL,
 FOREIGN KEY (ID_PRODUCTO) REFERENCES PRODUCTOS(ID),
 FOREIGN KEY (ID_USUARIO) REFERENCES USUARIOS(ID)
);

INSERT INTO USUARIOS(NICKNAME,NOMBRE, PASSWORD) VALUES ('JON','JONATHAN','123');