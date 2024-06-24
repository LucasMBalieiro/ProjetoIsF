create table instituicaoBrasileira(
    idInstituicao serial,
    cnpj varchar(20),
    sigla varchar(20),

    CONSTRAINT fk_instituicaoBrasileira
        FOREIGN KEY (idInstituicao)
        REFERENCES instituicaoEnsino
        ON DELETE CASCADE,
    
    CONSTRAINT pk_instituicaoBrasileira
        PRIMARY KEY (cnpj)
)