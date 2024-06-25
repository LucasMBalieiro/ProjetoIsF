create table instituicaoBrasileira(
    idInstituicao serial,
    cnpj varchar(14),
    sigla varchar(10),

    CONSTRAINT fk_instituicaoBrasileira
        FOREIGN KEY (idInstituicao)
        REFERENCES instituicaoEnsino(idInstituicao)
        ON DELETE CASCADE,
    
    CONSTRAINT pk_instituicaoBrasileira
        PRIMARY KEY (cnpj)
)