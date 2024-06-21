create table alunoIsFDeInstituicao(
    nDocumento varchar(20),
    cargo int,
    areaAtuacao int,
    logonAlunoDeInstituicao varchar(256),

    primary key (nDocumento),

    foreign key (logonAlunoDeInstituicao) references alunoIsF(logonAlunoIsF) on delete cascade
);