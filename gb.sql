-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 01 2019 г., 20:35
-- Версия сервера: 10.3.13-MariaDB
-- Версия PHP: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `gb`
--

-- --------------------------------------------------------

--
-- Структура таблицы `gb`
--

CREATE TABLE `gb` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `homepage` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gb`
--

INSERT INTO `gb` (`id`, `name`, `email`, `homepage`, `text`, `date`) VALUES
(25, 'Миртон', 'vampyre1618@mail.ru', 'mirton.com', 'Это сообщение было выведено напрямую из базы данных', '2019-04-01 16:16:48'),
(30, 'Антон', 'anton123@mail.ru', '', 'В этом сообщении содержатся всякие противные символы и скрипты \"<script>alert\"Нет тут хакеров\";</script>\" (\'@ \')', '2019-04-01 16:36:49'),
(31, 'Жора', 'jora_1998@gmail.com', 'jora.net', 'Это сообщение было выведено с сайта', '2019-04-01 16:37:07'),
(32, 'Игорь', 'igorek12@hotmail.com', 'igor.com', 'Это очень длинное сообщение и так как мне было его лень писать я просто вставлю сюда что нибудь. Например в длину большая панда достигает 1,2—1,8 м и имеет массу 17—160 кг[7]. Самцы крупнее самок по размеру (на 10 %) и по весу (на 20 %). В отличие от других медведей, имеет довольно длинный хвост (10—15 см)[8]. Тело массивное, покрытое густым белым мехом с чёрными пятнами вокруг глаз, чёрными ушами и чёрными лапами. Короткие толстые задние лапы имеют острые когти. На подошвах и в основании каждого пальца хорошо развиты голые подушечки, облегчающие удерживание гладких стеблей бамбука.\r\n\r\nБольшие панды имеют необычные передние лапы — с «большим пальцем» и пятью обычными пальцами; «большой палец», который на самом деле является видоизменённой сесамовидной костью запястья, позволяет ловко управляться даже с тонкими побегами бамбука. Биолог Стивен Джей Гулд посвятил происхождению этого «шестого пальца» статью «The Panda’s Thumb», ставшую заглавной для сборника его трудов по эволюции.', '2019-04-01 16:40:56'),
(33, 'Швайнхунт12', 'shwainkhunt@mail.ru', '', 'Тестовое сообщение на выявление... ну, кое чего', '2019-04-01 16:43:29'),
(34, 'Станислав', 'stasik@mail.ru', 'stas.ru', 'Это шестое сообщение, тоже тестовое', '2019-04-01 16:58:58');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `gb`
--
ALTER TABLE `gb`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `gb`
--
ALTER TABLE `gb`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
