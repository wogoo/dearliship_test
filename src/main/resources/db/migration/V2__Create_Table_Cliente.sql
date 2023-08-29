CREATE SEQUENCE IF NOT EXISTS hibernate_sequence START WITH 1 INCREMENT BY 1;

CREATE TABLE cliente
(
    id           BIGINT NOT NULL,
    nome         VARCHAR(255),
    endereco_cep VARCHAR(255),
    CONSTRAINT pk_cliente PRIMARY KEY (id)
);

CREATE TABLE cliente_veiculos
(
    cliente_id  BIGINT NOT NULL,
    veiculos_id BIGINT NOT NULL
);

ALTER TABLE cliente_veiculos
    ADD CONSTRAINT uc_cliente_veiculos_veiculos UNIQUE (veiculos_id);

ALTER TABLE cliente
    ADD CONSTRAINT FK_CLIENTE_ON_ENDERECO_CEP FOREIGN KEY (endereco_cep) REFERENCES endereco (cep);

ALTER TABLE cliente_veiculos
    ADD CONSTRAINT fk_clivei_on_cliente FOREIGN KEY (cliente_id) REFERENCES cliente (id);

ALTER TABLE cliente_veiculos
    ADD CONSTRAINT fk_clivei_on_veiculo FOREIGN KEY (veiculos_id) REFERENCES veiculo (id);