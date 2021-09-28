create database Taller 

use Taller

create table Cliente (
NoCliente int primary key identity  (1,1),
PrimerNombre varchar(30) not null, 
SegundoNombre varchar(30) not null,
PrimerApellido varchar(30) not null,
SegundoApellido varchar(30) not null
)

create table Mantenimiento (
NoMantenimiento int primary key identity(1,1),
NoVehiculo int foreign key references Vehiculo(NoVehiculo),
FechaIn date,
FechaOut date)

create table Vehiculo (
NoVehiculo int primary key identity (1,1),
NoCliente int foreign key references  Cliente(NoCliente), 
Brand varchar (15) , 
Model varchar(50),
year date)

create table Respuestos(
NoRespuesto int primary key identity(1,1),
Marca varchar(15) , 
Modelo varchar(15) ,
Cantidad int)

create table Servicios(
NoServicio int primary key identity(1,1),
Descripcion varchar(70),
Precio money,
TipoMantenimiento varchar (30))

create table Mecanico( 
NoMecanico int primary key identity(1,1) not null,
PrimerNombre varchar(50) not null , 
PrimerApellido varchar(50) not null) 

create table detalleMantenimiento(
NoDetalleMantenimiento int primary key identity (1,1) not null,
NoMantenimiento int foreign key references Mantenimiento (NoMantenimiento) ,
NoMecanico int foreign key references Mecanico (NoMecanico) , 
NoServicio int foreign key references Servicios(NoServicio),
Precio money)

create table detalleRepuestos(
NoDetalleMantenimiento int foreign key references detalleMantenimiento (NoDetalleMantenimiento), 
NoRespuesto int foreign key references Respuestos(NoRespuesto) , 
Precio money,
Cantidad int) 
