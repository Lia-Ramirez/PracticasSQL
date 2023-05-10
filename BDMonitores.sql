--DDL(lenguaje de definicion de datos

create database BDMonitores
go

use BDMonitores 
go

--Crear tabla Estudiantes
CREATE TABLE Estudiantes(
	ID_estudiante int PRIMARY KEY,
	IDUCA nvarchar(9) not null unique,
	Nombre nvarchar(50),
	Apellido nvarchar(50),
	FechaNac datetime,
	Correo_electronico nvarchar(100),
	Telefono nvarchar(20),
	Carrera nvarchar(50),
	Archivo bit default 'true'
	);

-- Crear tabla Clases
CREATE TABLE Clases(
	ID_clase int PRIMARY KEY,
	Codigo_clase nvarchar(20) unique not null,
	Nombre_clase nvarchar(50) not null,
	Horario nvarchar (50)
);

-- Crear table Monitores 
CREATE TABLE Monitores(
ID_monitor int PRIMARY KEY,
ID_estudiante int,
ID_clase int,
Anio_en_curso int,
Semestre_en_curso nvarchar(20),
FOREIGN KEY (ID_estudiante) REFERENCES Estudiantes(ID_estudiante),
FOREIGN KEY (ID_clase) REFERENCES Clases(ID_clase)
);


--1. Inserte 40 registros en la tabla estudiantes.
INSERT INTO Estudiantes(ID_estudiante, IDUCA, Nombre, Apellido, FechaNac, Correo_electronico, Telefono, Carrera)
VALUES
(1, N'000000001', N'L�a', N'Ram�rez', '14/11/2004', N'lia.ramirez@gmail.com', N'8243-0066', N'Ingenier�a de Sistemas'),
(2, N'000000002', N'Jos�', N'P�rez', '15/05/2004', N'jose.perez@gmail.com', N'555-1234', N'Ingenier�a de Sistemas'),
(3, N'000000003', N'Mar�a', N'Garcia', '07/06/2005', N'maria.garciaz@gmail.com', N'555-5678', N'Ingenier�a de Sistemas'),
(4, N'000000004', N'Pedro', N'Ram�rez', '01/04/2007', N'pedro.ramirez@gmail.com', N'555-2345', N'Ingenier�a Industrial'),
(5, N'000000005', N'Sof�a', N'D�az', '02/03/2001', N'sofia.diaz@gmail.com', N'555-6789', N'Ingenier�a Industrial'),
(6, N'000000006', N'Diego', N'Garc�a', '03/04/2002', N'diego.garcia@gmail.com', N'555-3456', N'Licenciatura en Matem�ticas'),
(7, N'000000007', N'Ana', N'Mart�nez', '05/06/2003', N'ana.martinez@gmail.com', N'555-7890', N'Licenciatura en Matem�ticas'),
(8, N'000000008', N'Carlos', N'Hern�ndez', '06/07/2004', N'carlos.hernandez@gmail.com', N'555-4567', N'Ingenier�a Qu�mica'),
(9, N'000000009', N'Laura', N'G�mez', '07/08/2005', N'laura.gomez@gmail.com', N'555-8901', N'Ingenier�a Qu�mica'),
(10, N'000000010', N'Jorge', N'S�nchez', '08/09/2006', N'jorge.sanchez@gmail.com', N'555-5678', N'Licenciatura en F�sica'),
(11, N'000000011', N'Marta', N'P�rez', '09/10/2007', N'marta.perez@gmail.com', N'555-1234', N'Licenciatura en F�sica'),
(12, N'000000012', N'David', N'Fern�ndez', '10/11/2001', N'david.fernandez@gmail.com', N'555-1234', N'Ingenier�a de Sistemas'),
(13, N'000000013', N'Adriana', N'Gonz�lez', '11/12/2002', N'adriana.gonzalez@gmail.com', N'555-5678', N'Ingenier�a de Sistemas'),
(14, N'000000014', N'Carlos', N'Ram�rez', '02/01/2003', N'carlos.ramirez@gmail.com', N'555-2345', N'Ingenier�a Industrial'),
(15, N'000000015', N'Ana', N'D�az', '03/02/2004', N'ana.diaz@gmail.com', N'555-6789', N'Ingenier�a Industrial'),
(16, N'000000016', N'Javier', N'Garc�a', '04/03/2005', N'javier.garcia@gmail.com', N'555-3456', N'Ingeneria en alimentos'),
(17, N'000000017', N'Juan', N'Garc�a', '05/04/2006', N'juan.garcia@gmail.com', N'123456789', N'Ingenier�a Inform�tica'),
(18, N'000000018', N'Mar�a', N'Mart�nez', '06/05/2007', N'maria.martinez@gmail.com', N'234567890', N'Medicina'),
(19, N'000000019', N'Pedro', N'G�mez', '07/06/2001', N'pedro.gomez@gmail.com', N'345678901', N'Derecho'),
(20, N'000000020', N'Ana', N'Fern�ndez', '08/07/2002', N'ana.fernandez@gmail.com', N'456789012', N'Ingenier�a Civil'),
(21, N'000000021', N'Carlos', N'P�rez', '09/08/2003', N'carlos.perez@gmail.com', N'567890123', N'Arquitectura'),
(22, N'000000022', N'Sara', N'S�nchez', '10/09/2004', N'sara.sanchez@gmail.com', N'678901234', N'Ingenier�a Industrial'),
(23, N'000000023', N'Luc�a', N'L�pez', '11/10/2005', N'lucia.lopez@gmail.com', N'789012345', N'Psicolog�a'),
(24, N'000000024', N'Jorge', N'Gonz�lez', '12/11/2006', N'jorge.gonzalez@gmail.com', N'890123456', N'Ingenier�a Electr�nica'),
(25, N'000000025', N'Luisa', N'Rodr�guez', '04/01/2007', N'luisa.rodriguez@gmail.com', N'901234567', N'Educaci�n Infantil'),
(26, N'000000026', N'Marcos', N'Mart�n', '05/02/2001', N'marcos.martin@gmail.com', N'012345678', N'Ingenier�a Mec�nica'),
(27, N'000000027', N'Lucas', N'Hern�ndez', '06/03/2002', N'lucas.hernandez@gmail.com', N'123456789', N'Biolog�a'),
(28, N'000000028', N'Isabel', N'Garc�a', '07/04/2003', N'isabel.garcia@gmail.com', N'234567890', N'Ingenier�a Qu�mica'),
(29, N'000000029', N'Antonio', N'Mart�nez', '08/05/2004', N'antonio.martinez@gmail.com', N'345678901', N'Marketing'),
(30, N'000000030', N'Marta', N'G�mez', '09/06/2005', N'marta.gomez@gmail.com', N'456789012', N'Administraci�n'),
(31, N'000000031', N'Diego', N'Fern�ndez', '10/07/2006', N'diego.fernandez@gmail.com', N'567890123', N'Ingenier�a de Telecomunicaciones'),
(32, N'000000032', N'Jane', N'Doe', '11/08/2007', N'jane.doe@gmail.com', N'2345678901', N'Business'),
(33, N'000000033', N'Bob', N'Smith', '12/09/2001', N'bob.smith@gmail.com', N'3456789012', N'Psychology'),
(34, N'000000034', N'Alice', N'Johnson', '13/10/2002', N'alice.johnson@gmail.com', N'4567890123', N'Nursing'),
(35, N'000000035', N'Mark', N'Brown', '14/11/2003', N'mark.brown@gmail.com', N'5678901234', N'Engineering'),
(36, N'000000036', N'Mary', N'Davis', '15/12/2004', N'mary.davis@gmail.com', N'6789012345', N'Communications'),
(37, N'000000037', N'David', N'Wilson', '16/01/2005', N'david.wilson@gmail.com', N'7890123456', N'Marketing'),
(38, N'000000038', N'Sarah', N'Lee', '17/02/2006', N'sarah.lee@gmail.com', N'8901234567', N'Accounting'),
(39, N'000000039', N'Michael', N'Garcia', '18/03/2007', N'michael.garcia@gmail.com', N'9012345678', N'Education'),
(40, N'000000040', N'Emily', N'Anderson', '19/04/2001', N'emily.anderson@gmail.com', N'0123456789', N'Music');
select * from Estudiantes
 

 --2. Inserte 10 registros en la tabla Clases.
INSERT INTO Clases (ID_clase, Codigo_clase, Nombre_clase, Horario)
VALUES
(1, N'CLAS001', N'Matem�ticas I', N'Lunes y Mi�rcoles de 8:00 a 10:00'),
(2, N'CLAS002', N'Programaci�n I', N'Martes y Jueves de 10:00 a 12:00'),
(3, N'CLAS003', N'Estad�stica Aplicada', N'Lunes y Mi�rcoles de 14:00 a 16:00'),
(4, N'CLAS004', N'Ingl�s Avanzado', N'Martes y Jueves de 16:00 a 18:00'),
(5, N'CLAS005', N'Econom�a General', N'Lunes y Mi�rcoles de 10:00 a 12:00'),
(6, N'CLAS006', N'Historia del Arte', N'Martes y Jueves de 8:00 a 10:00'),
(7, N'CLAS007', N'Dise�o Gr�fico', N'Mi�rcoles de 14:00 a 16:00 y Viernes de 10:00 a 12:00'),
(8, N'CLAS008', N'Algoritmos y Estructuras de Datos', N'Lunes y Mi�rcoles de 16:00 a 18:00'),
(9, N'CLAS009', N'Sistemas Operativos', N'Martes y Jueves de 14:00 a 16:00'),
(10, N'CLAS010', N'Reflexi�n Teol�gica', N'Jueves 12:40 - 14:00');
go

select * from Clases

--3. Inserte 20 registros en la tabla Monitores
INSERT INTO Monitores (ID_monitor, ID_estudiante, ID_clase, Anio_en_curso, Semestre_en_curso) 
VALUES 
(1, 5, 1, 2023, N'Segundo Semestre'),
(2, 34, 1, 2023, N'Tercero Semestre'),
(3, 14, 2, 2023, N'Cuarto Semestre'),
(4, 14, 2, 2023, N'Quinto Semestre'),
(5, 4, 3, 2023, N'Sexto Semestre'),
(6, 33, 3, 2023, N'Segundo Semestre'),
(7, 13, 4, 2023, N'Tercero Semestre'),
(8, 3, 4, 2023, N'Cuarto Semestre'),
(9, 32, 5, 2023, N'Quinto Semestre'),
(10, 22, 5, 2023, N'Sexto Semestre'),
(11, 12, 6, 2023, N'Segundo Semestre'),
(12, 2, 6, 2023, N'Tercero Semestre'),
(13, 31, 7, 2023, N'Cuarto Semestre'),
(14, 21, 7, 2023, N'Quinto Semestre'),
(15, 11, 8, 2023, N'Sexto Semestre'),
(16, 1, 8, 2023, N'Segundo Semestre'),
(17, 10, 9, 2023, N'Tercero Semestre'),
(18, 20, 9, 2023, N'Cuarto Semestre'),
(19, 30, 10, 2023, N'Quinto Semestre'),
(20, 40, 10, 2023, N'Sexto Semestre');
go
select * from Monitores

--4. Edite 5 registros en la tabla Monitores
--UPDATE table_name
--SET column1 = value1, column2 = value2, ...
--WHERE condition;

Select * from Monitores
Select * from Estudiantes
Update Monitores set Anio_en_curso = 2023 where ID_monitor = 11
go
Update Monitores set Anio_en_curso = 2023 where ID_monitor = 13
go
Update Monitores set Anio_en_curso = 2023 where ID_monitor = 9
go
Update Monitores set Anio_en_curso = 2023 where ID_monitor = 10
go
Update Monitores set Anio_en_curso = 2023 where ID_monitor = 18
go


--5. Elimine 4 registros de la tabla Clases
Delete from Clases where ID_clase =  4
Delete from Clases where ID_clase =  5
Delete from Clases where ID_clase =  6
Delete from Clases where ID_clase =  7

Select * from Clases

--6. Muestre los monitores de la carrera de Ingenier�a en sistema de informaci�n

SELECT Estudiantes.ID_estudiante, Monitores.ID_monitor, Estudiantes.Carrera
FROM     Estudiantes INNER JOIN 
Monitores ON Estudiantes.ID_estudiante = Monitores.ID_estudiante
WHERE Carrera = 'Ingenier�a de Sistemas'
				

--7. Muestre el nombre completo de los monitores, 
--la clase que van a impartir y su correo electr�nico

SELECT Estudiantes.Nombre+N' '+Estudiantes.Apellido as N'Nombre Completo', Clases.Nombre_clase as N'Clase', Estudiantes.Correo_electronico as N'Correo Electr�nico'
FROM     Estudiantes INNER JOIN
                  Monitores ON Estudiantes.ID_estudiante = Monitores.ID_estudiante INNER JOIN
                  Clases ON Monitores.ID_clase = Clases.ID_clase


--8. Muestre los monitores que cumplen a�os en el mes de mayo

SELECT Estudiantes.Nombre+N' '+Estudiantes.Apellido as N'Monitores que cumplen a�os en el mes de mayo'
FROM     Monitores INNER JOIN
                  Estudiantes ON Monitores.ID_estudiante = Estudiantes.ID_estudiante
WHERE  (MONTH(Estudiantes.FechaNac) = 5)

--9. Muestre los monitores que cumplen a�os durante la semana del 8 al 13 de mayo
SELECT Estudiantes.Nombre+N' '+Estudiantes.Apellido as N'Nombre Completo'
FROM     Monitores INNER JOIN
                  Estudiantes ON Monitores.ID_estudiante = Estudiantes.ID_estudiante
WHERE  (MONTH(Estudiantes.FechaNac) = 5) and DAY(Estudiantes.FechaNac) between 8 and 13


--10. Muestre los monitores que posean en su nombre la letra u
SELECT Estudiantes.Nombre+N' '+Estudiantes.Apellido as N'Nombre Completo'
FROM     Monitores INNER JOIN
                  Estudiantes ON Monitores.ID_estudiante = Estudiantes.ID_estudiante
WHERE  Estudiantes.Nombre like N'%u%' 

--11. Mostrar los monitores por una clase especifica.

SELECT Estudiantes.Nombre+N' '+Estudiantes.Apellido as N'Nombre Completo', Clases.Nombre_clase as N'Clase'
FROM     Monitores INNER JOIN
                  Estudiantes ON Monitores.ID_estudiante = Estudiantes.ID_estudiante INNER JOIN
                  Clases ON Monitores.ID_clase = Clases.ID_clase
WHERE Clases.ID_clase = N'11'

--12. Contar cuantos monitores hay mayores de edad.

Select COUNT(year(getDate()-year(Estudiantes.FechaNac))) as Edad from Monitores INNER JOIN 
                  Estudiantes ON Monitores.ID_estudiante = Estudiantes.ID_estudiante INNER JOIN
				  Clases ON Monitores.ID_clase = Clases.ID_clase
				  Where year(getDate())-year(Estudiantes.FechaNac) >= 18

--13. Contar cuantos monitores son menores de edad.
Select COUNT(year(getDate())-year(Estudiantes.FechaNac)) as Edad from Monitores INNER JOIN
                  Estudiantes ON Monitores.ID_estudiante = Estudiantes.ID_estudiante INNER JOIN
				  Clases ON Monitores.ID_clase = Clases.ID_clase
				  Where year(getDate())- year(Estudiantes.FechaNac) < 18

--14. Mostrar los horarios de las clases.
Select Nombre_clase as Clase, Horario from Clases
 

 --15. Realice un backup de la base de datos
 --16. Realice un backup de la base de datos
--17. Agregue un campo llamado activo a la tabla Clases de tipo bit que tenga valor por defecto verdadero.

ALTER TABLE Clases add activo bit default 'true'
go

Select * from Clases

Insert into Clases(ID_clase, Codigo_clase, Nombre_clase, Horario)values(10,N'CLAS010', N'Reflexi�n Teol�gica', N'Jueves 12:40 - 14:00')

--Elimine la tabla Monitores
Delete from Monitores 
--Elimine la tabla Estudiantes.
Delete from Estudiantes
