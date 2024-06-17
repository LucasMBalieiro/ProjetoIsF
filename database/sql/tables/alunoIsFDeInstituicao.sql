create table alunoIsFDeInstituicao(
    nDocumento varchar(20),
    cargo int,
    areaAtuacao int,
    idAluno serial,

    primary key (nDocumento),

    constraint fk_idAluno   
        foreign key (idAluno)
        references alunoIsF
        delete on cascade
);