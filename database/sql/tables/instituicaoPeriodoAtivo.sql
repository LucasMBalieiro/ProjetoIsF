create table instituicaoPeriodoAtivo(
    idInstituicao BIGINT NOT NULL AUTO_INCREMENT ,
    inicio date not null,
    termino date,
    status boolean,

    CONSTRAINT fk_instituicaoPeridoAtivo
        FOREIGN KEY (idInstituicao)
        REFERENCES instituicaoEnsino(idInstituicao)
        ON DELETE CASCADE,
    
    CONSTRAINT pk_instituicaoPeridoAtivo
        PRIMARY KEY (idInstituicao, inicio)
)

-- precisa ter o id da instituicao na chave, e se a gente só vai preencher o termino quando ela sair, então quando ela estiver ativa esse valor vai ser null, e chave não pode ser null