create table personas 
(
	dni char(9) primary key,
	nombre_p varchar (60) not null,
	direccion varchar (120)
);

create table socios
(
	carnet char (10),
	dni char(9) primary key,
	constraint fk_socios_personas foreign key (dni) references personas(dni)
);

create table patrones
(
	carnet char (10),
	dni char(9) primary key,
	constraint fk_patronces_personas foreign key (dni) references personas(dni)
);

create table barcos
(
	matricula char (7) primary key,
	nombre_bar varchar (60) not null,
	amarre integer,
	cuota money,
	dni char (9),
	constraint fk_barcos_socios foreign key (dni) references socios(dni)
);

create table salidas
(
	dni char (9),
	matricula char (7),
	f_Salida date,
	h_salida integer,
	destino varchar (60),
	constraint pk_salidas primary key (dni, matricula),
	constraint fk_salidas_barcos foreign key (matricula) references barcos(matricula),
	constraint fk_salidas_patrones foreign key (dni) references patrones (dni)
);
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

