USE videoclub;
DROP FUNCTION IF EXISTS Ex11;

DELIMITER //
CREATE FUNCTION Ex11(Peli SMALLINT UNSIGNED)
       RETURNS SMALLINT UNSIGNED
       DETERMINISTIC
BEGIN
   DECLARE Visualitzats SMALLINT UNSIGNED;

   SELECT   COUNT(*)
        INTO Visualitzats
   FROM     PRESTECS
   WHERE    id_peli = Peli;

   RETURN Visualitzats;
END//
DELIMITER ;
-- SELECT
  SELECT  titol_peli Titol, act11(1) "Quantitat exemplars"
   FROM    PELLICULES
   WHERE   id_peli = 1;

