USE netflix;

DELIMITER $$
USE `netflix`$$

CREATE PROCEDURE `IdiomaInsert_Update` (
  IN _id INT,
  IN _name VARCHAR(45)
)
BEGIN 
  IF _id = 0 THEN
    INSERT INTO idioma (name)
    VALUES (_name);

    SET _id = LAST_INSERT_ID();
  ELSE
    UPDATE idioma
    SET
    name = _name
    WHERE id = _id;
  END IF;

  SELECT _id AS 'id';
END