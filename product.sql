-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 08 2023 г., 20:47
-- Версия сервера: 8.0.30
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `product`
--

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `model_name` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `size` int DEFAULT NULL,
  `code` int DEFAULT NULL,
  `price` int NOT NULL DEFAULT '0',
  `count` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `model_name`, `color`, `size`, `code`, `price`, `count`) VALUES
(1, 'Клёвые', 'красный', 40, 21542, 2100, 5),
(3, 'Клёвые', 'черный', 40, 21544, 2100, 3),
(4, 'Клёвые', 'зеленый', 41, 21543, 2100, 4),
(5, 'Клёвые', 'синий', 43, 21546, 2100, 1),
(6, 'Модные', 'красный', 41, 22547, 2700, 5),
(7, 'Клёвые', 'черный', 43, 22544, 2700, 3),
(8, 'Клёвые', 'зеленый', 44, 22543, 2700, 4),
(9, 'Клёвые', 'синий', 42, 22546, 2700, 1),
(12, 'Странные', 'синий', 43, 26541, 41100, 1),
(13, 'Странные', 'синий', 43, 26546, 41100, 1),
(14, 'Понтовые', 'черный', 41, 25544, 14100, 2),
(15, 'Понтовые', 'черный', 42, 22519, 14100, 2),
(16, 'Весёлые', 'красный', 40, 21588, 2100, 5),
(17, 'Весёлые', 'зеленый', 41, 21589, 2100, 4),
(18, 'Весёлые', 'синий', 43, 21563, 2100, 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
