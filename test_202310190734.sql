--
-- Скрипт сгенерирован Devart dbForge Studio 2020 for MySQL, Версия 9.0.470.0
-- Домашняя страница продукта: http://www.devart.com/ru/dbforge/mysql/studio
-- Дата скрипта: 19.10.2023 07:34:30
-- Версия сервера: 10.2.6
-- Версия клиента: 4.1
--

-- 
-- Отключение внешних ключей
-- 
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;

-- 
-- Установить режим SQL (SQL mode)
-- 
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 
-- Установка кодировки, с использованием которой клиент будет посылать запросы на сервер
--
SET NAMES 'utf8';

--
-- Установка базы данных по умолчанию
--
USE test;

--
-- Удалить таблицу `category`
--
DROP TABLE IF EXISTS category;

--
-- Удалить таблицу `income`
--
DROP TABLE IF EXISTS income;

--
-- Удалить таблицу `outcome`
--
DROP TABLE IF EXISTS outcome;

--
-- Удалить таблицу `product`
--
DROP TABLE IF EXISTS product;

--
-- Удалить таблицу `supplier`
--
DROP TABLE IF EXISTS supplier;

--
-- Установка базы данных по умолчанию
--
USE test;

--
-- Создать таблицу `supplier`
--
CREATE TABLE supplier (
  id int(11) NOT NULL AUTO_INCREMENT,
  title varchar(30) NOT NULL,
  phone varchar(20) NOT NULL,
  address varchar(255) NOT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB,
AUTO_INCREMENT = 4,
AVG_ROW_LENGTH = 5461,
CHARACTER SET utf8,
COLLATE utf8_general_ci;

--
-- Создать таблицу `product`
--
CREATE TABLE product (
  id int(11) NOT NULL,
  title varchar(30) NOT NULL,
  supplier_id int(11) NOT NULL,
  ctgry_id int(11) NOT NULL,
  unit varchar(255) NOT NULL,
  lifedays int(11) NOT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB,
AVG_ROW_LENGTH = 1489,
CHARACTER SET utf8,
COLLATE utf8_general_ci;

--
-- Создать таблицу `outcome`
--
CREATE TABLE outcome (
  id int(11) NOT NULL AUTO_INCREMENT,
  dt date NOT NULL,
  product_id int(11) NOT NULL,
  amount int(11) NOT NULL,
  price decimal(10, 2) NOT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB,
AUTO_INCREMENT = 41,
AVG_ROW_LENGTH = 1092,
CHARACTER SET utf8,
COLLATE utf8_general_ci;

--
-- Создать таблицу `income`
--
CREATE TABLE income (
  id int(11) NOT NULL AUTO_INCREMENT,
  dt date NOT NULL,
  product_id int(11) NOT NULL,
  amount int(11) NOT NULL,
  price decimal(10, 2) NOT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB,
AUTO_INCREMENT = 84,
AVG_ROW_LENGTH = 862,
CHARACTER SET utf8,
COLLATE utf8_general_ci;

--
-- Создать таблицу `category`
--
CREATE TABLE category (
  id int(11) NOT NULL AUTO_INCREMENT,
  title varchar(30) NOT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB,
AUTO_INCREMENT = 8,
AVG_ROW_LENGTH = 3276,
CHARACTER SET utf8,
COLLATE utf8_general_ci;

-- 
-- Вывод данных для таблицы supplier
--
INSERT INTO supplier VALUES
(1, 'ЗАО Комбинат "Огого"', '', ''),
(2, 'ООО "Сладкое"', '', ''),
(3, 'ИП Каримов А.Б.', '', '');

-- 
-- Вывод данных для таблицы product
--
INSERT INTO product VALUES
(1, 'Шоколад плиточный', 1, 4, 'шт', 90),
(2, 'Конфеты Карамель', 3, 4, 'кг', 90),
(3, 'Молоко', 2, 1, 'л', 2),
(4, 'Масло сливочное, упаковка', 2, 2, 'шт', 30),
(5, 'Масло растительное, бутылка', 3, 2, 'шт', 90),
(6, 'Масло сливочное, развесное', 1, 2, 'кг', 10),
(7, 'Мясо говяжье', 1, 3, 'кг', 5),
(8, 'кефир, упаковка', 1, 1, 'шт', 2),
(9, 'Хлеб', 2, 5, 'шт', 1),
(10, 'Батон', 3, 5, 'шт', 1),
(11, 'Сметана', 1, 1, 'шт', 2);

-- 
-- Вывод данных для таблицы outcome
--
INSERT INTO outcome VALUES
(26, '2011-06-12', 1, 10, 12.70),
(27, '2011-06-12', 3, 23, 3.49),
(28, '2011-06-12', 3, 34, 3.58),
(29, '2011-06-12', 4, 30, 10.35),
(30, '2011-06-12', 7, 20, 20.40),
(31, '2011-06-12', 4, 1, 11.29),
(32, '2011-06-12', 5, 20, 13.00),
(33, '2011-06-13', 6, 25, 18.20),
(34, '2011-06-18', 8, 20, 3.40),
(35, '2011-07-01', 11, 4, 5.50),
(36, '2011-06-12', 4, 23, 10.54),
(37, '2011-12-12', 6, 15, 22.00),
(38, '2011-12-12', 4, 25, 17.13),
(39, '2011-12-12', 2, 13, 30.00),
(40, '2011-12-13', 2, 1, 18.00);

-- 
-- Вывод данных для таблицы income
--
INSERT INTO income VALUES
(65, '2011-01-01', 1, 1000, 12.50),
(66, '2011-02-02', 3, 200, 4.97),
(67, '2011-03-12', 4, 164, 10.00),
(68, '2011-06-11', 7, 200, 20.00),
(69, '2011-06-11', 5, 299, 12.35),
(70, '2011-06-12', 1, 300, 12.40),
(71, '2011-06-12', 7, 100, 19.50),
(72, '2011-06-12', 2, 100, 15.75),
(73, '2011-06-12', 5, 3064, 11.80),
(74, '2011-06-12', 6, 264, 17.90),
(75, '2011-06-12', 3, 150, 4.97),
(76, '2011-06-13', 3, 150, 4.97),
(77, '2011-06-13', 10, 100, 4.20),
(78, '2011-06-14', 9, 100, 2.95),
(79, '2011-06-14', 10, 130, 4.20),
(80, '2011-06-14', 9, 110, 2.95),
(81, '2011-06-18', 8, 155, 3.10),
(82, '2011-06-19', 8, 450, 3.10),
(83, '2011-06-11', 5, 599, 12.35);

-- 
-- Вывод данных для таблицы category
--
INSERT INTO category VALUES
(1, 'Молочные продукты'),
(2, 'Масло, жир'),
(3, 'Мясо'),
(4, 'Кондитерские изделия'),
(7, 'TestCategory');

-- 
-- Восстановить предыдущий режим SQL (SQL mode)
--
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

-- 
-- Включение внешних ключей
-- 
/*!40014 SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS */;