create table relAlunoTurma(
    logon varchar(100),
    idTurma BIGINT not null,
    status enum('aprovado', 'evadido', 'reprovado', 'em andamento') default 'em andamento'

    CONSTRAINT fk_relAlunoTurma_aluno
        FOREIGN KEY (logon)
        REFERENCES AlunoIsF(logonAlunoIsF)
        ON DELETE CASCADE,

    CONSTRAINT fk_relAlunoTurma_turma
        FOREIGN KEY (idTurma)
        REFERENCES turmaOC(idTurma)
        ON DELETE CASCADE,
    
    CONSTRAINT pk_relAlunoTurma
        PRIMARY KEY (logon, idTurma)
)