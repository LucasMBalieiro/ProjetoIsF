create table instituicaoEstrangeira(
    idInstituicao BIGINT NOT NULL AUTO_INCREMENT,
    pais varchar(20),
    sigla varchar(20),

    CONSTRAINT fk_instituicaoEstrangeira
        FOREIGN KEY (idInstituicao)
        REFERENCES instituicaoEnsino(idInstituicao)
        ON DELETE CASCADE,
    
    CONSTRAINT pk_instituicaoEstrangeira
        PRIMARY KEY (sigla, pais)
)
