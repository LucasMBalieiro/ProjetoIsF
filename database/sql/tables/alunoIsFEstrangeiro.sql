create table alunoIsFEstrangeiro(
    pais varchar(256),
    comprovante TEXT,
    tipo varchar(256),
    codigo varchar(256),
    idAluno serial,

    primary key (pais, comprovante, tipo, codigo).

    constraint fk_idAluno   
        foreign key (idAluno)
        references alunoIsF
        delete on cascade
);