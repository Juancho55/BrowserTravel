use MilesCar;

create table Marcas
(
	id int primary key not null,
    Marca nvarchar(250) not null,
    Activa bit not null
);

create table Autos
(
	id int not null primary key,
    Nombre nvarchar(250) not null,
    Desripcion nvarchar(250) null,
    Id_Marca int not null
);

create table DetalleAutos
(
	Id bigint not null primary key,
    Modelo int not null,
    Cilindraje int not null,
    ValorUnitarioDia decimal not null,
    Impuestos decimal not null,
    Id_Auto int not null
);

create table TipoDocumento
(
	id int not null primary key,
    TipoDocumento nvarchar(250) not null
);

create table Clientes
(
	Id bigint primary key not null,
    Nombres nvarchar(300) not null,
    Apellidos nvarchar(300) not null,
    TipoDocumentoId int not null,
    Documento nvarchar(250) not null,
    Genero nchar(1) not null,
    Direccion nvarchar(250) not null,
    Telefono nvarchar(12) not null
);

create table Consultas
{
	IdAuto int not null,
    IdCliente bigint not null,
    cantidadConsultas bigint not null,
    FechaConsulta DateTime not null
};

create table Reserva
(
	IdReserva bigint not  null primary key,
    IdCliente bigint not null,
    IdAuto int not null,
    ValorTotal decimal not null
);

create table ReservaDetalle
(
	id_DetalleReserva bigint not null primary Key,
    FehaInicial DateTime not null,
    FechaFinal DateTime not null,
    ImpuestosPorDia decimal not null,
    ValorporDia decimal not null
);

