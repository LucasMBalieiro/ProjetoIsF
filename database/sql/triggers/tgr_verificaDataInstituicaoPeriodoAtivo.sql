DELIMITER //

CREATE TRIGGER tgr_verificaDataInstituicaoPeriodoAtivo
BEFORE INSERT ON instituicaoperiodoativo
FOR EACH ROW
BEGIN 
    IF NEW.inicio > CURDATE() THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'A data de início deve ser uma data anterior à data atual';
    END IF;
    IF NEW.termino > NEW.inicio THEN
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'A data de fim deve ser anterior à data de início.';
	END IF;
END;
//

DELIMITER ;
