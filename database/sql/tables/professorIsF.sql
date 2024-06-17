CREATE TABLE professorIsF(

    logon INT,
    idProfessor SERIAL,
    poca TEXT,
    inicio DATE NOT NULL,
    fim DATE,

    CONSTRAINT fk_professorIsF
        FOREIGN KEY (logon)
        REFERENCES usuario
        ON DELETE CASCADE,
    
    CONSTRAINT pk_professorIsF
        PRIMARY KEY (logon, idProfessor)
);