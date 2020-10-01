SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE TABLE Autores (
    Id INT NOT NULL AUTO_INCREMENT,
    Nombre VARCHAR(70) NOT NULL,
    Ciudad VARCHAR(100) NOT NULL,
    PRIMARY KEY(Id)
);

INSERT INTO Autores
    (Nombre, Ciudad)
VALUES
    ('Manuel Santander Cahué', 'Cádiz'),
    ('Juan Carlos Aragón Becerra', 'Cádiz'),
    ('Manuel Alvarez Seda', 'Sevilla'),
    ('Luis Galán Pérez', 'Puerto de Santa María'),
    ('Juan Rivero Torrejón', 'San Fernando'),
    ('Antonio Martínez Ares', 'Cádiz'),
    ('Antonio Pedro Serrano Álvarez', 'Carmona'),
    ('Joaquín Quiñones', 'Cádiz')
;

CREATE TABLE Obras (
    Id INT NOT NULL AUTO_INCREMENT,
    Titulo VARCHAR(50) NOT NULL,
    PRIMARY KEY(Id)
);

INSERT INTO Obras
    (Id, Titulo)
VALUES
    (1, 'La familia Pepperoni (Vendetta)'),
    (2, 'La maldición de la lapa negra'),
    (3, 'Los de Capuchinos'),
    (4, 'Los Ángeles Caídos'),
    (5, 'Los Yesterday'),
    (6, 'Las Pito-Risas'),
    (7, 'Todo'),
;


CREATE TABLE ObrasAutores (
    AutoresId INT NOT NULL,
    ObrasId  INT NOT NULL,
    FOREIGN KEY (AutoresId) REFERENCES Autores(Id),
    FOREIGN KEY (ObrasId) REFERENCES Obras(Id)
);

INSERT INTO ObrasAutores
    (ObrasId, AutoresId)
VALUES
    (1, 1),
    (2, 1),
    (3, 1),
    (4, 2),
    (5, 2),
    (6, 3),
    (7, 4),
    (7, 5),
    (7, 6),
    (7, 7),
    (7, 8);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
