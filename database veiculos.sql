drop database if exists locadora de veiculos; 
create database veiculos; 
show databases; 
use viculos; 

create table veiculos(
            i_veiculo_veiculo int primary key not null AUTO_INCREMENT,
            s,placa_veiculo varchar(50) not null,
            s,modelo_veiculo varchar(11) not null,
            s,marca_veiculo varchar(11) not null,
            s,cor_veiculo varchar(11) not null,
            s,marca_veiculo varchar(11) not null,
            s,valordiario_veiculo varchar(11) not null,
            d,ano_veiculo datetime(11)) not null,
            s,tipo_veiculo varchar(11) not null
);
create table locados(
            id_locado integer not null auto_increment,
            descricao varchar(40) not null,
            constraint pk_locados primary key (id_locado)
);
create table locacoes(
            id varchar(12) not null,
            d,data_retirada datetime not null,
            d,data_devolucao datetime not null,
            s,obs varchar(11) not null,
            s,valor_efetivo integer not null,
);
create table aluga(
            id_aluga integer not null auto_increment,
            descricao varchar(40) not null,
            constraint pk_aluga primary key (id_aluga)
);
create table clientes(
            cpf varchar(11) not null,
            s,nome varchar(11) not null,
            s,email varchar(11) not null,
            s,telefone integer not null,
            s,endereco varchar(11) not null,
);
create table endereco(
            id_endereco varchar(40) not null,
            logradouro varchar(40) not null,
            bairro varchar(15) not null,
            cidade_uf varchar(40) not null
);
alter table clientes
add constraint fk_aluga
foreign key (id_aluga) references   aluga(id_aluga)
on delete cascade
on update cascade;

alter table locacoes
add constraint fk_data_retirada
foreign key (id) references locacoes(id)
on update cascade;

alter table endereco
add constraint fk_logradouro
foreign key (id_endereco) references endereco(id_endereco) 
on delete cascade;

alter table veiculos
add constraint fk_veiculos_veiculos
foreign key (id_linha) references linhas(id_linha);

-- Visualizando os resultados 
show databases;
show tables;
describe veiculos;
describe locados;
describe locacoes;
describe aluga;
describe clientes;
describe endereco;

