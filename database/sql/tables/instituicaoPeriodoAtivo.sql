create table instituicaoPeridoAtivo(
    idInstituicao serial,
    inicio date not null,
    termino date,
    status boolean,

    CONSTRAINT fk_instituicaoPeridoAtivo
        FOREIGN KEY (idInstituicao)
        REFERENCES instituicaoEnsino
        ON DELETE CASCADE,
    
    CONSTRAINT pk_instituicaoPeridoAtivo
        PRIMARY KEY (inicio, termino)
)