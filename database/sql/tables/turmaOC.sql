create table turmaOC(
    idTurma BIGINT NOT NULL auto_increment,
    idCurso BIGINT NOT NULL,
    nConcluidos INT,
    nInscritos INT,
    nEvadidos INT,

    CONSTRAINT fk_turmaOC
        FOREIGN KEY (idCurso)
        REFERENCES curso(idCurso)
        ON DELETE CASCADE,
    
    CONSTRAINT pk_turmaOC
        PRIMARY KEY (idTurma, idCurso)
)