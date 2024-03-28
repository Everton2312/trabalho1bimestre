create database cliente;
use cliente;

create table cliente(
	cliente_id int
	auto_increment primary key,
    nome varchar(255),
    endereco varchar(255),
    email varchar (255),
    celular varchar (20),
    data_nascimento date
);

create table produtos(
	produtos_id int
    auto_increment primary key,
	nome varchar(255),
    preço decimal (100,2),
    descrição varchar(255),
    qtd_estoque tinyint
);

create table pedidos(
	pedidos_id int
    auto_increment primary key,
	numero_pedido int,
    data_compra date,
    valor_total DECIMAL(10,2),
    data_estimada_entrega DATE,
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

CREATE TABLE lista_itens (
    id_item INT AUTO_INCREMENT PRIMARY KEY,
    quantidade INT,
    valor_unitario DECIMAL(10,2),
    valor_total_item DECIMAL(10,2),
    id_pedido INT,
    id_produto INT,
    FOREIGN KEY (id_pedido) REFERENCES Pedido(id_pedido),
    FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
);