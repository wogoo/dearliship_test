CREATE SEQUENCE IF NOT EXISTS hibernate_sequence START WITH 1 INCREMENT BY 1;

CREATE TABLE veiculo
(
    id              BIGINT           NOT NULL,
    marca           VARCHAR(255),
    modelo          VARCHAR(255),
    ano             INTEGER          NOT NULL,
    cor             VARCHAR(255),
    preco           DOUBLE PRECISION NOT NULL,
    proprietario_id BIGINT,
    CONSTRAINT pk_veiculo PRIMARY KEY (id)
);

ALTER TABLE veiculo
    ADD CONSTRAINT FK_VEICULO_ON_PROPRIETARIO FOREIGN KEY (proprietario_id) REFERENCES cliente (id);