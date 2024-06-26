CREATE TABLE cursistaEspecializacao(

    logon VARCHAR(100),

    CONSTRAINT
        FOREIGN KEY (logon) REFERENCES professorIsF(logon)
        on delete cascade,
    
    CONSTRAINT 
        PRIMARY KEY(logon)
);