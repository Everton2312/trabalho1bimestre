USE cliente;
 
SELECT * FROM CLIENTES;
INSERT INTO CLIENTES
VALUES
( null, 'mariana', 'example1@gmail.com', '22222222', '2009-02-01' ),
( null, 'samuel', 'example2@gmail.com', '33333333', '2008-02-01' ),
( null, 'david', 'example3@gmail.com', '44444444', '2007-02-01' ),
( null, 'marcusrogerio', 'example4@gmail.com', '99999991', '2006-02-01' ),
( null, 'derek', 'example5@gmail.com', '55555555', '2005-02-01' ),
( null, 'kauany', 'example6@gmail.com', '66666666', '2009-07-28' ),
( null, 'nayara', 'example7@gmail.com', '77777777', '2004-06-21' ),
( null, 'larissa', 'example8@gmail.com', '88888888', '2010-05-08' ),
( null, 'guilherme', 'example9@gmail.com', '99999999', '2000-05-30' ),
( null, 'anajulia', 'example10@gmail.com', '11111111', '2003-02-02' );

INSERT INTO PRODUTOS
VALUES
( null, 'Teste', 5.90, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 100 ),
( null, 'testi', 6.90, 'Lorem ipsum dolor sit ameta consectetur adipisicing elit.', 200 ),
( null, 'teste4', 7.90, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 300 ),
( null, 'Teste3', 8.90, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 400 ),
( null, 'Teste4', 9.90, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 500 ),
( null, 'Teste5', 10.90, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 600 ),
( null, 'Teste6', 11.90, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 700 ),
( null, 'Teste7', 12.90, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 800 ),
( null, 'Teste8', 13.90, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 900 ),
( null, 'Teste9', 14.90, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 1000 );

SELECT * FROM PEDIDOS;
INSERT INTO PEDIDOS
VALUES
( null, 1, '2024-03-20', 0, '2024-03-25' ),
( null, 2, '2024-03-19', 0, '2024-03-24' ),
( null, 3, '2024-03-18', 0, '2024-03-23' ),
( null, 4, '2024-03-17', 0, '2024-03-22' ),
( null, 5, '2024-03-16', 0, '2024-03-21' ),
( null, 6, '2024-03-15', 0, '2024-03-20' ),
( null, 7, '2024-03-14', 0, '2024-03-19' ),
( null, 8, '2024-03-13', 0, '2024-03-18' ),
( null, 9, '2024-03-12', 0, '2024-03-17' ),
( null, 10, '2024-03-11', 0, '2024-03-16' );

SELECT * FROM ITENS_PEDIDO;
INSERT INTO ITENS_PEDIDO
VALUES
( null, 1, 1, 3, 0,0),
( null, 2, 2, 4, 0,0),
( null, 3, 3, 7, 0,0),
( null, 4, 4, 9, 0,0),
( null, 5, 5, 2, 0,0),
( null, 6, 6, 12, 0,0),
( null, 7, 7, 4, 0,0),
( null, 8, 8, 3, 0,0),
( null, 9, 9, 19, 0,0),
( null, 10, 10, 1, 0,0);

UPDATE CLIENTES
SET NOME = 'everton'
WHERE ID = 7;

UPDATE PRODUTOS
SET PRECO = 6.00
WHERE ID = 1;

UPDATE PEDIDOS
SET DATA_COMPRA= '2024-03-10'
WHERE ID = 10;

UPDATE ITENS_PEDIDO
SET VALOR_UNITARIO = ( SELECT PRECO FROM PRODUTOS WHERE ID = ID_PRODUTO ),  VALOR_TOTAL = ( SELECT PRECO*QUANTIDADE FROM PRODUTOS WHERE ID = ID_PRODUTO )
WHERE ID = 7;

DELETE FROM ITENS_PEDIDO WHERE ID = 9;
DELETE FROM ITENS_PEDIDO WHERE ID = 10;