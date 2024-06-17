create table periodoDesistenciaAlunoIsf(
    idAluno serial,
    editalDesistencia varchar(6),

    primary key (idAluno),

    CONSTRAINT fk_idAluno
        FOREIGN KEY (idAluno)
        REFERENCES alunoIsF
        ON DELETE CASCADE
);