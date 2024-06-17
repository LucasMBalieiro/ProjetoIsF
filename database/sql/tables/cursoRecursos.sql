CREATE TABLE cursoRecursos(

    idCurso INT,
    recurso VARCHAR(32),

    CONSTRAINT fk_cursoRecursos
        FOREIGN KEY (idCurso)
        REFERENCES curso
        ON DELETE CASCADE,
    
    CONSTRAINT pk_cursoRecursos
        PRIMARY KEY (idCurso, recurso)
);