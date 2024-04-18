-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2024 at 03:11 PM
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
  `nazwa` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bulki`
--

INSERT INTO `bulki` (`id`, `nazwa`) VALUES
(1, 'Bu?ka pszenna'),
(2, 'Bu?ka z sezamem'),
(3, 'Bu?ka ma?lana'),
(4, 'Bu?ka z makiem'),
(5, 'Bu?ka pe?noziarnista'),
(6, 'Bu?ka francuska'),
(7, 'Bu?ka ma?lanka'),
(8, 'Bu?ka z ziarnami s?onecznika'),
(9, 'Bu?ka dro?d?owa'),
(10, 'Bu?ka kukurydziana'),
(11, 'Bu?ka orkiszowa'),
(12, 'Bu?ka grahamka'),
(13, 'Bu?ka bezglutenowa'),
(14, 'Bu?ka z czosnkiem'),
(15, 'Bu?ka z serem'),
(16, 'Bu?ka cebulowa'),
(17, 'Bu?ka bu?garska'),
(18, 'Bu?ka bia?kowa'),
(19, 'Bu?ka proteinowa'),
(20, 'Bu?ka ?niadaniowa'),
(21, 'Bu?ka ameryka?ska'),
(22, 'Bu?ka angielska'),
(23, 'Bu?ka w?oska'),
(24, 'Bu?ka ciabatta'),
(25, 'Bu?ka pumpernikiel'),
(26, 'Bu?ka wiejska'),
(27, 'Bu?ka jajeczna'),
(28, 'Bu?ka kajzerka'),
(29, 'Bu?ka brioche'),
(30, 'Bu?ka kajzerka z sezamem');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ciasta`
--

CREATE TABLE `ciasta` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ciasta`
--

INSERT INTO `ciasta` (`id`, `nazwa`) VALUES
(1, 'Sernik'),
(2, 'Ciasto marchewkowe'),
(3, 'Tiramisu'),
(4, 'Brownie'),
(5, 'Tort truflowy'),
(6, 'Cheesecake'),
(7, 'Babka dro?d?owa'),
(8, 'Muffiny czekoladowe'),
(9, 'Jab?ecznik'),
(10, 'Makowiec'),
(11, 'Placek ?wi?teczny'),
(12, 'Murzynek'),
(13, 'Kokosanki'),
(14, 'Tarta owocowa'),
(15, 'Pavlova'),
(16, 'Biszkopt'),
(17, 'Rogaliki dro?d?owe'),
(18, 'Cha?ka'),
(19, 'Ciasto czekoladowe'),
(20, 'Szarlotka'),
(21, 'Babeczki waniliowe'),
(22, 'Napoleonka'),
(23, 'Sernik z owocami'),
(24, 'Rurki z kremem'),
(25, 'Tort orzechowy'),
(26, 'Ptysie z kremem'),
(27, 'Ciasto marcepanowe'),
(28, 'Tarta cytrynowa'),
(29, 'Babka piaskowa'),
(30, 'Brownie z orzechami');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rogale`
--

CREATE TABLE `rogale` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rogale`
--

INSERT INTO `rogale` (`id`, `nazwa`) VALUES
(1, 'Rogal francuski'),
(2, 'Rogal krucho-ciasto'),
(3, 'Rogal kruche ciasto z d?emem'),
(4, 'Rogal dro?d?owy z budyniem'),
(5, 'Rogal dro?d?owy z makiem'),
(6, 'Rogal dro?d?owy z jab?kiem'),
(7, 'Rogal dro?d?owy z serem'),
(8, 'Rogal dro?d?owy z orzechami'),
(9, 'Rogal dro?d?owy z czekolad?'),
(10, 'Rogal dro?d?owy z owocami'),
(11, 'Rogal dro?d?owy z kremem'),
(12, 'Rogal dro?d?owy z jagodami'),
(13, 'Rogal dro?d?owy z truskawkami'),
(14, 'Rogal dro?d?owy z malinami'),
(15, 'Rogal dro?d?owy z brzoskwiniami'),
(16, 'Rogal dro?d?owy z bor?wkami'),
(17, 'Rogal dro?d?owy z czere?niami'),
(18, 'Rogal dro?d?owy z wisniami'),
(19, 'Rogal dro?d?owy z rodzynkami'),
(20, 'Rogal dro?d?owy z czosnkiem'),
(21, 'Rogal dro?d?owy z cynamonem'),
(22, 'Rogal dro?d?owy z miodem'),
(23, 'Rogal dro?d?owy z kokosem'),
(24, 'Rogal dro?d?owy z karmelem'),
(25, 'Rogal dro?d?owy z truskawkami i serem'),
(26, 'Rogal dro?d?owy z bia?? czekolad?'),
(27, 'Rogal dro?d?owy z czekolad? i orzechami'),
(28, 'Rogal dro?d?owy z kremem waniliowym'),
(29, 'Rogal dro?d?owy z kremem pistacjowym');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `bulki`
--
ALTER TABLE `bulki`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `ciasta`
--
ALTER TABLE `ciasta`
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
-- AUTO_INCREMENT for table `ciasta`
--
ALTER TABLE `ciasta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `rogale`
--
ALTER TABLE `rogale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
