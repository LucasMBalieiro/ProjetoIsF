create table turmaDataHora(
    duracao TIME, 
    hora TIME, 
    diaSemana TINYINT, 
    idTurma serial, 

    CONSTRAINT fk_turmaDataHora
        FOREIGN KEY (idTurma)
        REFERENCES turmaOC
        ON DELETE CASCADE,
    
    CONSTRAINT pk_turmaDataHora
        PRIMARY KEY (duracao, hora, diaSemana, idTurma)
)