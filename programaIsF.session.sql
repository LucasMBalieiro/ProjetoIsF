create table alunoIsF(
    logonAlunoIsF varchar(256) PRIMARY KEY,

    CONSTRAINT fk_logon
        FOREIGN KEY (logonAlunoIsF)
        REFERENCES usuario(logon)
        ON DELETE CASCADE
)