create table instituicaoBrasileira(
    idInstituicao BIGINT NOT NULL AUTO_INCREMENT,
    cnpj varchar(14),
    sigla varchar(10) UNIQUE,

    CONSTRAINT fk_instituicaoBrasileira
        FOREIGN KEY (idInstituicao)
        REFERENCES instituicaoEnsino(idInstituicao)
        ON DELETE CASCADE,
    
    CONSTRAINT pk_instituicaoBrasileira
        PRIMARY KEY (cnpj)
)