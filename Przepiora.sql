-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2024 at 10:51 PM
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
-- Database: `piekarnia`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `bulki`
--

CREATE TABLE `bulki` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(255) DEFAULT NULL,
  `wartosc_odzywcza_kcal` decimal(10,2) DEFAULT NULL,
  `na_stanie` int(2) DEFAULT NULL,
  `cena_szt` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bulki`
--

INSERT INTO `bulki` (`id`, `nazwa`, `wartosc_odzywcza_kcal`, `na_stanie`, `cena_szt`) VALUES
(1, 'Bulka pszenna', 231.10, 1, 4.99),
(2, 'Bulka z sezamem', 312.17, 0, 7.99),
(3, 'Bulka maslana', 523.99, 1, 3.99),
(4, 'Bulka z makiem', 62.41, 0, 4.99),
(5, 'Bulka pelnoziarnista', 621.72, 1, 7.99),
(6, 'Bulka francuska', 612.31, 1, 8.99),
(7, 'Bulka maslanka', 512.57, 1, 5.99),
(8, 'Bulka z ziarnami slonecznika', 652.99, 1, 10.99),
(9, 'Bulka drozdzowa', 312.99, 1, 13.99),
(10, 'Bulka kukurydziana', 421.99, 1, 12.99),
(11, 'Bulka orkiszowa', 653.62, 1, 9.99),
(12, 'Bulka grahamka', 322.72, 1, 5.99),
(13, 'Bulka bezglutenowa', 312.97, 1, 8.99),
(14, 'Bulka z czosnkiem', 412.9, 1, 2.99),
(15, 'Bulka z serem', 132.13, 1, 3.99),
(16, 'Bulka cebulowa', 625.99, 1, 6.99),
(17, 'Bulka blugarska', 421.57, 0, 3.99),
(18, 'Bulka bialkowa', 521.31, 1, 5.99),
(19, 'Bulka proteinowa', 723.52, 1, 6.99),
(20, 'Bulka sniadaniowa', 132.57, 0, 8.99),
(21, 'Bulka amerykanska', 512.73, 1, 5.99),
(22, 'Bulka angielska', 421.12, 1, 9.99),
(23, 'Bulka wloska', 512.32, 1, 10.99),
(24, 'Bulka ciabatta', 312.57, 1, 11.99),
(25, 'Bulka pumpernikiel', 321.53, 0, 3.99),
(26, 'Bulka wiejska', 312.12, 1, 11.99),
(27, 'Bulka jajeczna', 652.85, 1, 6.99),
(28, 'Bulka kajzerka', 523.31, 1, 2.99),
(29, 'Bulka brioche', 834.84, 1, 5.99),
(30, 'Bulka kajzerka z sezamem', 623.57, 1, 5.99);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `paczki`
--

CREATE TABLE `paczki` (
  `id` int(11) NOT NULL,
  `paczki_rodzaje` varchar(200) NOT NULL,
  `wartosc_odzywcza_kcal` decimal(10,2) DEFAULT NULL,
  `na_stanie` int(2) DEFAULT NULL,
  `cena_szt` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paczki`
--

INSERT INTO `paczki` (`id`, `paczki_rodzaje`, `wartosc_odzywcza_kcal`, `na_stanie`, `cena_szt`) VALUES
(1, 'Paczek z dzemem rozanym', 321.11, 1, 10.00),
(2, 'Paczek z dzemem truskawkowym', 522.52, 1, 7.29),
(3, 'Paczek z marmolada pomaranczowa', 620.32, 1, 5.69),
(4, 'Paczek z nadzieniem kawowym', 712.52, 0, 6.20),
(5, 'Paczek z kremem czekoladowym', 432.10, 1, 7.99),
(6, 'Paczek z kremem waniliowym', 621.34, 1, 9.33),
(7, 'Paczek z kremem truskawkowym', 231.12, 0, 7.42),
(8, 'Paczek z kremem malinowym', 233.62, 1, 5.78),
(9, 'Paczek z kremem pistacjowym', 323.44, 1, 12.99),
(10, 'Paczek z kremem kokosowym', 431.86, 1, 11.99),
(11, 'Paczek z kremem cytrynowym', 523.31, 1, 2.33),
(12, 'Paczek z kremem karmelowym', 512.32, 1, 10.52),
(13, 'Paczek z kremem jagodowym', 625.72, 0, 6.99),
(14, 'Paczek z kremem czarnego bzu', 432.33, 1, 3.99),
(15, 'Paczek z kremem smietankowym', 752.99, 1, 11.99),
(16, 'Paczek z kremem kawowym', 521.72, 0, 8.99),
(17, 'Paczek z kremem truskawkowym', 742.54, 1, 5.99),
(18, 'Paczek z kremem orzechowym', 522.52, 1, 9.72),
(19, 'Paczek z kremem waniliowym i czekoladowym', 521.77, 1, 7.78),
(20, 'Paczek z kremem malinowym i truskawkowym', 622.42, 0, 7.34),
(21, 'Paczek z kremem cytrynowym i limonkowym', 513.77, 1, 5.78),
(22, 'Paczek z kremem bananowym', 762.62, 1, 8.78),
(23, 'Paczek z kremem mascarpone', 521.52, 1, 3.78),
(24, 'Paczek z kremem nutellowym', 352.31, 1, 8.78),
(25, 'Paczek z kremem czekoladowym i orzechowym', 742.92, 1, 6.78),
(26, 'Paczek z kremem orzechowym i kawowym', 622.72, 0, 11.36),
(27, 'Paczek z kremem waniliowym i pistacjowym', 622.52, 1, 14.75),
(28, 'Paczek z kremem truskawkowym i jagodowym', 821.31, 0, 7.52),
(29, 'Paczek z kremem malinowym i borowkowym', 421.72, 1, 4.92),
(30, 'Paczek z adwokatem', 621.34, 0, 10.00);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rogale`
--

CREATE TABLE `rogale` (
  `id` int(11) NOT NULL,
  `rogale_rodzaje` varchar(200) NOT NULL,
  `wartosc_odzywcza_kcal` decimal(10,2) DEFAULT NULL,
  `na_stanie` int(2) DEFAULT NULL,
  `cena_szt` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rogale`
--

INSERT INTO `rogale` (`id`, `rogale_rodzaje`, `wartosc_odzywcza_kcal`, `na_stanie`, `cena_szt`) VALUES
(1, 'Rogal francuski', 621.34, 0, 10.00),
(2, 'Rogal krucho-ciasto', 622.72, 0, 11.36),
(3, 'Rogal kruche ciasto z dzmem', 521.72, 0, 8.99),
(4, 'Rogal drozdzowy z budyniem', 412.9, 1, 7.99),
(5, 'Rogal drozdzowy z makiem', 233.62, 1, 6.78),
(6, 'Rogal drozdzowy z jablkiem', 312.99, 1, 13.99),
(7, 'Rogal drozdzowy z serem', 231.10, 1, 4.99),
(8, 'Rogal drozdzowy z orzechami', 512.32, 1, 10.99),
(9, 'Rogal drozdzowy z czekolada', 521.77, 1, 7.78),
(10, 'Rogal drozdzowy z owocami', 611.89, 0, 12.36),
(11, 'Rogal drozdzowy z kremem', 625.72, 1, 6.99),
(12, 'Rogal drozdzowy z jagodami', 512.75, 1, 7.00),
(13, 'Rogal drozdzowy z truskawkami', 562.72, 1, 9.72),
(14, 'Rogal drozdzowy z malinami', 821.35, 1, 11.55),
(15, 'Rogal drozdzowy z brzoskwiniami', 231.12, 1, 16.41),
(16, 'Rogal drozdzowy z borowkami', 620.32, 1, 5.69),
(17, 'Rogal drozdzowy z czere?niami', 742.92, 1, 6.78),
(18, 'Rogal drozdzowy z wisniami', 762.62, 1, 8.78),
(19, 'Rogal drozdzowy z rodzynkami', 723.52, 0, 6.99),
(20, 'Rogal drozdzowy z czosnkiem', 421.34, 0, 9.33),
(21, 'Rogal drozdzowy z cynamonem', 523.31, 1, 2.33),
(22, 'Rogal drozdzowy z miodem', 315.43, 1, 9.99),
(23, 'Rogal drozdzowy z kokosem', 521.52, 1, 12.78),
(24, 'Rogal drozdzowy z karmelem', 312.32, 1, 5.99),
(25, 'Rogal drozdzowy z truskawkami i serem', 333.62, 1, 5.78),
(26, 'Rogal drozdzowy z biala czekolada', 432.33, 1, 3.99),
(27, 'Rogal drozdzowy z czekolad? i orzechami', 322.72, 1, 5.99),
(28, 'Rogal drozdzowy z kremem waniliowym', 621.72, 1, 7.99),
(29, 'Rogal drozdzowy z kremem pistacjowym', 522.52, 1, 7.29),
(30, 'Rogal z maslem', 570.00, 1, 4.99);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `bulki`
--
ALTER TABLE `bulki`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `paczki`
--
ALTER TABLE `paczki`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `rogale`
--
ALTER TABLE `rogale`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bulki`
--
ALTER TABLE `bulki`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `paczki`
--
ALTER TABLE `paczki`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `rogale`
--
ALTER TABLE `rogale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
