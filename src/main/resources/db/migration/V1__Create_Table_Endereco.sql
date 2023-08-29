CREATE TABLE endereco
(
    cep         VARCHAR(255) NOT NULL,
    logradouro  VARCHAR(255),
    complemento VARCHAR(255),
    bairro      VARCHAR(255),
    localidade  VARCHAR(255),
    uf          VARCHAR(255),
    ibge        VARCHAR(255),
    gia         VARCHAR(255),
    ddd         VARCHAR(255),
    siafi       VARCHAR(255),
    CONSTRAINT pk_endereco PRIMARY KEY (cep)
);