CREATE TABLE relProfessorIsFInstituicao(

    logon varchar(100),
    idInstituicao BIGINT NOT NULL AUTO_INCREMENT,
    inicio DATE not null,
    termino DATE,
    comprovanteMatricula TEXT,

    CONSTRAINT fk_logonProfessorIsFRelacionadoInstituicao
    FOREIGN KEY (logon)
    REFERENCES professorIsF(logon)
    ON DELETE CASCADE,

    CONSTRAINT fk_InstituicaoRelacionadaProfessorIsF
    FOREIGN KEY (idInstituicao)
    REFERENCES instituicaoensino(idInstituicao)
    ON DELETE CASCADE,

    CONSTRAINT pk_relProfessorIsFInstituicao
    PRIMARY KEY (logon, idInstituicao, inicio)
);