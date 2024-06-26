CREATE TABLE professorIsF_IdiomaCredenciado(
    idioma ENUM("Inglês", "Português", "Alemão", "Francês", "Italiano", "Espanhol", "Japonês") not null,
    nivel CHAR(2),
    inicio DATE not null,
    fim DATE,
    comprovante TEXT not null,
    validade DATE not null,

    logon varchar(100),

    CONSTRAINT fk_professorIsF_IdiomaCredenciado
        FOREIGN KEY (logon)
        REFERENCES professorIsF(logon)
        ON DELETE CASCADE,
    
    CONSTRAINT pk_professorIsF_IdiomaCredenciado
        PRIMARY KEY (logon, idioma, nivel)

    
);


--Precisa disso tudo na PK? 
-- Acho que da pra deixar só o logon, idioma e nivel
