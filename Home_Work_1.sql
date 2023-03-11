-- 1. Создайте таблицу с мобильными телефонами, используя графический интерфейс. Необходимые поля таблицы: product_name (название товара), 
-- manufacturer (производитель), product_count (количество), price (цена). Заполните БД произвольными данными.

CREATE SCHEMA `home_work_1` ;
CREATE TABLE `home_work_1`.`mobile_phones_table` (
  `id_product` INT NOT NULL,
  `product_name` VARCHAR(25) NOT NULL,
  `manufacturer` VARCHAR(25) NOT NULL,
  `product_count` INT NOT NULL,
  `price` INT NOT NULL,
  PRIMARY KEY (`id_product`));
ALTER TABLE `home_work_1`.`mobile_phones_table` 
CHANGE COLUMN `id_product` `id_product` INT NOT NULL AUTO_INCREMENT ;
INSERT INTO `home_work_1`.`mobile_phones_table` (`id_product`, `product_name`, `manufacturer`, `product_count`, `price`) VALUES ('1', 'iPhone_14_Pro', 'Apple', '2', '140000');
INSERT INTO `home_work_1`.`mobile_phones_table` (`product_name`, `manufacturer`, `product_count`, `price`) VALUES ('iPhone_13', 'Apple', '3', '100000');
INSERT INTO `home_work_1`.`mobile_phones_table` (`product_name`, `manufacturer`, `product_count`, `price`) VALUES ('Galaxy_S23_ultra', 'Samsung', '4', '110000');
INSERT INTO `home_work_1`.`mobile_phones_table` (`product_name`, `manufacturer`, `product_count`, `price`) VALUES ('Galaxy M53 5G', 'Samsung', '5', '35000');
INSERT INTO `home_work_1`.`mobile_phones_table` (`product_name`, `manufacturer`, `product_count`, `price`) VALUES ('13_Lite_8', 'Xiaomi', '8', '42000');
INSERT INTO `home_work_1`.`mobile_phones_table` (`product_name`, `manufacturer`, `product_count`, `price`) VALUES ('Redmi Note 11 Pro+', 'Xiaomi', '7', '38000');

-- 2. Напишите SELECT-запрос, который выводит название товара, производителя и цену для товаров, количество которых превышает 2

USE home_work_1;
SELECT product_name, manufacturer, price 
FROM mobile_phones_table
WHERE product_count > 2;

-- 3. Выведите SELECT-запросом весь ассортимент товаров марки “Samsung”

USE home_work_1;
SELECT *
FROM mobile_phones_table
WHERE manufacturer = 'Samsung';

-- 4. * С помощью SELECT-запроса с оператором LIKE / REGEXP найти:
-- 4.1.* Товары, в которых есть упоминание "Iphone"--

-- LIKE
USE home_work_1;
SELECT * 
FROM mobile_phones_table
WHERE product_name LIKE '%iPhone%';

-- REGEXP

USE home_work_1;
SELECT * 
FROM mobile_phones_table
WHERE product_name REGEXP 'iPhone';

-- 4.2.* Товары, в которых есть упоминание "Samsung"

-- LIKE
USE home_work_1;
SELECT * 
FROM mobile_phones_table
WHERE product_name LIKE '%Samsung%';

-- REGEXP

USE home_work_1;
SELECT * 
FROM mobile_phones_table
WHERE product_name REGEXP 'Samsung';

-- 4.3.* Товары, в названии которых есть ЦИФРЫ

USE home_work_1;
SELECT * 
FROM mobile_phones_table
WHERE product_name REGEXP '[0-9]';

-- 4.4.* Товары, в названии которых есть ЦИФРА "8"


-- LIKE
USE home_work_1;
SELECT * 
FROM mobile_phones_table
WHERE product_name LIKE '%8%';

-- REGEXP

USE home_work_1;
SELECT * 
FROM mobile_phones_table
WHERE product_name REGEXP '8';

