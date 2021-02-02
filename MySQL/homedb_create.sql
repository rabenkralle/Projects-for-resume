DROP DATABASE IF EXISTS new_home;
CREATE DATABASE new_home;
USE new_home;

-- Создаем таблицу клиентов с основной информацией

DROP TABLE IF EXISTS clients;
CREATE TABLE clients (
	id SERIAL PRIMARY KEY, 
    firstname VARCHAR(50) COMMENT 'Имя', 
    surname VARCHAR(50) COMMENT 'Отчество',
    lastname VARCHAR(50) COMMENT 'Фамилия',
    email VARCHAR(120) UNIQUE,
    phone BIGINT UNIQUE,
    comments VARCHAR(255),
    INDEX users_phone_idx(phone),
    INDEX users_firstname_lastname_idx(firstname, lastname)
);

-- Создаем таблицу профилей с дополнительной информацией

DROP TABLE IF EXISTS `profiles`;
CREATE TABLE `profiles` (
	client_id SERIAL PRIMARY KEY,
    gender CHAR(1),
    birthday DATE,
    created_at DATETIME DEFAULT NOW(),
    FOREIGN KEY (client_id) REFERENCES clients(id) ON UPDATE CASCADE ON DELETE restrict
);

-- Создаем таблицу проектов

DROP TABLE IF EXISTS projects;
CREATE TABLE projects (
	id SERIAL PRIMARY KEY,
	name varchar(50)
);

-- Создаем таблицу домов

DROP TABLE IF EXISTS houses;
CREATE TABLE houses (
	id SERIAL PRIMARY KEY,
	name varchar(50),
	address varchar(255),
	floors bigint UNSIGNED NOT NULL,
	project_id bigint UNSIGNED NOT NULL,
	`status` ENUM('done', 'in progress', 'not started'),
	done_date DATE,
	INDEX (name),
	FOREIGN KEY (project_id) REFERENCES projects(id) ON UPDATE CASCADE ON DELETE restrict
);

-- Создаем таблицу квартир

DROP TABLE IF EXISTS apartments;
CREATE TABLE apartments (
	id SERIAL PRIMARY KEY,
	house_id BIGINT UNSIGNED,
	rooms int UNSIGNED NOT NULL,
	`floor` int UNSIGNED,
	description varchar(255),
	apart_num int UNIQUE,
	price decimal (11,2) UNSIGNED,
	`status` ENUM('sold', 'reserved', 'sale'),
	INDEX (house_id),
	INDEX (rooms),
	INDEX (`floor`),
	FOREIGN KEY (house_id) REFERENCES houses(id) ON UPDATE CASCADE ON DELETE restrict
);

-- Создаем таблицу квартир, которые сдаются в аренду

DROP TABLE IF EXISTS rent_apart;
CREATE TABLE rent_apart (
	id SERIAL PRIMARY KEY,
	apart_id bigint UNSIGNED NOT NULL,
	FOREIGN KEY (apart_id) REFERENCES apartments(id) ON UPDATE CASCADE ON DELETE restrict
);

-- Создаем таблицу скидок

DROP TABLE IF EXISTS discounts;
CREATE TABLE discounts (
	id SERIAL PRIMARY KEY,
	client_id bigint UNSIGNED NOT NULL,
	apart_id bigint UNSIGNED NOT NULL,
  	discount FLOAT UNSIGNED,
  	started_at DATETIME,
  	finished_at DATETIME,
  	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  	FOREIGN KEY (apart_id) REFERENCES apartments(id) ON UPDATE CASCADE ON DELETE RESTRICT,
  	FOREIGN KEY (client_id) REFERENCES clients(id) ON UPDATE CASCADE ON DELETE restrict
);

-- Создаем таблицу заказов

DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
	id SERIAL PRIMARY KEY,
	client_id bigint UNSIGNED NOT NULL,
	apart_id bigint UNSIGNED NOT NULL,
	total bigint UNSIGNED NOT NULL,
	`status` ENUM('requested', 'approved', 'declined'),
	requested_at DATETIME DEFAULT NOW(),
	confirmed_at DATETIME,
	FOREIGN KEY (client_id) REFERENCES clients(id) ON UPDATE CASCADE ON DELETE RESTRICT,
	FOREIGN KEY (apart_id) REFERENCES apartments(id) ON UPDATE CASCADE ON DELETE RESTRICT
);

-- Создаем таблицу типов медиа

DROP TABLE IF EXISTS media_types;
CREATE TABLE media_types(
	id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    created_at DATETIME DEFAULT NOW()
);

-- Создаем таблицу медиа для хранения медиафайлов

DROP TABLE IF EXISTS media;
CREATE TABLE media(
	id SERIAL PRIMARY KEY,
    media_type_id BIGINT UNSIGNED NOT NULL,
    apart_id BIGINT UNSIGNED NOT NULL,
  	body text,
    filename VARCHAR(255),
    `size` INT,
	metadata JSON,
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	INDEX (apart_id),
    FOREIGN KEY (apart_id) REFERENCES apartments(id),
    FOREIGN KEY (media_type_id) REFERENCES media_types(id)
);

-- Создаем таблицу фотоальбомов с привязкой к домам и квартирам

DROP TABLE IF EXISTS photo_albums;
CREATE TABLE photo_albums (
	id SERIAL PRIMARY KEY,
	name varchar(255),
	apart_id bigint UNSIGNED,
	house_id bigint UNSIGNED,
	FOREIGN KEY (apart_id) REFERENCES apartments(id) ON UPDATE CASCADE ON DELETE RESTRICT,
	FOREIGN KEY (house_id) REFERENCES houses(id) ON UPDATE CASCADE ON DELETE RESTRICT
);

-- Создаем таблицу альбомов планов

DROP TABLE IF EXISTS plans_albums;
CREATE TABLE plans_albums (
	id SERIAL PRIMARY KEY,
	name varchar(255),
	apart_id bigint UNSIGNED,
	house_id bigint UNSIGNED,
	FOREIGN KEY (apart_id) REFERENCES apartments(id) ON UPDATE CASCADE ON DELETE RESTRICT,
	FOREIGN KEY (house_id) REFERENCES houses(id) ON UPDATE CASCADE ON DELETE RESTRICT
);

-- Создаем таблицу фото

DROP TABLE IF EXISTS photos;
CREATE TABLE photos (
	id SERIAL PRIMARY KEY,
	ph_album_id BIGINT unsigned NOT NULL,
	media_id BIGINT unsigned NOT NULL,
	comment varchar(255),
	FOREIGN KEY (ph_album_id) REFERENCES photo_albums(id) ON UPDATE CASCADE ON DELETE RESTRICT,
	FOREIGN KEY (media_id) REFERENCES media(id)
);

-- Создаем таблицу планов

DROP TABLE IF EXISTS plans;
CREATE TABLE plans (
	id SERIAL PRIMARY KEY,
	pl_album_id BIGINT unsigned NOT NULL,
	media_id BIGINT unsigned NOT NULL,
	comment varchar(255),
	FOREIGN KEY (pl_album_id) REFERENCES plans_albums(id) ON UPDATE CASCADE ON DELETE RESTRICT,
	FOREIGN KEY (media_id) REFERENCES media(id)
	
);

-- Создаем таблицу цен на арендуемые квартиры

DROP TABLE IF EXISTS rent_prices;
CREATE TABLE rent_prices (
	id SERIAL PRIMARY KEY,
	rent_apart_id bigint UNSIGNED NOT NULL,
	price bigint UNSIGNED NOT NULL,
	FOREIGN KEY (rent_apart_id) REFERENCES rent_apart(id) ON UPDATE CASCADE ON DELETE restrict
);

-- Создаем таблицу заказов на аренду

DROP TABLE IF EXISTS rent_orders;
CREATE TABLE rent_orders (
	id SERIAL PRIMARY KEY,
	client_id bigint UNSIGNED NOT NULL,
	rent_apart_id BIGINT UNSIGNED NOT NULL,
	rent_price_id bigint UNSIGNED NOT NULL,
	`status` ENUM('requested', 'approved', 'declined'),
	rent_from DATE,
	rent_till DATE,
	requested_at DATETIME DEFAULT NOW(),
	confirmed_at DATETIME,
	FOREIGN KEY (rent_price_id) REFERENCES rent_prices(id) ON UPDATE CASCADE ON DELETE RESTRICT,
	FOREIGN KEY (rent_apart_id) REFERENCES rent_apart(id) ON UPDATE CASCADE ON DELETE RESTRICT,
	FOREIGN KEY (client_id) REFERENCES clients(id) ON UPDATE CASCADE ON DELETE restrict
	
);	