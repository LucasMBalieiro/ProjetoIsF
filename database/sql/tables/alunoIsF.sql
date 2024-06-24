create table alunoIsF(
    logonAlunoIsF varchar(100) unique,

    primary key (logonAlunoIsF),

    CONSTRAINT fk_logon
        FOREIGN KEY (logonAlunoIsF)
        REFERENCES usuario(logon)
        ON DELETE CASCADE
)