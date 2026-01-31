CREATE DATABASE GestionEscolar;
GO
USE GestionEscolar;
CREATE TABLE Estudiantes (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Nombre NVARCHAR(100) NOT NULL,
    Edad INT NOT NULL,
    Curso NVARCHAR(50) NOT NULL
);
CREATE TABLE Profesores (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Nombre NVARCHAR(100) NOT NULL,
    Especialidad NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100) NOT NULL
);
CREATE TABLE Clases (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    ID_Estudiante INT NOT NULL,
    ID_Profesor INT NOT NULL,
    NombreClase NVARCHAR(100) NOT NULL,
    CONSTRAINT FK_Clases_Estudiantes FOREIGN KEY (ID_Estudiante)
        REFERENCES Estudiantes(ID),
    CONSTRAINT FK_Clases_Profesores FOREIGN KEY (ID_Profesor)
        REFERENCES Profesores(ID)
);

INSERT INTO Estudiantes (Nombre, Edad, Curso) VALUES
('Luis Martínez', 18, 'Ingeniería'),
('Sofía Hernández', 19, 'Administración'),
('Miguel Torres', 20, 'Contabilidad'),
('Ana Ruiz', 18, 'Derecho');

INSERT INTO Profesores (Nombre, Especialidad, Email) VALUES
('Carlos Gómez', 'Matemáticas', 'cgomez@escuela.edu'),
('María López', 'Administración', 'mlopez@escuela.edu'),
('Jorge Ramírez', 'Contabilidad', 'jramirez@escuela.edu'),
('Laura Pérez', 'Derecho', 'lperez@escuela.edu');
GO

INSERT INTO Clases (ID_Estudiante, ID_Profesor, NombreClase) VALUES
(1, 1, 'Álgebra'),
(2, 2, 'Gestión Empresarial'),
(3, 3, 'Contabilidad Financiera'),
(4, 4, 'Derecho Civil');