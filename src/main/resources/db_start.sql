CREATE
DATABASE IF NOT EXISTS FOMEATS;

CREATE TABLE FUNCIONARIO
(
    ID            INT AUTO_INCREMENT PRIMARY KEY,
    NOME          VARCHAR(255) NOT NULL,
    CPF           VARCHAR(14)  NOT NULL,
    DT_NASCIMENTO DATE,
    NUM_CONTATO   INT
);

CREATE TABLE CLIENTE
(
    ID          INT AUTO_INCREMENT PRIMARY KEY,
    NOME        VARCHAR(255) NOT NULL,
    SOBRENOME   VARCHAR(255) NOT NULL,
    CPF         VARCHAR(14)  NOT NULL,
    NUM_CONTATO INT

);

CREATE TABLE IF NOT EXISTS CORRESPONDENCIA
(
    ESTADO      VARCHAR(255),
    CIDADE      VARCHAR(255),
    BAIRRO      VARCHAR(255),
    NUMERO      VARCHAR(20),
    ENDERECO    VARCHAR(255),
    COMPLEMENTO VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS LOGIN
(
    EMAIL VARCHAR(255) NOT NULL,
    SENHA VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS PAGAMENTO
(
    NOME_COMPLETO VARCHAR(255) NOT NULL,
    NUM_CARTAO    VARCHAR(20)  NOT NULL,
    DT_EXPIRACAO  DATE         NOT NULL,
    CVV           VARCHAR(4)   NOT NULL
);

CREATE TABLE PRODUTOS
(
    ID         INT AUTO_INCREMENT PRIMARY KEY,
    TORREFACAO BOOLEAN,
    MOAGEM     VARCHAR(255)
);