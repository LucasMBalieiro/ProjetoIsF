create table relTurmaCurso(
    idTurma serial,
    idCurso serial,

    CONSTRAINT fk_relTurmaCurso_turma
        FOREIGN KEY (idTurma)
        REFERENCES turmaOC
        ON DELETE CASCADE,

    CONSTRAINT fk_relTurmaCurso_curso
        FOREIGN KEY (idCurso)
        REFERENCES curso
        ON DELETE CASCADE,
    
    CONSTRAINT pk_relTurmaCurso
        PRIMARY KEY (idTurma, idCurso)
)