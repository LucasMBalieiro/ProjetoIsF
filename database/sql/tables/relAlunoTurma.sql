create table relAlunoTurma(
    idAluno serial,
    idTurma serial,
    status boolean,

    CONSTRAINT fk_relAlunoTurma_aluno
        FOREIGN KEY (idAluno)
        REFERENCES AlunoIsF
        ON DELETE CASCADE,

    CONSTRAINT fk_relAlunoTurma_turma
        FOREIGN KEY (idTurma)
        REFERENCES turmaOC
        ON DELETE CASCADE,
    
    CONSTRAINT pk_relAlunoTurma
        PRIMARY KEY (idAluno, idTurma)
)