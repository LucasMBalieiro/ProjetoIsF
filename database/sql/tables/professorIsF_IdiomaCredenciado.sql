CREATE TABLE professorIsF_IdiomaCredenciado(

    idProfessor INT,
    idioma VARCHAR(32),
    nivel CHAR(2),
    inicio DATE,
    fim DATE,
    comprovante TEXT,
    validade DATE,

    CONSTRAINT fk_professorIsF_IdiomaCredenciado
        FOREIGN KEY (idProfessor)
        REFERENCES professorIsF
        ON DELETE CASCADE,
    
    CONSTRAINT pk_professorIsF_IdiomaCredenciado
        PRIMARY KEY (idProfessor, idioma, nivel, inicio, comprovante) --Precisa disso tudo na PK?
);
