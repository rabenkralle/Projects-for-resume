USE new_home;

-- Представление поиска квартир в диапазонах комнат и этажей

CREATE OR REPLACE VIEW show_apart AS
	SELECT
		a.id AS apart_id,
		p.name AS project,
		h.name AS house,
		a.`floor` AS `floor`,
		a.rooms AS rooms,
		a.price AS price,
		a.status AS status
	FROM apartments a
		JOIN houses h ON a.house_id = h.id
		JOIN projects p ON h.project_id = p.id;
	

SELECT * FROM show_apart sa WHERE sa.rooms > 1 AND (sa.`floor` > 1 AND sa.`floor` < 4);

-- Поиск квартир на аренду по количеству комнат

CREATE OR REPLACE VIEW show_rent_apart AS
	SELECT 
		ra.id AS apart_id,
		a.`floor`,
		a.rooms,
		h.name AS house_name,
		rp.price AS rent_price
	FROM rent_apart ra 
		JOIN apartments a ON ra.apart_id = a.id
		JOIN houses h ON a.house_id = h.id 
		JOIN rent_prices rp ON ra.apart_id = rp.rent_apart_id 
	;

SELECT * FROM show_rent_apart sra WHERE sra.rooms > 1;

-- Представление фотографий определенных квартир

CREATE OR REPLACE VIEW show_apart_photos AS
	SELECT 
		a.id AS apart_id,
		media.filename,
		photos.id AS photo
	FROM apartments a 
		JOIN media ON a.id = media.apart_id
		JOIN photos ON media.id = photos.media_id
	;

SELECT * FROM show_apart_photos sap WHERE sap.apart_id = 2;

-- Представление для поиска планов определенных квартир

CREATE OR REPLACE VIEW show_apart_plans AS
	SELECT 
		a.id AS apart_id,
		media.filename,
		plans_albums.name AS plan_album,
		plans.id AS plan
	FROM apartments a 
		JOIN media ON a.id = media.apart_id
		JOIN plans ON media.id = plans.media_id
		JOIN plans_albums ON a.id = plans_albums.apart_id
	WHERE a.id = 2;

SELECT * FROM show_apart_plans;

-- Представление выборки заказов со статусом 'requested'

CREATE OR REPLACE VIEW show_orders_request AS
SELECT 
	concat(c.firstname, ' ', c.surname,' ', c.lastname) AS client,
	o.apart_id,
	o.requested_at,
	o.confirmed_at,
	o.status,
	o.total,
	d.discount,
	d.started_at,
	d.finished_at
FROM orders o
	JOIN clients c ON o.client_id = c.id 
	JOIN discounts d ON o.apart_id = d.apart_id 
WHERE o.status = 'requested';

SELECT * FROM show_orders_request;

-- Подсчет зарезервированных квартир сгруппированных по количеству комнат

SELECT 
	count(*) AS 'resreved apartments',
	a.rooms 
FROM apartments a 
WHERE a.status = 'reserved'
GROUP BY a.rooms
ORDER BY a.rooms;
