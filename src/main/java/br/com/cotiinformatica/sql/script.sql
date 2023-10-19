create table usuario(
	idusuario		serial			primary key,
	nome			varchar(150)	not null,
	email			varchar(100)	not null unique,
	senha			varchar(40)		not null);