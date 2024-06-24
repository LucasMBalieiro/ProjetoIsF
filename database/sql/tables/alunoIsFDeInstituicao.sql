create table alunoIsFDeInstituicao(
    nDocumento varchar(20),
    cargo int,
    areaAtuacao int,
    logonAlunoDeInstituicao varchar(100),

    primary key (nDocumento),

    constraint fk_logonAlunoIsF foreign key (logonAlunoDeInstituicao) references alunoIsF(logonAlunoIsF) on delete cascade
);