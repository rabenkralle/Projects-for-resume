delimiter //

DROP PROCEDURE IF EXISTS insert_to_rent_orders//
CREATE PROCEDURE insert_to_rent_orders  (IN client_id bigint, IN id bigint, IN rent_apart_id bigint, IN rent_price_id bigint
	IN rent_from date, IN rent_till date)
BEGIN
  DECLARE CONTINUE HANDLER FOR SQLSTATE '23000' SET @error = 'Ошибка вставки значения';
  INSERT INTO rent_orders VALUES(client_id, id, rent_apart_id, rent_price_id, st, rent_from, rent_till);
  IF rent_from > rent_till THEN
	SELECT @error;
  END IF;
END//

-- SELECT * FROM insert_to_rent_orders//

CALL insert_to_rent_orders ('15','21', '2',  '2020-06-15', '2020-07-08')//

