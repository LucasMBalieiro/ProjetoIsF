DELIMITER //

CREATE TRIGGER trg_calcularReprovados
BEFORE INSERT ON turmaoc
FOR EACH ROW
BEGIN 
	IF NEW.nInscritos < NEW.nConcluidos + NEW.nEvadidos THEN
		SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'A quantidade de inscritos não pode ser menor do que a quantidade de aprovados e evadidos';
	END IF;
    SET NEW.nReprovados = NEW.nInscritos - (NEW.nConcluidos + NEW.nEvadidos);
END;
//

DELIMITER ;

