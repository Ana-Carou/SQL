-- -CRIAÇÃO DE TRIGGERS

-- Verifica se o exame já foi solicitado ao paciente

DELIMITER //

CREATE TRIGGER verificar_exame_existente
BEFORE INSERT ON ficha_do_paciente
FOR EACH ROW
BEGIN
    DECLARE exame_existente INT;
    -- contando a quantidade de exames existem com esse id
    SELECT COUNT(*) INTO exame_existente FROM ficha_do_paciente WHERE id_exames = NEW.id_exames;
    -- se existir algum exame com esse numero....
    IF exame_existente > 0 THEN
	-- retorne erro, pois exame ja solicitado
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Exame já solicitado';
    END IF;
END;

//

DELIMITER ;




-- Armazenar a mudança de médico do paciente na tabela medico_paciente_update

/*criação da tabela de histórico*/
CREATE TABLE medico_paciente_update (
codigo_update INT AUTO_INCREMENT PRIMARY KEY,
medico_anterior VARCHAR (100),
medico_atual VARCHAR (100),
id_paciente INT,
primeiro_nome TEXT(255) NOT NULL,
ultimo_nome TEXT(255) NOT NULL
);


DELIMITER //

CREATE TRIGGER tg_update_medico /*criar gatilho para...*/
AFTER UPDATE ON paciente /*...depois do update na tabela paciente*/
FOR EACH ROW
BEGIN
/*inserir na tabela de histórico o id do médico anterior, o id do médico atual e alguns dados do paciente*/
   INSERT INTO medico_paciente_update(medico_anterior, medico_atual, id_paciente, primeiro_nome, ultimo_nome)
/*definição dos valores, se antigos ou novos para cada campo que existe na tabela de histórico*/   
   VALUES (OLD.id_medico, NEW.id_medico, OLD.id_paciente, OLD.primeiro_nome, OLD.ultimo_nome);
      END;
   
   //

DELIMITER ;




