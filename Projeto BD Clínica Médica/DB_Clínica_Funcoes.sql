-- - Script de criação de funções 

-- - Cálculo da idade dos pacientes - -- 
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


-- - Contar número de pacientes por médico

DELIMITER //
CREATE FUNCTION PacientePorMedico(medico INT) 
RETURNS INT
READS SQL DATA
BEGIN
    DECLARE numPacientes INT;
    SELECT COUNT(*) INTO numPacientes
    FROM paciente
    WHERE id_medico = medico;
    RETURN numPacientes;
END;
//
DELIMITER ;

select PacientePorMedico(), primeiro_nome
from medico;
