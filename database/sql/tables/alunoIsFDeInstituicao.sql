create table alunoIsFDeInstituicao(
    nDocumento varchar(20),
    cargo int,
    areaAtuacao int,
    logonAlunoDeInstituicao varchar(256),

    primary key (nDocumento),

    constraint fk_logonAlunoDeInstituicao   
        foreign key (logonAlunoDeInstituicao)
        references alunoIsF
        delete on cascade
);