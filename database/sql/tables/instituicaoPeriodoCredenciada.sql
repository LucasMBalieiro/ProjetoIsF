create table instituicaoPeriodoCredenciada(
    idInstituicao BIGINT NOT NULL AUTO_INCREMENT,
    inicio date not null,
    termino date,
    status boolean,

    CONSTRAINT fk_instituicao
        FOREIGN KEY (idInstituicao)
        REFERENCES instituicaoEnsino(idInstituicao)
        ON DELETE CASCADE,
    
    CONSTRAINT pk_instituicaoPeridoCredenciada
        PRIMARY KEY (idInstituicao, inicio)
)

-- mesma coisa do instituicaoPeriodoAtivoPeridoCredenciada

DELIMITER //

CREATE TRIGGER tgr_verificaDatas 
BEFORE INSERT ON instituicaoperidocredenciada
FOR EACH ROW
BEGIN 
    IF NEW.inicio > CURDATE() THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'A data de início deve ser uma data anterior à data atual';
    END IF;
END;
//

DELIMITER ;

-- mesma coisa do instituicaoPeriodoAtivo