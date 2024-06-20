create table comprovanteAlunoInstituicao(
    numeroDocumento varchar(20),
    idInstituicao serial,
    inicio date not null,
    termino date,
    comprovante TEXT,

    primary key (nDocumento, idInstituicao),

    constraint fk_nDocumento
        foreign key (nDocumento)
        references alunoIsFDeInstituicao,

    constraint fk_idInstituicao
        foreign key (idInstituicao)
        references instituicaoEnsino
);