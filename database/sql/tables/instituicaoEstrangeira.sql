create table instituicaoEstrangeira(
    idInstituicao serial,
    pais varchar(20),
    sigla varchar(20),

    CONSTRAINT fk_instituicaoEstrangeira
        FOREIGN KEY (idInstituicao)
        REFERENCES instituicaoEnsino
        ON DELETE CASCADE,
    
    CONSTRAINT pk_instituicaoEstrangeira
        PRIMARY KEY (sigla, pais)
)