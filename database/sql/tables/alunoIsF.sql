create table alunoIsF(
    idAluno serial,
    login char(256) unique,

    primary key (idAluno).

    CONSTRAINT fk_login
        FOREIGN KEY (login)
        REFERENCES usuario
        ON DELETE CASCADE
)