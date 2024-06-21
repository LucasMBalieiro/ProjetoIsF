create table alunoIsFEstrangeiro(
    pais varchar(100),
    comprovante varchar(256),
    tipo varchar(256),
    codigo varchar(256),
    logonAlunoEstrangeiro varchar(256),

    PRIMARY KEY (logonAlunoEstrangeiro),
    UNIQUE (pais, comprovante, tipo, codigo),

    foreign key (logonAlunoEstrangeiro) references alunoIsF
        delete on cascade
);