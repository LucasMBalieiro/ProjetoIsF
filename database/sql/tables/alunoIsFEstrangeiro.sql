create table alunoIsFEstrangeiro(
    pais varchar(100),
    comprovante varchar(256),
    tipo varchar(20),
    codigo varchar(30),
    logonAlunoEstrangeiro varchar(100),

    PRIMARY KEY (logonAlunoEstrangeiro),
    UNIQUE (pais, comprovante, tipo, codigo),

    constraint fk_logonAlunoEstrangeiro
        foreign key (logonAlunoEstrangeiro) 
        references alunoIsF(logonAlunoIsF)
        on delete cascade
);