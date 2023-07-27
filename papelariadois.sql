Create DATABASE Papelaria;

Use Papelaria;

Create Table Produto (
	idProduto INt PRIMARY KEY,
	nomeProduto Varchar(50),
    valor Float,
    qtde INT,
    descricao Varchar(50),
    fornecedor Varchar(50)
);

Create Table Pedido (
	idPedido INT PRIMARY KEY,
    cpf varchar(11),
    valor float,
    produto varchar(50),
    qtde int
);

Create Table Cliente (
	cpf varchar(11) PRIMARY KEY,
    nome varchar(50),
    email varchar(50),
    telefone varchar(50),
    celular varchar(50),
    datanasc varchar(50)
);


CREATE TABLE Fornecedores (
    idFornecedor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL
);

INSERT INTO Produto (idProduto, nomeProduto, valor, qtde, descricao, fornecedor)
VALUES (1,'Caneta Esferográfica', 1.99, 100, 'Caneta de tinta azul', 'Fornecedor A');

INSERT INTO Produto (idProduto, nomeProduto, valor, qtde, descricao, fornecedor)
VALUES (2,'Caderno Universitário', 10.99, 50, 'Caderno de capa dura com 100 folhas', 'Fornecedor B');

INSERT INTO Produto (idProduto, nomeProduto, valor, qtde, descricao, fornecedor)
VALUES (3,'Lápis de Cor', 5.99, 200, 'Caixa com 12 cores', 'Fornecedor C');


INSERT INTO Pedido (idPedido, cpf, valor, produto, qtde)
VALUES (1, '12345678901', 15.97, 'Caneta Esferográfica', 8);

INSERT INTO Pedido (idPedido, cpf, valor, produto, qtde)
VALUES (2, '98765432109', 32.97, 'Caderno Universitário', 3);

INSERT INTO Pedido (idPedido, cpf, valor, produto, qtde)
VALUES (3, '56789012345', 11.98, 'Lápis de Cor', 2);


INSERT INTO Cliente (cpf, nome, email, telefone, celular, datanasc)
VALUES ('12345678901', 'João Silva', 'joao.silva@example.com', '(11) 9876-5432', '(11) 98765-4321', '1990-05-15');

INSERT INTO Cliente (cpf, nome, email, telefone, celular, datanasc)
VALUES ('98765432109', 'Maria Santos', 'maria.santos@example.com', '(11) 9876-5433', '(11) 98765-4322', '1985-12-01');

INSERT INTO Cliente (cpf, nome, email, telefone, celular, datanasc)
VALUES ('56789012345', 'Pedro Oliveira', 'pedro.oliveira@example.com', '(11) 9876-5434', '(11) 98765-4323', '1995-08-20');

INSERT INTO Fornecedores (nome)
VALUES ('Fornecedor A');

INSERT INTO Fornecedores (nome)
VALUES ('Fornecedor B');

INSERT INTO Fornecedores (nome)
VALUES ('Fornecedor C');

