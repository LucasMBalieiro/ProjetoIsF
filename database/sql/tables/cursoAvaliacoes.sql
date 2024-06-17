CREATE TABLE cursoAvaliacoes(

    idCurso INT,
    tipoAvaliacao VARCHAR(32),

    CONSTRAINT fk_cursoAvaliacoes
        FOREIGN KEY (idCurso)
        REFERENCES curso
        ON DELETE CASCADE,
    
    CONSTRAINT pk_cursoAvaliacoes
        PRIMARY KEY (idCurso, tipoAvaliacao)
);