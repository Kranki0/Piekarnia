-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2024 at 10:00 PM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `piekarnia_bd`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ciasta`
--

CREATE TABLE `ciasta` (
  `ID` int(11) NOT NULL,
  `Nazwa` varchar(50) NOT NULL,
  `Smak` varchar(30) DEFAULT NULL,
  `Posiada_alergeny` tinyint(4) NOT NULL,
  `Rodzaj_alergenu` varchar(100) DEFAULT NULL,
  `Wartosc_odzywcza_kcal` decimal(10,2) NOT NULL,
  `Temp_przechowywania` decimal(10,2) DEFAULT NULL,
  `Teramin_waznosci_dni` int(11) NOT NULL,
  `Cena_kg` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `ciasta`
--

INSERT INTO `ciasta` (`ID`, `Nazwa`, `Smak`, `Posiada_alergeny`, `Rodzaj_alergenu`, `Wartosc_odzywcza_kcal`, `Temp_przechowywania`, `Teramin_waznosci_dni`, `Cena_kg`) VALUES
(1, 'Sernik', 'Slodki', 0, NULL, 250.00, 7.00, 5, 45.90),
(2, 'Murzynek', 'Slodki', 1, 'Kakao', 360.00, 6.00, 6, 24.50),
(3, 'Miodownik', 'Slodki', 1, 'Orzechy', 345.00, 10.00, 8, 43.25),
(4, 'Slony karmel', 'Lekko slony', 0, NULL, 237.00, 5.00, 5, 37.50),
(5, 'Biszkopt jogurtowy', 'Lekko kwasny', 0, NULL, 421.00, 16.00, 15, 17.34),
(6, 'Keks', 'Owocowy', 1, 'Bakalie', 378.00, 6.00, 4, 36.00),
(7, 'Beza', 'Slodki', 0, NULL, 234.00, 12.00, 5, 23.57),
(8, 'Tiramisu', 'Gorzkie', 1, 'Kawa', 590.00, 2.00, 13, 76.89),
(9, 'Sernik na zimno', 'Słodkokwasny', 0, NULL, 123.00, 4.00, 4, 32.21),
(10, 'Babka marmurkowa', 'Slodki', 1, 'Kakao', 437.00, 7.00, 8, 57.80),
(11, 'Ciasto czekoladowe', 'Slodki', 0, NULL, 250.00, 7.00, 5, 45.90),
(12, 'Jablecznik', 'Słodkokwasny', 0, NULL, 360.00, 6.00, 6, 24.50),
(13, 'Szarlotka', 'Slodki', 1, 'Cynamon', 345.00, 10.00, 8, 43.25),
(14, 'Ciasto cytrynowe', 'Kwasny', 0, NULL, 237.00, 5.00, 5, 37.50),
(15, 'Tort Mascarpone', 'Slodki', 0, NULL, 421.00, 16.00, 15, 17.34),
(16, 'Makowiec', 'Slodki', 1, 'Mak', 378.00, 6.00, 4, 36.00),
(17, 'Metrowiec', 'Slodki', 0, NULL, 234.00, 12.00, 5, 23.57),
(18, 'Makosernik', 'Slodki', 1, 'Mak, Bakalie', 590.00, 2.00, 13, 76.89),
(19, 'Malinowa chmurka', 'Słodkokwasny', 0, NULL, 123.00, 4.00, 4, 32.21),
(20, 'Ciasto z truskawkami', 'Slodki', 1, 'Truskawki', 437.00, 7.00, 8, 57.80),
(21, 'Fale dunaju', 'Slodki', 1, 'Winogron', 250.00, 7.00, 5, 45.90),
(22, 'Rabarbarowiec', 'Kwasny', 0, NULL, 360.00, 6.00, 6, 24.50),
(23, 'Rafaello', 'Slodki', 1, 'Migdaly', 345.00, 10.00, 8, 43.25),
(24, 'Pascha', 'Slodki', 1, 'Bakalie', 237.00, 5.00, 5, 37.50),
(25, 'Ciasto tropikalne', 'Slodkokwasny', 0, NULL, 421.00, 16.00, 15, 17.34),
(26, 'Ananasowiec', 'Kwasny', 0, NULL, 378.00, 6.00, 4, 36.00),
(27, 'Ciasto Wisniowo kawowe', 'Kwasnogorzkie', 1, 'Kawa', 234.00, 12.00, 5, 23.57),
(28, 'Ciasto Owocowe', 'Kwasny', 0, NULL, 590.00, 2.00, 13, 76.89),
(29, 'Sernik z orzechami', 'Gorzkie', 1, 'Orzechy', 123.00, 4.00, 4, 32.21),
(30, 'Przekladaniec', 'Slodki', 0, NULL, 437.00, 7.00, 8, 57.80);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dostawcy`
--

CREATE TABLE `dostawcy` (
  `ID` int(11) NOT NULL,
  `Nazwa` varchar(50) NOT NULL,
  `Nip` varchar(10) NOT NULL,
  `Miejscowosc` varchar(50) NOT NULL,
  `Adres` varchar(50) NOT NULL,
  `Kod_pocztowy` varchar(6) NOT NULL,
  `telefon` varchar(20) DEFAULT NULL,
  `Mail` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `dostawcy`
--

INSERT INTO `dostawcy` (`ID`, `Nazwa`, `Nip`, `Miejscowosc`, `Adres`, `Kod_pocztowy`, `telefon`, `Mail`) VALUES
(1, 'Knorr', '6293234241', 'Sosnowiec', 'Katowicka 5', '41-300', '999 467 357', 'Knorr@gmail.com'),
(2, 'ArkaSpozywczy', '6234567890', 'Warszawa', 'ul. Lesna 5', '34-567', NULL, 'ArkaSpo@gmail.com'),
(3, 'SmakPol', '6345678901', 'Krakow', 'ul. Solec 10', '23-456', '335 579 886', 'SmakPol@gmail.com'),
(4, 'GustoFoods', '6456789012', 'Lodz', 'ul. Lipowa 15', '12-345', '336 579 886', 'GustoFo@gmail.com'),
(5, 'Delikatesy Polskie', '6567890123', 'Wroclaw', 'ul. Polna 20', '45-678', NULL, NULL),
(6, 'ProstoZPola', '6678901234', 'Poznan', 'ul. Radzyn 25', '56-789', '338 539 886', 'ProstoZ@gmail.com'),
(7, 'Smaki Natury', '6789012345', 'Gdansk', 'ul. Krasickiego 30', '67-890', '339 579 886', 'Smaki N@gmail.com'),
(8, 'DobryWybor', '6012345704', 'Szczecin', 'ul. Zielona 35', '78-901', '140 579 886', 'DobryWy@gmail.com'),
(9, 'FreshMarket', '6001234580', 'Bydgoszcz', 'ul. Warszawska 40', '89-012', NULL, 'FreshMa@gmail.com'),
(10, 'ZdrowyKoszyk', '6123456802', 'Lublin', 'ul. Klonowa 45', '90-123', NULL, 'ZdrowyK@gmail.com'),
(11, 'EkologicznaPasja', '6234567903', 'Katowice', 'ul. Platanowa 50', '01-234', '012 579 886', NULL),
(12, 'ZielonyPlon', '6345678914', 'Bialystok', 'ul. Brzozowa 55', '45-678', '452 579 886', 'Zielony@gmail.com'),
(13, 'SlonecznaLaka', '6456789025', 'Gdynia', 'ul. Wysoka 60', '56-789', '562 579 886', 'Slonecz@gmail.com'),
(14, 'Warzywa i Owoce Sp. z o.o.', '6567890136', 'Czestochowa', 'ul. Jagiellonska 65', '67-890', '672 579 886', 'Warzywa@gmail.com'),
(15, 'Smaczna Kraina', '6678901247', 'Sosnowiec', 'ul. Krucza 70', '78-901', '782 579 886', NULL),
(16, 'KuchniaBabciZosi', '6789012358', 'Radom', 'ul. Sosnowa 75', '89-012', '892 579 886', 'Kuchnia@gmail.com'),
(17, 'Lowcy Smakow', '6890123469', 'Kielce', 'ul. Paderewskiego 80', '90-123', '902 579 886', 'Lowcy S@gmail.com'),
(18, 'Chlodna Spizarnia', '6901234580', 'Gliwice', 'ul. Przemyslowa 85', '01-234', '012 579 886', 'Chlodna@gmail.com'),
(19, 'Ekologiczne Smaki', '6012345691', 'Torun', 'ul. Armii Krajowej 90', '12-345', NULL, 'Ekologi@gmail.com'),
(20, 'Produkty Polskie', '6001234567', 'Zielona Gora', 'ul. Dabrowskiego 95', '23-456', '232 579 886', 'Produkt@gmail.com'),
(21, 'Kulinarna Rozkosz', '6123456789', 'Rzeszow', 'ul. Mickiewicza 100', '34-567', '342 579 886', 'Kulinar@gmail.com'),
(22, 'Wiejski Stol', '6234567890', 'Olsztyn', 'ul. Rynek 105', '56-789', '562 579 886', 'Wiejski@gmail.com'),
(23, 'Smaki Tradycji', '6345678901', 'Bielsko-Biala', 'ul. Zwyciestwa 110', '67-890', '672 579 886', 'Smaki T@gmail.com'),
(24, 'Prosto z Pola Sp. z o.o.', '6456789012', 'Opole', 'ul. Cicha 115', '78-901', '782 579 886', NULL),
(25, 'Naturalne Dobro', '6567890123', 'Tarnow', 'ul. Rzeczna 120', '89-012', '892 579 886', 'Natural@gmail.com'),
(26, 'Zielony Koszyk', '6678901234', 'Kalisz', 'ul. Powstancow 125', '90-123', '902 579 886', 'Zielony@gmail.com'),
(27, 'Delikatesy Polskie Sp. z o.o.', '6789012345', 'Koszalin', 'ul. Pilsudskiego 130', '01-234', '012 579 886', 'Delikat@gmail.com'),
(28, 'Przyjemnosci Kuchni', '6890123456', 'Legnica', 'ul. Grunwaldzka 135', '12-345', '122 579 886', 'Przyjem@gmail.com'),
(29, 'Smakowite Jadlo', '6901234567', 'Grudziadz', 'ul. Kasztanowa 140', '23-456', '232 579 886', 'Smakowi@gmail.com'),
(30, 'Ekologiczna Pasja Sp. z o.o.', '6012345678', 'Jaworzno', 'ul. Kopernika 145', '34-567', '342 579 886', 'Ekologi@gmail.com');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `skladniki`
--

CREATE TABLE `skladniki` (
  `ID` int(11) NOT NULL,
  `Nazwa` varchar(50) NOT NULL,
  `Smak` varchar(30) DEFAULT NULL,
  `Alergen` tinyint(4) NOT NULL,
  `Wartosc_odzywcza_kcal` decimal(10,2) NOT NULL,
  `Sposob_pakowania` varchar(30) DEFAULT NULL,
  `Waga_netto_gram` int(11) NOT NULL,
  `Cena` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `skladniki`
--

INSERT INTO `skladniki` (`ID`, `Nazwa`, `Smak`, `Alergen`, `Wartosc_odzywcza_kcal`, `Sposob_pakowania`, `Waga_netto_gram`, `Cena`) VALUES
(1, 'Jajko', NULL, 1, 50.00, 'Sztuka', 20, 15.00),
(2, 'Maka', NULL, 0, 46.00, 'Torebka', 1000, 4.50),
(3, 'Kakao', 'Slodki', 1, 100.00, 'Pudelko', 250, 33.00),
(4, 'Orzechy', 'Gorzki', 1, 500.00, 'Worek', 750, 34.20),
(5, 'Bakalie', 'Kwasny', 1, 180.00, 'Torebka', 300, 42.12),
(6, 'Kawa', 'Gorzki', 1, 200.00, 'Pudelko', 356, 30.56),
(7, 'Cynamon', NULL, 0, 345.00, 'Torebka', 463, 13.77),
(8, 'Mak', NULL, 1, 23.00, 'Torebka', 324, 29.99),
(9, 'Pieprz', 'Ostry', 0, 123.00, 'Torebka', 657, 50.00),
(10, 'Truskawki', 'Slodkokwasny', 1, 54.00, 'Koszyk', 366, 90.00),
(11, 'Winogron', 'Slodkokwasny', 1, 546.00, 'Worek', 77, 12.87),
(12, 'Migdaly', 'Gorzki', 1, 657.00, 'Torebka', 22, 35.90),
(13, 'Sol', 'Slony', 0, 43.00, 'Torebka', 24, 15.00),
(14, 'Cukier', 'Slodki', 0, 50.00, 'Torebka', 348, 4.50),
(15, 'Proszek do pieczenia', NULL, 0, 46.00, 'Torebka', 234, 33.00),
(16, 'Cukier waniliowy', 'Slodki', 0, 100.00, 'Torebka', 66, 34.20),
(17, 'Budyń', 'Słodki', 0, 500.00, 'Torebka', 33, 42.12),
(18, 'Galaretka', 'Slodki', 0, 180.00, 'Torebka', 445, 30.56),
(19, 'Ser', NULL, 0, 200.00, 'Pudelko', 568, 13.77),
(20, 'Slonecznik', NULL, 1, 345.00, 'Torebka', 173, 29.99),
(21, 'Dynia', NULL, 1, 23.00, 'Torebka', 174, 50.00),
(22, 'Papryka', 'Ostry', 0, 123.00, 'Torebka', 100, 90.00),
(23, 'Dzem', 'Slodki', 0, 54.00, 'Sloik', 284, 12.87),
(24, 'Kokos', NULL, 0, 546.00, 'Torebka', 274, 35.90),
(25, 'Sezam', NULL, 0, 657.00, 'Torebka', 789, 15.00),
(26, 'Mleko', NULL, 0, 43.00, 'Pudelko', 735, 4.50),
(27, 'Smietana', 'Slodki', 0, 547.00, 'Pudelko', 624, 33.00),
(28, 'Maslo', NULL, 0, 456.00, 'Pudelko', 55, 34.20),
(29, 'Margaryna', NULL, 0, 234.00, 'Pudelko', 250, 42.12),
(30, 'Drozdze', 'Gorzki', 0, 112.00, 'Pudelko', 1300, 30.56);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `ciasta`
--
ALTER TABLE `ciasta`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `dostawcy`
--
ALTER TABLE `dostawcy`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `skladniki`
--
ALTER TABLE `skladniki`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ciasta`
--
ALTER TABLE `ciasta`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `dostawcy`
--
ALTER TABLE `dostawcy`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `skladniki`
--
ALTER TABLE `skladniki`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
