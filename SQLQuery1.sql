create database prueba1
go
use prueba1
go
create table persona(
idpersona int not null primary key identity (1,1),
nombre varchar (50) not null,
apellidoP varchar (50) not null,
apellidoM varchar (50) not null,
Estado bit  not null default 1)
go

insert into persona (nombre,apellidoP,apellidoM) values ('Juan', 'Antonio', 'Bernal')
insert into persona (nombre,apellidoP,apellidoM) values  ('Jose', 'ant', 'Wert')
go
create procedure AgregarPersona (
@nombre varchar (50),
@apellidoP varchar (50),
@apellidoM varchar (50))
AS
insert into persona(nombre,apellidoP,apellidoM) values (@nombre, @apellidoP,@apellidoM)
go
create procedure Listar 
AS
select * from persona where Estado=1

go
create procedure UpdatePersona(
@nombre varchar (50),
@apellidoP varchar (50),
@apellidoM varchar (50),
@idper int
)
as update persona set nombre = @nombre,apellidoM = @apellidoM,apellidoP = @apellidoP where idpersona = @idper
go
create procedure DeletePersona(
@idper int
)
as 
update persona set Estado=0 where idpersona = @idper

 