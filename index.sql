CREATE table radiacion(
    id          int(255) AUTO_INCREMENT NOT NULL,
    uvi         VARCHAR(100) NOT NULL,
    coloruvi    VARCHAR(100) NOT NULL,
    descuvi     VARCHAR(100) NOT NULL,
    CONSTRAINT pk_radiacion PRIMARY KEY(id)
)ENGINE=InnoDB;

CREATE table datos(
    id          int(255) AUTO_INCREMENT NOT NULL,
    nodo        VARCHAR(200) NOT NULL,
    temperatura int(10) NOT NULL,
    humedad     int(10) NOT NULL,         
    sensacion   float NOT NULL,
    radiacion   float NOT NULL,
    id_uv       int(10) NOT NULL,    
    hora        TIME NOT NULL,
    fecha       VARCHAR(200) NOT NULL,
    CONSTRAINT pk_datos PRIMARY KEY(id),
    CONSTRAINT fk_rad FOREIGN KEY(id_uv) REFERENCES radiacion(id)
)ENGINE=InnoDB;

