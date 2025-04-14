create database loja;

use loja;

create table  clientes (
   id_cliente int primary key,
   nome varchar (100) not null,
   email varchar (150) unique,
   telefone varchar (20),
   data_nascimento date not null,
   status varchar (20) default 'ativo'
   );
    id_cliente int primary key auto_increment,
    nome varchar (100) not null,
    email varchar (150) unique,
    telefone varchar (20),
    data_nascimento date not null,
    status varchar (20) default 'ativo'
    );
    
select * from clientes;


create table pedidos (
     id int primary key,
     id_cliente int not null,
     data_pedido date,
     valor decimal (10,2) not null,
     foreign key (id_cliente) references clientes(id_cliente)
     );  
     insert into clientes (id_cliente,nome,email,telefone,data_nascimento)
     values 
     (12,'maria','mariakkkkk','28845453','1999-12-28');
     insert into pedidos (id,id_cliente,data_pedido,valor)
     values
     (1,12,'2020-05-05','300');
     
select * from clientes 
	join pedidos on clientes.id_cliente = pedidos.id_cliente;
