USE new_home;

delimiter //

-- Процедура для поздравления клиента с Днем Рождения

DROP PROCEDURE IF EXISTS birthday//
CREATE PROCEDURE birthday ()
BEGIN
	SELECT 
		'Поздравьте клиента',
		c.id,
		concat(c.firstname, ' ', c.surname, ' ', c.lastname) AS client,
		p.birthday,
		c.email,
		c.phone 
	FROM clients c
		JOIN new_home.profiles p ON p.client_id = c.id
	WHERE MONTH(p.birthday) = MONTH(now()) AND DAY(p.birthday) = DAY(now());
END//

CALL birthday ()//

delimiter ;


delimiter //

-- Процедура поиска свободных для аренды квартир на определенный период

DROP PROCEDURE IF EXISTS rent_apart_free//
CREATE PROCEDURE rent_apart_free (rent_start date, rent_end date)
BEGIN 
	SELECT 
		ra.apart_id AS apart_id,
		a.apart_num AS apart_num,
		rp.price AS price,
		ro.rent_from,
		ro.rent_till 
	FROM rent_apart ra 
		JOIN rent_prices rp ON rp.rent_apart_id = ra.id
		JOIN apartments a ON ra.apart_id = a.id
		JOIN rent_orders ro ON ro.rent_apart_id = ra.id
	WHERE  ((rent_start NOT BETWEEN ro.rent_from AND ro.rent_till) 
		AND (rent_end NOT BETWEEN ro.rent_from AND ro.rent_till)) AND 
		((ro.rent_from NOT BETWEEN rent_start AND rent_end) 
		AND (ro.rent_till NOT BETWEEN rent_start AND rent_end))
	ORDER BY ro.rent_from;
END//

CALL rent_apart_free('2020-06-15', '2020-07-08')//

delimiter ;

