create table comprovanteAlunoInstituicao(
    logon varchar(100),
    idInstituicao BIGINT NOT NULL AUTO_INCREMENT,
    inicio date not null,
    termino date,
    comprovante TEXT,

    primary key (logon, idInstituicao, inicio),

    constraint fk_logonAlunoDeInstituicao
        foreign key (logon)
        references alunoIsFDeInstituicao(logonAlunoDeInstituicao),

    constraint fk_idInstituicao
        foreign key (idInstituicao)
        references instituicaoEnsino(idInstituicao)
);