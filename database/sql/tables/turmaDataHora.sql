create table turmaDataHora(
    duracao char(1) not null, 
    hora char(5) not null, 
    diaSemana enum('segunda', 'terca', 'quarta', 'quinta', 'sexta', 'sabado') not null,

    idTurma bigint not null, 

    CONSTRAINT fk_turmaDataHora
        FOREIGN KEY (idTurma)
        REFERENCES turmaOC(idTurma)
        ON DELETE CASCADE,
    
    CONSTRAINT pk_turmaDataHora
        PRIMARY KEY (hora, diaSemana, idTurma)
)