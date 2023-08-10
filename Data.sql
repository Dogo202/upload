-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 10 2023 г., 11:20
-- Версия сервера: 8.0.30
-- Версия PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `Upload`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Data`
--

CREATE TABLE `Data` (
  `id` int NOT NULL,
  `IIn` text NOT NULL,
  `tag` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Data`
--

INSERT INTO `Data` (`id`, `IIn`, `tag`) VALUES
(1, '1235400400', '1'),
(2, '1235600500', '2'),
(3, '1235800600', '3'),
(4, '1236000700', '4'),
(5, '1236200800', 'Пять'),
(6, '1236400900', '1'),
(7, '1236601000', '2'),
(8, '1237001200', '4'),
(9, '1237201300', 'Пять'),
(10, '1237401400', '1'),
(11, '1237601500', '2'),
(12, '1238001700', '4'),
(13, '1238201800', 'Пять');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Data`
--
ALTER TABLE `Data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Data`
--
ALTER TABLE `Data`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
