create DataBase Empresa;
Use Empresa;

Create Table Funcionarios(
id INT Primary Key Auto_increment,
 nome Varchar(100) not Null,
 data_nascimento Date not null,
 salario Decimal(10,2) not null,
 departamento_id int not null,
 cargo_id int not null,
 Foreign Key (departamento_id) references departamentos(id),
 Foreign Key (cargo_id) references cargos(id)
 );
 
 Create Table Departamentos(
 id INT Primary Key Auto_increment,
 nome Varchar(100) not null
 );
 
 Create Table Cargos(
 id INT primary Key Auto_increment,
 nome varchar(100) not null,
 nivel varchar(50) not null
 );
 
 Insert INTO departamentos(nome) VALUES ('TI'), ('RH'), ('financeiro'), ('marketing'), ('vendas');
 
 Insert INTO cargos(nome, nivel) values 
 ('analista', 'pleno'), 
 ('gerente', 'senior'),
 ('assitente', 'junior'),
 ('coordenador', 'senior'),
 ('desenvolvedor', 'pleno');
 
 Insert INTO funcionarios(nome,data_nascimento,salario,departamento_id,cargo_id) values
 ('Ana Silva','1985-06-15',5500.00,1,5),
 ('Carlos Santos','1990-03-22',4800.00,2,1),
 ('Bruna Costa', '1987-12-10', 6000.00,3,2),
('Daniel Oliveira', '1992-08-05', 5200.00, 1, 5), 
('Fernanda Lima', '1995-09-30', 4500.00, 2, 3), 
('Gustavo Souza', '1980-01-25', 7000.00, 3, 2), 
('Helena Martins', '1983-11-17', 5300.00, 1, 4), 
('Igor Ferreira', '1991-07-08', 4900.00, 2, 1), 
('Juliana Rocha', '1989-04-19', 5600.00, 3, 2), 
('Lucas Mendes', '1993-06-23', 5100.00, 1, 5);


select max(salario) as maiorsalario from funcionarios;
-- Encontrar o menor salário: 7.000

select min(salario) as menorsalario from funcionarios;
-- Encontrar o menor salário: 4.500

select count(nome) as quantidade from funcionarios;
-- Qual a quantidade de funcionários: 10

select nome, year (data_nascimento) as ano from funcionarios
where data_nascimento >= '1990-01-01';
-- Filtre os funcionários nascidos a apartir de 1990: Carlos, Daniel, Fernanda, Igor, Lucas

select avg(salario) as media from funcionarios;
-- Encontre a média salarial: 5.390

select substring('daniel',1,3);
-- Extraia os 3 primeiros caracteres do nome: Daniel (Dan)

select d.nome as departamentos, c.nome as cargos, count(f.id) as total_funcionarios
from funcionarios f
join cargos c on f.cargo_id = c.id
join departamentos d on f.departamento_id = d.id

group by d.nome, c.nome
-- Contar quantos funcionários por departamento

order by d.nome, c.nome;
-- Contar quantos funcionários existem cargo





 

