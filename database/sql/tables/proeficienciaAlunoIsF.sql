create table proeficienciaAlunoIsF(
    idAluno serial,
    nivel int,
    comprovanteProeficiencia TEXt,

    primary key (idAluno, nivel),

    constraint fk_idAluno
        foreign key (idAluno)
        references AlunoIsF
        delete on cascade
);