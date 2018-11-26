create table usuario(
	id int auto_increment primary key,
	nome varchar(255) not null,
	cpf int not null,
	senha varchar(255) not null,
	email varchar(255) not null,
	matricula int not null,
	pendencia varchar(255)
);

create table estacao(
	id int auto_increment primary key,
	capacidade int not null,
	qtd_slots_disp int not null,
	ativa boolean not null,
	nome varchar(255) not null,
	latitude varchar(255),
	longitude varchar(255)
);

create table bicicleta(
	id int auto_increment primary key,
	ativa boolean not null,
	em_uso boolean not null,
	id_estacao int not null,
	foreign key(id_estacao) references estacao(id)
);

create table historico(
	id int auto_increment primary key,
	acao varchar(255),
	datainicio date not null,
	datafim date,
	matricula int not null,
	pendencia varchar(255),
	id_bicicleta int,
	id_estacao int,
	id_usuario int,
	foreign key (id_bicicleta) references bicicleta(id),
	foreign key (id_estacao) references estacao(id),
	foreign key (id_user) references usuario(id)
);

create table historico_bike(
	id int auto_increment primary key,
	data date not null,
	motivo_retirada varchar(255) not null,
	id_bicicleta int not null,
	foreign key (id_bicicleta) references bicicleta(id)
);

create table punicao(
	id int auto_increment primary key,
	ativa boolean not null,
	inicio date not null,
	fim date,
	razao varchar(255) not null,
	id_historico int not null,
	id_usuario int not null,
	foreign key (id_historico) references historico(id),
	foreign key (id_usuario) references usuario(id)
);

create table administrador(
	id int auto_increment primary key,
	nome varchar(255) not null,
	cpf varchar(255) not null,
	senha varchar(255) not null
);

