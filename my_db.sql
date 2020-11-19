-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 25 Maj 2020, 09:41
-- Wersja serwera: 10.4.11-MariaDB
-- Wersja PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `my_db`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `eventName` varchar(100) NOT NULL,
  `agenda` varchar(150) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `events`
--

INSERT INTO `events` (`id`, `eventName`, `agenda`, `date`) VALUES
(1, 'test', 'testowa organizacja przybywa', '20-05-2020'),
(2, 'Zbiorka dobroczynna', 'Bedziemy zbierac jak najwiecej sie uda wszystko jest mozliwe', '23-06-2020'),
(3, 'Nowosci', 'Rozdajemy nowosci wszystko za darmo', '11-01-2021'),
(4, 'Spotkanie', 'spotkanie raczej oragnizacyjne', '13-09-2022');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `joinevent`
--

CREATE TABLE `joinevent` (
  `id` int(11) NOT NULL,
  `eventName` varchar(100) NOT NULL,
  `participation` varchar(100) NOT NULL,
  `feed` varchar(100) NOT NULL,
  `whoJoin` varchar(100) NOT NULL,
  `wasAccepted` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `joinevent`
--

INSERT INTO `joinevent` (`id`, `eventName`, `participation`, `feed`, `whoJoin`, `wasAccepted`) VALUES
(1, 'test', 'Uczestniczy jako sluchacz', 'Brak preferencji zywnosci', 'test', 'Nie'),
(2, 'Zbiorka dobroczynna', 'Uczestniczy jako sluchacz', 'Brak preferencji zywnosci', 'test', 'Tak'),
(3, 'Zbiorka dobroczynna', 'Uczestniczy jako sluchacz', 'Brak preferencji zywnosci', 'patryk', 'Nie'),
(4, 'Nowosci', 'Uczestniczy jako sluchacz', 'Wyzywienie wegetarianskie', 'patryk', 'Tak'),
(5, 'Spotkanie', 'Uczestniczy jako autor', 'Wyzywienie bez glutenu', 'patryk', 'Nie'),
(6, 'Nowosci', 'Uczestniczy jako organizator', 'Wyzywienie wegetarianskie', 'kama', 'Nie'),
(7, 'Zbiorka dobroczynna', 'Uczestniczy jako sluchacz', 'Brak preferencji zywnosci', 'kama', 'Brak'),
(8, 'Nowosci', 'Uczestniczy jako sluchacz', 'Wyzywienie bez glutenu', 'test', 'Brak'),
(9, 'Spotkanie', 'Uczestniczy jako autor', 'Wyzywienie wegetarianskie', 'test', 'Tak');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `permissions` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `permissions`, `name`, `lastname`, `username`, `password`, `email`) VALUES
(1, 'admin', 'administrator', 'adm', 'admin', 'admin', 'admin@gmail.com'),
(2, 'user', 'nowy', 'uzytkownik', 'test', 'test', 'test@gmail.com'),
(3, 'user', 'Adrian', 'Nowak', 'adrian', 'adrianek', 'adi@gmail.com');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `joinevent`
--
ALTER TABLE `joinevent`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `joinevent`
--
ALTER TABLE `joinevent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
