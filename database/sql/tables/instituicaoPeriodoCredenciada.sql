create table instituicaoPeridoCredenciada(
    idInstituicao serial,
    inicio date not null,
    termino date,
    status boolean,

    CONSTRAINT fk_instituicaoPeridoCredenciada
        FOREIGN KEY (idInstituicao)
        REFERENCES instituicaoEnsino(idInstituicao)
        ON DELETE CASCADE,
    
    CONSTRAINT pk_instituicaoPeridoCredenciada
        PRIMARY KEY (idInstituicao, inicio)
)

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