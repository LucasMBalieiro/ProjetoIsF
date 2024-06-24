create table turmaOC(
    idTurma serial,
    idCurso serial,
    nConcluidos INT,
    nInscritos INT,
    nEvadidos INT   

    CONSTRAINT fk_turmaOC
        FOREIGN KEY (idCurso)
        REFERENCES curso
        ON DELETE CASCADE,
    
    CONSTRAINT pk_turmaOC
        PRIMARY KEY (idTurma, idCurso)
)