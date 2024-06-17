CREATE TABLE relProfessorIsFInstituicao(

    idProfessor INT,
    idInstituicao INT,
    inicio DATE,
    termino DATE,
    comprovanteMatricula TEXT,

    CONSTRAINT fk_relProfessorIsFInstituicao
    FOREIGN KEY (idProfessor)
    REFERENCES professorIsF
    ON DELETE CASCADE,

    CONSTRAINT pk_relProfessorIsFInstituicao
    PRIMARY KEY (idProfessor, idInstituicao, inicio, comprovanteMatricula) --Precisa disso tudo na PK?
);