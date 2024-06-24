create table periodoDesistenciaAlunoIsf(
    logon varchar(100),
    editalDesistencia varchar(6),

    primary key (logon),

    CONSTRAINT fk_logonAlunoIsFPeriodoDesistencia
        FOREIGN KEY (logon)
        REFERENCES alunoIsF(logonAlunoIsF)
        ON DELETE CASCADE
);