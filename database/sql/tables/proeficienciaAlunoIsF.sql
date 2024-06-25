create table proeficienciaAlunoIsF(
    logonAlunoIsF varchar(100),
    idioma ENUM("Inglês", "Português", "Alemão", "Francês", "Italiano", "Espanhol", "Japonês") not null,
    nivel char(2),
    comprovanteProeficiencia TEXt,

    constraint pk_proficienciaAlunoIsF 
        primary key (logonAlunoIsF, nivel, idioma),

    constraint fk_logonAlunoIsFCertificadoProficiencia
        foreign key (logonAlunoIsF)
        references AlunoIsF(logonAlunoIsF)
        on delete cascade
);