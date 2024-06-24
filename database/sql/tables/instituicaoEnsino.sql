create table instituicaoEnsino(
    idInstituicao serial,
    nome varchar(256) unique,
    documentoVinculo TEXT,

    primary key (idInstituicao)
);