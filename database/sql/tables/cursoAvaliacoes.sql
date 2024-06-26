CREATE TABLE cursoAvaliacoes(

    idCurso BIGINT not null,
    tipoAvaliacao VARCHAR(32),

    CONSTRAINT fk_cursoAvaliacoes
        FOREIGN KEY (idCurso)
        REFERENCES curso(idCurso)
        ON DELETE CASCADE,
    
    CONSTRAINT pk_cursoAvaliacoes
        PRIMARY KEY (idCurso, tipoAvaliacao)
);