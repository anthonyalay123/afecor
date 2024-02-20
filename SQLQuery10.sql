create database DBTienda
go

use DBTienda
go

create table CATEGORIA(
IdCategoria int primary key identity,
Descripcion varchar(100),
Activo bit default 1,
FechaRegistro datetime default getdate())

go

create table MARCA(
IdMarca int primary key identity,
Descripcion varchar(100),
Activo bit default 1,
FechaRegistro datetime default getdate())

go

create table PRODUCTO(
IdProducto int primary key identity,
Nombre varchar(500),
Descripcion varchar(100),
IdMarca int references Marca(IdMarca),
IdCategoria int references Categoria(IdCategoria),
Precio decimal(10,2) default 0,
Stock int,
RutaImagen varchar(100),
NombreImagen varchar(100),
Activo bit default 1,
FechaRegistro datetime default getdate())

go

create table CLIENTE(
IdCliente int primary key identity,
Nombres varchar(100),
Apellidos varchar(100),
Correo varchar(100),
Clave varchar(150),
Reestablecer bit default 0,
FechaRegistro datetime default getdate())

go

create table CARRITO(
IdCarrito int primary key identity,
IdCliente int references Cliente(IdCliente),
IdProducto int references Producto(IdProducto),
Cantidad int)

go

create table VENTA(
IdVenta int primary key identity,
IdCliente int references Cliente(IdCliente),
TotalProducto int,
MontoTotal decimal(10,2),
Contacto varchar(50),
IdDistrito varchar(50),
Telefono varchar(50),
Direccion varchar(500),
IdTransaccion varchar(50),
FechaVenta datetime default getdate()
)

go

create table DETALLE_VENTA(
IdDetalleVenta int primary key identity,
IdVenta int references Venta(IdVenta),
IdProducto int references Producto(IdProducto),
Cantidad int,
Total decimal(10,2))

go

create table USUARIO(
IdUsuario int primary key identity,
Nombres varchar(100),
Apellidos varchar(100),
Correo varchar(100),
Clave varchar(150),
Reestablecer bit default 1,
Activo bit default 1,
FechaRegistro datetime default getdate()
)
go

create table DEPARTAMENTO(
IdDepartamento varchar(2) not null,
Descripcion varchar(100),

)
go

create table PROVINCIA(
IdProvincia varchar(4) not null,
Descripcion varchar(45)not null,
IdDepartamento varchar(2) not null

)
go

create table DISTRITO(
IdDistrito varchar(6) not null,
Descripcion varchar(45)not null,
IdProvincia varchar(4) not null,
IdDepartamento varchar(2) not null

)
go



