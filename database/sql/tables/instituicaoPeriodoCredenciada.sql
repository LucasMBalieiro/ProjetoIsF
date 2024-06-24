create table instituicaoPeridoCredenciada(
    idInstituicao serial,
    inicio date not null,
    termino date,
    status boolean,

    CONSTRAINT fk_instituicaoPeridoCredenciada
        FOREIGN KEY (idInstituicao)
        REFERENCES instituicaoEnsino
        ON DELETE CASCADE,
    
    CONSTRAINT pk_instituicaoPeridoCredenciada
        PRIMARY KEY (inicio, termino)
)