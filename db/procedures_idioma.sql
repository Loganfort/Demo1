USE netflix;

DELIMITER $$
USE `netflix`$$

CREATE PROCEDURE `PeliculaInsert_Update` (
  IN _id INT,
  IN _name VARCHAR(45),
  IN _des VARCHAR(700),
  IN _CodGenero int,
  IN _Codidioma int
)
BEGIN 
  IF _id = 0 THEN
    INSERT INTO pelicula (name, des,CodGenero,Codidioma)
    VALUES (_name, _des, _CodGenero, _Codidioma);

    SET _id = LAST_INSERT_ID();
  ELSE
    UPDATE pelicula
    SET
    name = _name,
    des = _des,
    CodGenero=_CodGenero,
    Codidioma=_Codidioma
    WHERE id = _id;
  END IF;

  SELECT _id AS 'id';
END