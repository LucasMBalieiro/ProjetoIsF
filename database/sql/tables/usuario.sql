create table usuario(
    logon varchar(256), --Arrumar o tamanho
    nome varchar(256) not null,
    sobrenome varchar(256) not null,
    DDI int not null,
    DDD int not null,
    telefone int unique not null,
    raca int,
    genero int,
    ativo bit default 1,
    nomeEmail varchar(256) not null,
    dominio int not null,
    senha bit(256) not null,
    tipo int not null,

    primary key (logon)
);