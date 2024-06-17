CREATE TABLE relTurmaProfessorIsF(

idProfessor INT,
idTurma INT,
inicio DATE,
termino DATE,

CONSTRAINT fk_relTurmaProfessorIsF_turma
    FOREIGN KEY (idTurma)
    REFERENCES turmaOC
    ON DELETE CASCADE,

CONSTRAINT fk_relTurmaProfessorIsF_professor
    FOREIGN KEY (idProfessor)
    REFERENCES professorIsF
    ON DELETE CASCADE,

CONSTRAINT pk_relTurmaProfessorIsF
    PRIMARY KEY (idTurma, idProfessor, inicio)
);