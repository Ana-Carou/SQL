-- - Script de criação de funções
 
DELIMITER //
CREATE FUNCTION fn_idade_paciente(data_nascimento DATE) 
RETURNS INT
NO SQL
BEGIN
    DECLARE idade INT;
    SELECT TIMESTAMPDIFF(YEAR, data_nascimento, CURDATE()) INTO idade;
    RETURN idade;
END;
//
DELIMITER ;

SELECT concat(primeiro_nome, ' ', ultimo_nome) as paciente, fn_idade_paciente(data_nascimento) as idade 
FROM paciente;