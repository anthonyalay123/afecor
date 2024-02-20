select * from usuario;

insert into USUARIO (Nombres,Apellidos,Correo,Clave) values ('Test Nombre', 'Test Apellido', 'test@gmail.com', 'ecd71870d1963316a97e3ac3408c9835ad8cf0f3c1bc703527c30265534f75ae')

select * from CATEGORIA;

insert into CATEGORIA(Descripcion) values ('Tecnologia'),('Muebles'),('Dormitorio'),('Deportes')

select * from MARCA;

insert into MARCA(Descripcion) values ('SONYTE'),('HPTE'),('LGTE'),('HYNDAITE'),('CANONTE'),('HQ')

select * from DEPARTAMENTO;

insert into DEPARTAMENTO(IdDepartamento, Descripcion) values ('01','Guayas'),('02','Quito'), ('03','Santa Elena')

select * from PROVINCIA;

insert into PROVINCIA(IdProvincia, Descripcion, IdDepartamento) values ('0101','Guayaquil', '01'),('0201','Pichincha', '02'), ('0301','Salinas', '03')

select * from CLIENTE;

insert into CLiente(Nombres, Apellidos,Correo,Clave,FechaRegistro) VALUES ('Anthony','Alay', 'tony@gmail.com','01','11/10/2002')



