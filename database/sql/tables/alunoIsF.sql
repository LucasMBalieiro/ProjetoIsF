create table alunoIsF(
    logonAlunoIsF varchar(256) unique,

    primary key (logonAlunoIsF),

    CONSTRAINT fk_logon
        FOREIGN KEY (logon)
        REFERENCES usuario
        ON DELETE CASCADE
)