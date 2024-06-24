create table proeficienciaAlunoIsF(
    logonAlunoIsF varchar(100),
    idioma ENUM("Inglês", "Português", "Alemão", "Francês", "Italiano", "Espanhol", "Japonês") not null,
    nivel char(2),
    comprovanteProeficiencia TEXt,

    primary key (logonAlunoIsF, nivel),

    constraint fk_logonAlunoIsFCertificadoProficiencia
        foreign key (logonAlunoIsF)
        references AlunoIsF(logonAlunoIsF)
        on delete cascade
);