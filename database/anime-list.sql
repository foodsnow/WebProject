-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Дек 23 2018 г., 06:15
-- Версия сервера: 10.1.31-MariaDB
-- Версия PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `anime`
--

-- --------------------------------------------------------

--
-- Структура таблицы `anime-list`
--

CREATE TABLE `anime-list` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `rating` double NOT NULL,
  `views` int(11) NOT NULL,
  `votes` int(11) NOT NULL,
  `image` varchar(500) NOT NULL,
  `link` varchar(10000) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `episodes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `anime-list`
--

INSERT INTO `anime-list` (`id`, `name`, `rating`, `views`, `votes`, `image`, `link`, `year`, `genre`, `type`, `episodes`) VALUES
(1, 'Fairy Tail S2', 9.15, 8714692, 20220, 'https://yummyanime.com/img/posters/1512496716.jpg', 'https://yummyanime.com/catalog/item/skazka-o-hvoste-fei', 2009, 'fantasy', 'serial', 12),
(2, 'Bleach', 9.09, 5389211, 10947, 'https://yummyanime.com/img/posters/314.jpg', 'https://yummyanime.com/catalog/item/blich', 2004, 'fantasy', 'serial', 12),
(3, 'Darling in the FranXX', 9, 5076412, 27276, 'https://yummyanime.com/img/posters/1514574607.jpg', 'https://yummyanime.com/catalog/item/milyj-vo-frankce', 2018, 'mecha', 'serial', 12),
(4, 'Sword Art Online', 9.12, 5009789, 38135, 'https://yummyanime.com/img/posters/1514974917.jpg', 'https://yummyanime.com/catalog/item/skazka-o-hvoste-fei', 2012, 'fantasy', 'serial', 12),
(5, 'Black Clover', 9.1, 4193163, 6194, 'https://yummyanime.com/img/posters/1531229062.png', 'https://yummyanime.com/catalog/item/mastera-mecha-onlajn', 2017, 'magic', 'serial', 12),
(6, 'Re:Zero', 8.88, 4013166, 30773, 'https://yummyanime.com/img/posters/1527381687.jpg', 'https://yummyanime.com/catalog/item/zhizn-v-drugom-mire-s-nulya', 2016, 'adventure', 'serial', 12),
(7, 'Blue Exorcist S1', 9.11, 3360749, 22073, 'https://yummyanime.com/img/posters/292.jpg', 'https://yummyanime.com/catalog/item/sinij-ekzorcist', 2011, 'fantasy', 'serial', 12),
(8, 'My Hero Academia S3', 9.26, 3281008, 8073, 'https://yummyanime.com/img/posters/1519137126.jpg', 'https://yummyanime.com/catalog/item/moya-gerojskaya-akademiya-3', 2018, 'school', 'serial', 12),
(9, 'Seven Deadly Sins S2', 9.43, 3230684, 11095, 'https://yummyanime.com/img/posters/1518075268.png', 'https://yummyanime.com/catalog/item/sem-smertnyh-grehov-2', 2018, 'action', 'serial', 12),
(10, 'Tokyo Ghoul S1', 8.95, 3228738, 30972, 'https://yummyanime.com/img/posters/1519225029.jpg', 'https://yummyanime.com/catalog/item/tokijskij-gul', 2014, 'drama', 'serial', 12),
(11, 'Attack on Titan S1', 9.24, 3211089, 29710, 'https://yummyanime.com/img/posters/425.jpg', 'https://yummyanime.com/catalog/item/vtorzhenie-gigantov', 2013, 'fantasy', 'serial', 12),
(12, 'KonoSuba', 9.03, 3174047, 25174, 'https://yummyanime.com/img/posters/1541806059.jpg', 'https://yummyanime.com/catalog/item/etot-zamechatel-nyj-mir', 2016, 'adventure', 'serial', 12),
(13, 'Demons', 8.86, 3165782, 17949, 'https://yummyanime.com/img/posters/228.jpg', 'https://yummyanime.com/catalog/item/demony-starshej-shkoly', 2012, 'school', 'serial', 12),
(14, 'Seven Deadly Sins S1', 9.37, 3154716, 18241, 'https://yummyanime.com/img/posters/763.jpg', 'https://yummyanime.com/catalog/item/sem-smertnyh-grehov', 2014, 'action', 'serial', 12),
(15, 'Fullmetal Alchemist', 9.43, 3055845, 12615, 'https://yummyanime.com/img/posters/356.jpg', 'https://yummyanime.com/catalog/item/stalnoj-alhimik-tv1', 2003, 'adventure', 'serial', 12),
(16, 'Fairy Tail S2', 9.35, 3049436, 12231, 'https://yummyanime.com/img/posters/624.jpg', 'https://yummyanime.com/catalog/item/skazka-o-hvoste-fei-tv-2', 2014, 'adventure', 'serial', 12),
(17, 'Akame ga kill', 9.43, 2991199, 30086, 'https://yummyanime.com/img/posters/1512496716.jpg', 'https://yummyanime.com/catalog/item/ubijca-akame', 2014, 'action', 'serial', 12),
(18, 'No game - No life', 9.47, 2918703, 29835, 'https://yummyanime.com/img/posters/1512475460.jpg', 'https://yummyanime.com/catalog/item/igra-na-vyzhivanie', 2014, 'games', 'serial', 12),
(19, 'Boruto: Naruto next Generations', 7.67, 2820090, 4469, 'https://yummyanime.com/img/posters/1518075301.png', 'https://yummyanime.com/catalog/item/boruto-novoe-pokolenie', 2017, 'adventure', 'serial', 12),
(20, 'Maid Sama!', 9.28, 2783197, 19680, 'https://yummyanime.com/img/posters/1527381968.jpg', 'https://yummyanime.com/catalog/item/prezident-gornichnaya', 2010, 'comedy', 'serial', 12),
(21, 'Naruto: Shippuden', 9.25, 2746552, 11842, 'https://yummyanime.com/img/posters/877.jpg', 'https://yummyanime.com/catalog/item/naruto-uragannye-hroniki', 2007, 'adventure', 'serial', 12),
(22, 'Death Note', 9.01, 2745339, 9, 'https://yummyanime.com/img/posters/233.jpg', 'https://yummyanime.com/catalog/item/tetrad-smerti', 2006, 'thriller', 'serial', 12),
(23, 'Sousei no Onmyouji', 9.15, 2725841, 11976, 'https://yummyanime.com/img/posters/1381.jpg', 'https://yummyanime.com/catalog/item/dve-zvezdy-onmedzhi', 2016, 'fantasy', 'serial', 12),
(24, 'Noragami', 9.3, 2661828, 30093, 'https://yummyanime.com/img/posters/556.jpg', 'https://yummyanime.com/catalog/item/bezdomnyj-bog-tv-1', 2014, 'fantasy', 'serial', 12),
(25, 'My Hero Academia S2', 9.3, 2620420, 11776, 'https://yummyanime.com/img/posters/2175.jpg', 'https://yummyanime.com/catalog/item/moya-gerojskaya-akademiya-tv-2', 2017, 'school', 'serial', 12),
(26, 'Sakurasou no Pet na Kanojo', 9.23, 2602519, 20225, 'https://yummyanime.com/img/posters/523.jpg', 'https://yummyanime.com/catalog/item/koshechka-iz-sakuraso', 2012, 'comedy', 'serial', 12),
(27, 'One Punch Man', 9.4, 2515946, 25877, 'https://yummyanime.com/img/posters/1079.jpg', 'https://yummyanime.com/catalog/item/vanpanchmen', 2015, 'action', 'serial', 12),
(28, 'Mirai Nikki', 8.76, 2469052, 24842, 'https://yummyanime.com/img/posters/1531755030.jpg', 'https://yummyanime.com/catalog/item/dnevnik-budushhego', 2011, 'adventure', 'serial', 12),
(29, 'Hunter x Hunter', 9.56, 2291355, 5250, 'https://yummyanime.com/img/posters/868.jpg', 'https://yummyanime.com/catalog/item/hanter-h-hanter', 2011, 'adventure', 'serial', 12),
(30, 'Kuroko no Basuke S1', 9.17, 1885688, 12057, 'https://yummyanime.com/img/posters/330.jpg', 'https://yummyanime.com/catalog/item/basketbol-kuroko', 2012, 'school', 'serial', 12),
(31, 'Kimi no na wa', 9.63, 1395938, 23250, 'https://yummyanime.com/img/posters/1861.jpg', 'https://yummyanime.com/catalog/item/tvoe-imya', 2016, 'drama', 'film', 1),
(32, 'Sword Art Online: Ordinal Scale', 9.08, 1362829, 13531, 'https://yummyanime.com/img/posters/2196.jpg', 'https://yummyanime.com/catalog/item/mastera-mecha-onlajn-poryadkovyj-rang', 2017, 'fantasy', 'film', 1),
(33, 'The Silent Voice: The Movie', 9.6, 1118358, 20997, 'https://yummyanime.com/img/posters/1531695789.jpg', 'https://yummyanime.com/catalog/item/forma-golosa', 2016, 'drama', 'film', 1),
(34, 'No game - No life: Zero', 9.46, 1024003, 11371, 'https://yummyanime.com/img/posters/1508311015.jpg', 'https://yummyanime.com/catalog/item/net-igry-net-zhizni-s-nulya', 2017, 'fantasy', 'film', 1),
(35, '5 Centimeters per second', 8.3, 816625, 11916, 'https://yummyanime.com/img/posters/198.jpg', 'https://yummyanime.com/catalog/item/5-santimetrov-v-sekundu', 2007, 'drama', 'film', 1),
(36, 'Spirited Away', 9.58, 644214, 12043, 'https://yummyanime.com/img/posters/204.jpg', 'https://yummyanime.com/catalog/item/unesennye-prizrakami', 2001, 'fantasy', 'film', 1),
(37, 'The Garden of Words', 9.2, 422211, 9111, 'https://yummyanime.com/img/posters/458.jpg', 'https://yummyanime.com/catalog/item/sad-slov', 2013, 'drama', 'film', 1),
(38, 'Kuroko na Basket: Last Game', 9.23, 209260, 3753, 'https://yummyanime.com/img/posters/1511085102.jpg', 'https://yummyanime.com/catalog/item/basketbol-kuroko-poslednyaya-igra', 2017, 'school', 'film', 1),
(39, 'Naruto: The Last', 9.03, 197820, 4108, 'https://yummyanime.com/img/posters/1775.jpg', 'https://yummyanime.com/catalog/item/naruto-poslednij-fil-m', 2014, 'adventure', 'film', 1),
(40, 'Tenki no Ko: Weathering with You', 0, 0, 0, 'https://i.imgur.com/qPrBgsV.jpg', 'https://www.crunchyroll.com/anime-news/2018/12/13/tenki-no-ko-weathering-with-you-theatrical-anime-film-unveils-cast-staff-key-visual', 2019, 'adventure', 'film', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `anime-list`
--
ALTER TABLE `anime-list`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `anime-list`
--
ALTER TABLE `anime-list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
