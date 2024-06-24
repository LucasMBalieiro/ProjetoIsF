create table usuario(
    logon varchar(40), 
    nome varchar(30) not null,
    sobrenome varchar(30) not null,
    DDI int not null,
    DDD int not null,
    telefone int unique not null,
    raca int,
    genero int,
    ativo bit default 1,
    nomeEmail varchar(40) not null,
    dominio int not null,
    senha bit(64) not null,
    tipo int not null,

    primary key (logon)
);