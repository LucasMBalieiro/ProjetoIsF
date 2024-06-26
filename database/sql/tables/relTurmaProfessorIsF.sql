CREATE TABLE relTurmaProfessorIsF(

logon varchar(100),
idTurma BIGINT not null,
inicio DATE not null,
termino DATE,

CONSTRAINT fk_relTurmaProfessorIsF_turma
    FOREIGN KEY (idTurma)
    REFERENCES turmaOC(idTurma)
    ON DELETE CASCADE,

CONSTRAINT fk_relTurmaProfessorIsF_professor
    FOREIGN KEY (logon)
    REFERENCES professorIsF(logon)
    ON DELETE CASCADE,

CONSTRAINT pk_relTurmaProfessorIsF
    PRIMARY KEY (idTurma, logon, inicio)
);