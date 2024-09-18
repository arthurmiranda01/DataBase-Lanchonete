CREATE TABLE as01_db.Clientes (
CodCliente SMALLINT AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(45) NOT NULL,
Telefone VARCHAR(45) NOT NULL,
Endereço VARCHAR(90) NOT NULL
);

CREATE TABLE as01_db.Pedidos (
CodPedido INT AUTO_INCREMENT PRIMARY KEY,
QtdPedidopedidos VARCHAR(45) NOT NULL,
QtdSanduiche VARCHAR(45) NOT NULL,
StatusPed VARCHAR(45) NOT NULL,
DataEmissao VARCHAR(45) NOT NULL,
CodCliente SMALLINT NOT NULL,
CodEntregador SMALLINT NOT NULL,
FOREIGN KEY (CodCliente) REFERENCES as01_db.Clientes(CodCliente),
FOREIGN KEY (CodEntregador) REFERENCES as01_db.Entregadores(CodEntregador)
);

CREATE TABLE as01_db.Entregadores (
CodEntregador SMALLINT AUTO_INCREMENT PRIMARY KEY,
NomeEnt VARCHAR(45) NOT NULL,
TelefoneEnt VARCHAR(45) NOT NULL
);

CREATE TABLE as01_db.PedidoSanduiches (
QuantidadePed SMALLINT PRIMARY KEY,
CodPedido INT NOT NULL,
CodItem SMALLINT NOT NULL,
FOREIGN KEY (CodPedido) REFERENCES as01_db.Pedidos(CodPedido),
FOREIGN KEY (CodItem) REFERENCES as01_db.Sanduiches(CodItem)
);

CREATE TABLE as01_db.Sanduiches (
CodItem SMALLINT AUTO_INCREMENT PRIMARY KEY,
NomeSanduiche VARCHAR(45) NOT NULL,
Preco VARCHAR(45) NOT NULL
);

insert into as01_db.Clientes values 
	(1, "Arthur", "51995648634", "Rua Davi Nasser, 22");
    
insert into as01_db.Pedidos values 
	(1, "1", "2", "Em Preparação", "30/08/24", 1, 1);
    
insert into as01_db.Entregadores values 
	(1, "EntregadorNome", "51999999999");
    
insert into as01_db.PedidoSanduiches values 
	(1, 1, 5);

insert into as01_db.Sanduiches values 
	(1, "Sanduiche Atum", "R$10"),
    (2, "Sanduiche Bacon", "R$12"),
    (3, "Sanduiche Alface", "R$14"),
    (4, "Sanduiche Carne", "R$16"),
    (5, "Sanduiche Frango", "R$18");

select*from as01_db.Clientes;
select*from as01_db.Pedidos;
select*from as01_db.Entregadores;
select*from as01_db.PedidoSanduiches;
select*from as01_db.Sanduiches;
select NomeSanduiche from as01_db.Sanduiches where CodItem = 2;

UPDATE as01_db.Sanduiches set Preco = "R$10" where CodItem = 5;
