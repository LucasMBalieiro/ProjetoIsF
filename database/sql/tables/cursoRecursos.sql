CREATE TABLE cursoRecursos(

    idCurso BIGINT not null,
    recurso VARCHAR(32),

    CONSTRAINT fk_cursoRecursos
        FOREIGN KEY (idCurso)
        REFERENCES curso(idCurso)
        ON DELETE CASCADE,
    
    CONSTRAINT pk_cursoRecursos
        PRIMARY KEY (idCurso, recurso)
);