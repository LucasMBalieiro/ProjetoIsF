create table proeficienciaAlunoIsF(
    idAluno serial,
    idioma ENUM("Inglês", "Português", "Alemão", "Francês", "Italiano", "Espanhol", "Japonês") not null,
    nivel char(2),
    comprovanteProeficiencia TEXt,

    primary key (idAluno, nivel),

    constraint fk_idAluno
        foreign key (idAluno)
        references AlunoIsF
        delete on cascade
);