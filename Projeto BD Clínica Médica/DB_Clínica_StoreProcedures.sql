-- SCRIPT DE CRIAÇÃO DE STORED PROCEDURES

/*essa procedure tem como objetivo puxar os dados da tabela paciente de forma ordenada pelo parametro*/
delimiter //
CREATE PROCEDURE PacientesOrdenar (IN parametro1 VARCHAR(50), IN parametro2 BOOL)
BEGIN
  IF parametro1 <> '' THEN
		IF parametro2  THEN 
			SET @ordenar = concat('ORDER BY ', parametro1,' DESC');
		ELSE
			SET @ordenar = concat('ORDER BY ', parametro1);
		END IF;
  ELSE
    SET @game_order = '';
  END IF;

  SET @clausula = concat('SELECT * FROM paciente ', @ordenar);
  PREPARE runSQL FROM @clausula;
  EXECUTE runSQL;
  DEALLOCATE PREPARE runSQL;
END

// 
delimiter ;

call PacientesOrdenar('primeiro_nome', false); 


/*essa procedure tem como objetivo inserir um novo paciente na tabela paciente*/
DELIMITER //
CREATE PROCEDURE RegistrarNovoPaciente(
IN primeiro_nome TEXT(255),
IN ultimo_nome TEXT(255),
IN cpf VARCHAR(255),
IN cidade TEXT(255),
IN bairro VARCHAR(255),
IN rua VARCHAR(255),
IN CEP VARCHAR(255),
IN numero_casa VARCHAR(255),
IN telefone VARCHAR(15),
IN data_nascimento DATE,
IN id_medico INT)
  
BEGIN
    INSERT INTO paciente (primeiro_nome, ultimo_nome, cpf, cidade, bairro, rua, CEP, numero_casa, telefone, data_nascimento, id_medico)
    VALUES (primeiro_nome, ultimo_nome, cpf, cidade, bairro, rua, CEP, numero_casa, telefone, data_nascimento, id_medico);
END;
//
DELIMITER ;

CALL RegistrarNovoPaciente('Márcio','Duarte','85624165302','São Paulo', 'Pinheiros', 'Rua dos Pinheiros', '25661-050', '22', '963251221','1984-10-31', '3');
select * from paciente where primeiro_nome='Márcio';


