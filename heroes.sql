-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Янв 09 2022 г., 15:41
-- Версия сервера: 10.4.22-MariaDB
-- Версия PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `marvel heroes`
--

-- --------------------------------------------------------

--
-- Структура таблицы `heroes`
--

CREATE TABLE `heroes` (
  `hero_id` int(20) NOT NULL,
  `hero_logo` longblob NOT NULL,
  `hero_name` varchar(50) COLLATE latin1_bin NOT NULL,
  `hero_pseudo` varchar(50) COLLATE latin1_bin NOT NULL,
  `power_ab` varchar(100) COLLATE latin1_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

--
-- Дамп данных таблицы `heroes`
--

INSERT INTO `heroes` (`hero_id`, `hero_logo`, `hero_name`, `hero_pseudo`, `power_ab`) VALUES
(131, 0x433a5c66616b65706174685c647261782e737667, 'Arthur Douglas', 'Drax the Destroyer', 'Kylosian Physiology'),
(132, 0x433a5c66616b65706174685c696b617269732e737667, 'Ikaris ', 'Ikaris', 'Eternal Physiology'),
(133, 0x433a5c66616b65706174685c7368616e676368692e737667, 'Xu Shang-Chi', 'Shang-Chi', 'Ten Rings Empowerment'),
(134, 0x433a5c66616b65706174685c776173702e737667, 'Hope van Dyne', 'The Wasp', 'Size Manipulation and Flight');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `heroes`
--
ALTER TABLE `heroes`
  ADD PRIMARY KEY (`hero_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `heroes`
--
ALTER TABLE `heroes`
  MODIFY `hero_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
