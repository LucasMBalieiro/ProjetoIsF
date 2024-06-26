CREATE TABLE alunoGraduacao(

    logon varchar(100),

    constraint fk_logonAlunoGraduacao
        FOREIGN KEY (logon) REFERENCES professorIsF(logon)
        on delete cascade,

    constraint pk_logonAlunoGraduacao
        PRIMARY KEY (logon)
);

