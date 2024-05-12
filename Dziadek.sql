-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2024 at 12:18 AM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `piekarnia_dziadek`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klient`
--

CREATE TABLE `klient` (
  `id` int(10) UNSIGNED NOT NULL,
  `imie` varchar(35) NOT NULL,
  `nazwisko` varchar(35) NOT NULL,
  `wiek` int(3) NOT NULL,
  `miasto` varchar(50) NOT NULL,
  `adres` varchar(50) NOT NULL,
  `kod_pocztowy` varchar(6) NOT NULL,
  `telefon` int(9) NOT NULL,
  `adres_email` varchar(30) NOT NULL,
  `uwagi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `klient`
--

INSERT INTO `klient` (`id`, `imie`, `nazwisko`, `wiek`, `miasto`, `adres`, `kod_pocztowy`, `telefon`, `adres_email`, `uwagi`) VALUES
(1, 'Andrzej', 'Gołota', 23, 'Mysłowice', 'Makaroniarzy 23', '46-203', 765894578, 'andrzejgolota@gmail.com', NULL),
(2, 'Karol', 'Norek', 33, 'Katowice', 'Powstańców 12', '43-202', 476543879, 'karon@mail.com', NULL),
(3, 'Justyna', 'Mleczko', 39, 'Sosnowiec', 'Stoczniowców 5', '41-210', 700230592, 'justynmleczko@gmail.com', 'Niebezpieczna okolica, unikać nocami'),
(4, 'Łukasz', 'Stonoga', 40, 'Sosnowiec', 'Śliwki 9', '41-230', 793206923, 'lukastog@interia.pl', NULL),
(5, 'Norbert', 'Gierczak', 31, 'Kraków', 'Jeleniowa 33', '41-300', 693023293, 'disstream@mail.gre', NULL),
(6, 'Olimpia', 'Gracka', 62, 'Sosnowiec', 'Polanowa 16a', '41-230', 692039523, 'olgr@onet.pl', NULL),
(7, 'Antoni', 'Kopytko', 29, 'Mysłowice', 'Jaskiniowa 69', '49-302', 635262069, 'antkop@malpa.pl', NULL),
(8, 'Kasia', 'Butelka', 17, 'Sosnowiec', 'Perłowa 23a', '41-210', 495827492, 'kasbutla@gmail.com', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownicy`
--

CREATE TABLE `pracownicy` (
  `id` int(10) UNSIGNED NOT NULL,
  `imie` varchar(35) NOT NULL,
  `nazwisko` varchar(35) NOT NULL,
  `wiek` int(3) NOT NULL,
  `miasto` varchar(50) NOT NULL,
  `adres` varchar(50) NOT NULL,
  `telefon` int(9) NOT NULL,
  `dzial` varchar(30) NOT NULL,
  `stopien` varchar(30) NOT NULL,
  `dod_uwagi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `pracownicy`
--

INSERT INTO `pracownicy` (`id`, `imie`, `nazwisko`, `wiek`, `miasto`, `adres`, `telefon`, `dzial`, `stopien`, `dod_uwagi`) VALUES
(1, 'Filip', 'Kowalski', 21, 'Katowice', 'Portowa 13', 523723823, 'Zarząd', 'Właściciel', ''),
(2, 'Gregorius', 'Nomnifaktoryjski', 32, 'Katowice', 'Hulska 59', 629832692, 'Zarząd', 'Menadżer', 'Często naprawia bojler w budynku zarządu'),
(3, 'Szałw', 'Dobroczynny', 49, 'Wojkowice Kościelne', 'Figowa 16a', 629323629, 'Piekarnia', 'Menadżer', ''),
(4, 'Robert', 'Kłusy', 22, 'Dąbrowa Górnicza', 'Lubańczykowa 33h', 629320310, 'Piekarnia', 'Kierownik', ''),
(5, 'Justyna', 'Kotwicz', 33, 'Mysłowice', 'Rowerowa 18', 892310262, 'Piekarnia', 'Kasjer', ''),
(6, 'Dominik', 'Mleczko', 17, 'Sosnowiec', 'Stoczniowców 5', 420320220, 'Piekarnia', 'Starszy Piekarz', 'Często opierdala się'),
(7, 'Wacław', 'Wernicki', 37, 'Dąbrowa Górnicza', 'Górnicza 14a', 720237962, 'Piekarnia', 'Piekarz', ''),
(8, 'Tomasz', 'But', 23, 'Dąbrowa Górnicza', 'Uliczna 32', 729520699, 'Piekarnia', 'Piekarz', ''),
(9, 'Tomasz', 'Jądro', 49, 'Jaworzno', 'Beczkowa 12p', 386138692, 'Piekarnia', 'Praktykant', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE `zamowienia` (
  `zamowienia_id` int(11) NOT NULL,
  `klient_id` int(11) UNSIGNED NOT NULL,
  `rzecz` varchar(50) NOT NULL,
  `ilość` int(5) NOT NULL,
  `faktura` int(1) NOT NULL,
  `uwagi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `zamowienia`
--

INSERT INTO `zamowienia` (`zamowienia_id`, `klient_id`, `rzecz`, `ilość`, `faktura`, `uwagi`) VALUES
(1, 1, 'Bulka cebulowa', 5, 0, ''),
(2, 3, 'Ciasto Tiramisu', 2, 0, ''),
(3, 3, 'Ciasto Rafaello', 2, 0, ''),
(4, 7, 'Paczek z kremem smietankowym', 10, 1, ''),
(5, 7, 'Paczek z kremem pistacjowym', 20, 1, ''),
(6, 6, 'Rogal drozdzowy z malinami', 8, 0, '');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `klient`
--
ALTER TABLE `klient`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`zamowienia_id`),
  ADD KEY `klucz` (`klient_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `klient`
--
ALTER TABLE `klient`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pracownicy`
--
ALTER TABLE `pracownicy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `zamowienia`
--
ALTER TABLE `zamowienia`
  MODIFY `zamowienia_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD CONSTRAINT `klucz` FOREIGN KEY (`klient_id`) REFERENCES `klient` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
