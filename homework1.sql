/*Создайте таблицу с мобильными телефонами, 
используя графический интерфейс. Заполните БД данными
% - любое количество символов
_ - один символ
*/

CREATE DATABASE Mobilphone;
USE Mobilphone;
CREATE TABLE phone
(
id INT PRIMARY KEY NOT NULL,
ProductName VARCHAR(30) NOT NULL,
Manufacturer VARCHAR(30) NOT NULL,
ProductCount INT,
Price INT
);

SELECT * FROM phone;

INSERT phone(id, ProductName, Manufacturer, ProductCount, Price)
VALUES
(1, 'iPhone X', 'Apple', 3, 76000),
(2, 'iPhone 8', 'Apple', 2, 51000),
(3, 'Galaxy S9', 'Samsung', 2, 56000),
(4, 'Galaxy S8', 'Samsung', 1, 41000),
(5, 'P20 Pro', 'Huawei', 5, 36000);

SELECT * FROM phone;

-- Выведите название, производителя и цену для товаров, количество которых превышает 2

SELECT ProductName, Manufacturer, Price FROM phone
WHERE ProductCount > 2;

-- Выведите весь ассортимент товаров марки “Samsung”
SELECT * FROM phone
WHERE Manufacturer = "Samsung";

-- Товары, в которых есть упоминание "Iphone"

SELECT * FROM phone
WHERE ProductName LIKE '%iPhone%';

-- "Samsung" (таких товаров нет, т.к это название производителя)

SELECT * FROM phone
WHERE ProductName LIKE '%Samsung%';

-- Товары, в которых есть ЦИФРА "8"

SELECT * FROM phone
WHERE ProductName LIKE '%8%';

