create table instituicaoEnsino(
    idInstituicao BIGINT NOT NULL AUTO_INCREMENT,
    nome varchar(256) unique,
    documentoVinculo TEXT,

    primary key (idInstituicao)
);