CREATE TABLE professorIsF(

    logon varchar(100) unique,
    poca TEXT,
    inicio DATE NOT NULL,
    fim DATE,

    CONSTRAINT fk_professorIsF
        FOREIGN KEY (logon)
        REFERENCES usuario(logon)
        ON DELETE CASCADE,
    
    CONSTRAINT pk_professorIsF
        PRIMARY KEY (logon, inicio)
);