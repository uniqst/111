-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Час створення: Трв 15 2017 р., 23:15
-- Версія сервера: 5.7.11
-- Версія PHP: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `1den`
--

-- --------------------------------------------------------

--
-- Структура таблиці `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `auth_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `auth_key`) VALUES
(1, 'admin', '$2y$13$WyF7MC6lX4aEi5w8KGfDt.jVvASGvhSj4lGIP7UcXwB7m8dKAMw2K', NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `category`
--

INSERT INTO `category` (`id`, `parent_id`, `name`, `photo`) VALUES
(1, 2, 'Горизонтальные', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDK_xODZvbC21PbOuu4pT6JfxL-_e9GtefZknkbuL2QyBCkDqiN5sEDOg'),
(2, 0, 'Вертикальные', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDK_xODZvbC21PbOuu4pT6JfxL-_e9GtefZknkbuL2QyBCkDqiN5sEDOg'),
(3, 0, 'Тканевыее роллеты', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDK_xODZvbC21PbOuu4pT6JfxL-_e9GtefZknkbuL2QyBCkDqiN5sEDOg'),
(4, 0, 'Москитные сетки', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDK_xODZvbC21PbOuu4pT6JfxL-_e9GtefZknkbuL2QyBCkDqiN5sEDOg'),
(21, 1, 'Алюминиевы', ''),
(22, 1, 'Деревяные', '');

-- --------------------------------------------------------

--
-- Структура таблиці `gallery`
--

CREATE TABLE IF NOT EXISTS `gallery` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `gallery`
--

INSERT INTO `gallery` (`id`, `name`, `photo`) VALUES
(1, '1', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDK_xODZvbC21PbOuu4pT6JfxL-_e9GtefZknkbuL2QyBCkDqiN5sEDOg'),
(2, '2', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDK_xODZvbC21PbOuu4pT6JfxL-_e9GtefZknkbuL2QyBCkDqiN5sEDOg'),
(3, '3', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDK_xODZvbC21PbOuu4pT6JfxL-_e9GtefZknkbuL2QyBCkDqiN5sEDOg');

-- --------------------------------------------------------

--
-- Структура таблиці `migration`
--

CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1494677959),
('m130524_201442_init', 1494677970);

-- --------------------------------------------------------

--
-- Структура таблиці `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` tinytext NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `pages`
--

INSERT INTO `pages` (`id`, `name`, `content`, `title`, `alias`) VALUES
(1, 'Контакты', '<p>afsdfdsfsfdsfdsafasdf</p>\r\n\r\n<p>sadfsaf</p>\r\n\r\n<p>ad</p>\r\n\r\n<p>sfa</p>\r\n\r\n<p>dsf</p>\r\n\r\n<p>adsf</p>\r\n\r\n<p>da</p>\r\n\r\n<p>f</p>\r\n\r\n<p>dsafadsfadsfdfasd</p>\r\n', 'Контакты', 'contacts'),
(2, 'О нас', 'fadfasfdsf\r\nasdf\r\nadsf\r\nads\r\nfadsf\r\nasdf\r\nfasdfdsaf', 'О нас', 'about');

-- --------------------------------------------------------

--
-- Структура таблиці `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп даних таблиці `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'agalio94', 'C2MmXZtkJsiUjyy8isMvbdjqxcBY1q5E', '$2y$13$AgRzTbW.84yIwQqU0oHICetOEMzx5xajMjycQiTvzOg/a.h8i6.2S', NULL, 'galifax94@gmail.com', 10, 1494728838, 1494835302);

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Індекси таблиці `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблиці `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT для таблиці `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблиці `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблиці `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
