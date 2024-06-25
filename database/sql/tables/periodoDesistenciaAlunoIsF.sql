create table periodoDesistenciaAlunoIsf(
    logon varchar(100),
    editalDesistencia varchar(6),

    CONSTRAINT pk_periodoDesistenciaAlunoIsF primary key (logon, editalDesistencia),

    CONSTRAINT fk_logonAlunoIsFPeriodoDesistencia
        FOREIGN KEY (logon)
        REFERENCES alunoIsF(logonAlunoIsF)
        ON DELETE CASCADE
);