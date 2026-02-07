drop database if exists DBVehiculos_IN5AV;
Create database DBVehiculos_IN5AV;

Use DBVehiculos_IN5AV;

Create table Vehiculos(
idVehiculos INT NOT NULL AUTO_INCREMENT,
placa Varchar(6) NOT NULL UNIQUE,
marca VARCHAR(70) NOT NULL,
modelo VARCHAR(70) NOT NULL,
anio INT NOT NULL,
color VARCHAR(30),
tipo_de_vehiculo VARCHAR(80),
detallesVehiculo TEXT NOT NULL,
datosUsuario TEXT NOT NULL,
primary key PK_idVehiculos (idVehiculos)
);

-------- STORE PROCEDURES --------

-- LISTAR --
DELIMITER //
	create procedure sp_ListarVehiculos()
		Begin
			Select
				V.idVehiculos,
                V.placa,
                V.marca,
                V.modelo,
                V.anio,
                V.color,
                V.tipo_de_vehiculo,
                V.detallesVehiculo
                From Vehiculos V;
			end//
	Delimiter ;
    
-- Agregar --
DELIMITER //
	create procedure sp_AgregarVehiculo(
    in placa Varchar(6),
    in marca VARCHAR(70),
    in modelo VARCHAR(70),
    in anio INT,
    in color VARCHAR(30),
    in tipo_de_vehiculo VARCHAR(80),
    in detallesVehiculo TEXT ,
    in datosUsuario TEXT )
		begin
			insert into Vehiculos(placa, marca, modelo, anio, color, tipo_de_vehiculo, detallesVehiculo, datosUsuario)
					values (placa, marca, modelo, anio, color, tipo_de_vehiculo, detallesVehiculo, datosUsuario);
		End//
DELIMITER ;

select * FROM vehiculos;

CALL sp_AgregarVehiculo( 'P123ABC', 'Toyota', 'Corolla', 2020, 'Blanco', 'Sedan', 'Buen estado general');
CALL sp_AgregarVehiculo( 'P456DEF', 'Honda', 'Civic', 2019, 'Negro', 'Sedan', 'Pequeños rayones en puerta');
CALL sp_AgregarVehiculo( 'P789GHI', 'Mazda', 'CX-5', 2021, 'Rojo', 'SUV', 'Excelente estado');
CALL sp_AgregarVehiculo( 'M123JKL', 'Nissan', 'Frontier', 2018, 'Gris', 'Pickup', 'Uso moderado');
CALL sp_AgregarVehiculo( 'P321MNO', 'Hyundai', 'Elantra', 2020, 'Azul', 'Sedan', 'Interior limpio');
CALL sp_AgregarVehiculo( 'P654PQR', 'Kia', 'Rio', 2019, 'Plata', 'Sedan', 'Buen rendimiento');
CALL sp_AgregarVehiculo( 'P987STU', 'Ford', 'Escape', 2022, 'Negro', 'SUV', 'Como nuevo');
CALL sp_AgregarVehiculo( 'M741VWX', 'Chevrolet', 'D-Max', 2017, 'Blanco', 'Pickup', 'Detalles estéticos');
CALL sp_AgregarVehiculo( 'P852YZA', 'Volkswagen', 'Jetta', 2021, 'Gris', 'Sedan', 'Buen estado mecánico');
CALL sp_AgregarVehiculo( 'P963BCD', 'Toyota', 'Rav4', 2022, 'Verde', 'SUV', 'Sin observaciones');
CALL sp_AgregarVehiculo( 'M159EFG', 'Isuzu', 'MU-X', 2020, 'Negro', 'SUV', 'Uso familiar');
CALL sp_AgregarVehiculo( 'P357HIJ', 'Honda', 'CR-V', 2021, 'Azul', 'SUV', 'Excelente suspensión');
CALL sp_AgregarVehiculo( 'P258KLM', 'Nissan', 'Versa', 2019, 'Blanco', 'Sedan', 'Económico');
CALL sp_AgregarVehiculo( 'M456NOP', 'Ford', 'Ranger', 2018, 'Rojo', 'Pickup', 'Buen estado general');
CALL sp_AgregarVehiculo( 'P789QRS', 'Chevrolet', 'Spark', 2020, 'Amarillo', 'Hatchback', 'Ideal para ciudad');
CALL sp_AgregarVehiculo( 'P951TUV', 'Kia', 'Sportage', 2022, 'Plata', 'SUV', 'Muy buen estado');
CALL sp_AgregarVehiculo( 'M753WXY', 'Toyota', 'Hilux', 2019, 'Gris', 'Pickup', 'Uso de trabajo');
CALL sp_AgregarVehiculo( 'P852ZAB', 'Hyundai', 'Tucson', 2021, 'Negro', 'SUV', 'Cómodo y espacioso');
CALL sp_AgregarVehiculo( 'P369CDE', 'Mazda', '3', 2020, 'Rojo', 'Sedan', 'Diseño deportivo');
CALL sp_AgregarVehiculo( 'M147FGH', 'Suzuki', 'Vitara', 2018, 'Verde', 'SUV', 'Buen estado general');
call sp_ListarVehiculos();

-- Buscar --

DELIMITER //
	create procedure sp_BuscarVehiculo(in idVeh int)
		Begin
			Select
				V.idVehiculos,
                V.placa,
                V.marca,
                V.modelo,
                V.anio,
                V.color,
                V.tipo_de_vehiculo,
                V.detallesVehiculo
			From Vehiculos V
					where V.idVehiculos = idVeh;
		End //
DELIMITER ;


-- Editar --
DELIMITER //
	create procedure sp_EditarVehiculo(
    In idVeh int, In pl varchar(6),
    In mar VARCHAR(70),
    In model VARCHAR(70),
    In anio INT NOT NULL,
    In color VARCHAR(30),
    In tipoVeh VARCHAR(80),
    In DetallesVeh TEXT NOT NULL,
    
	begin
        update Vehiculos P 
        set 
         V.placa,
                V.marca,
                V.modelo,
                V.anio,
                V.color,
                V.tipo_de_vehiculo,
                V.detallesVehiculo
					Where P.idVehiculos = idVeh;

DELIMITER ;

-- Eliminar --
DELIMITER //
	create procedure sp_EliminarVehiculos(
	in idVeh int)
		begin
			delete from Vehiculos prepare
				where V.idVehiculos = idVeh;
					End//

DELIMITER ;