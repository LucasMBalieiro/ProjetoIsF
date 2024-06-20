create table alunoIsFEstrangeiro(
    pais varchar(256),
    comprovante varchar(256),
    tipo varchar(256),
    codigo varchar(256),
    logonAlunoEstrangeiro varchar(256),

    primary key (pais, comprovante, tipo, codigo).

    constraint fk_logonAlunoEstrangeiro   
        foreign key (logonAlunoEstrangeiro)
        references alunoIsF
        delete on cascade
);