--Creando base de datos jiji 
create database SistemasWiston

-- Abriendo BD
use SistemasWiston

create table Clientes(
Id_Cliente char (4) primary key not null, 
PNombreC nvarchar(15) not null , 
SNombreC nvarchar (15) ,
PApellC nvarchar (15) not null, 
SApellC nvarchar (15), 
DirC nvarchar (70) not null, 
TelC char (8) check (Telc like '[2|5|7|8][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
)

-- insertar Registro 

insert into Clientes values ('0001','Evelyn' , 'Del carmen' ,'Espinoza' , 'Aragon' , 
'Managua' , '88945631')

--Visualizar Registros 
select * from Clientes

--Crear Cuenta Admin 

sp_addlogin 'Administrador','Administrador2021' , 'SistemasWiston' 


-- Asociar Roles 
sp_addsrvrolemember 'Administrador' , 'sysadmin' 

-- Crear usuario 

sp_adduser 'Administrador' , 'Pepito' 

-- asociar privilegios 

sp_addrolemember 'db_ddladmin' , 'Pepito'