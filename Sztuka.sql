-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Maj 11, 2024 at 12:32 AM
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
-- Database: `wypieki`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `chleby`
--

CREATE TABLE `chleby` (
  `id` int(10) UNSIGNED NOT NULL,
  `nazwa chleba` varchar(40) NOT NULL,
  `kcal` varchar(40) NOT NULL,
  `ilość na stanie` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `chleby`
--

INSERT INTO `chleby` (`id`, `nazwa chleba`, `kcal`, `ilość na stanie`) VALUES
(1, 'Chleb pszenny', '125', 10),
(2, 'Chleb żytni', '115', 12),
(3, 'Bagietka', '220', 11),
(4, 'Chleb na zakwasie', '215', 7),
(5, 'Chleb graham', '165', 8),
(6, 'Chleb wieloziarnisty', '225', 10),
(7, 'Chleb pumpernikiel', '110', 13),
(8, 'Chleb ciemny', '215', 5),
(9, 'Chleb jęczmienny', '155', 4),
(10, 'Chleb orkiszowy', '215', 5),
(11, 'Chleb razowy', '205', 6),
(12, 'Chleb z ziarnami', '205', 9),
(13, 'Chleb na sodzie', '110', 2),
(14, 'Chleb tostowy', '260', 3),
(15, 'Chleb kukurydziany', '275', 15),
(16, 'Chleb owsiany', '230', 12),
(17, 'Chleb z mąki pełnoziarnistej', '140', 14),
(18, 'Chleb z nasionami słonecznika', '145', 1),
(19, 'Chleb z nasionami dyni', '245', 14),
(20, 'Chleb z nasionami lnu', '135', 16),
(21, 'Chleb z nasionami sezamu', '235', 7),
(22, 'Chleb z nasionami chia', '215', 8),
(23, 'Chleb z nasionami makowymi', '115', 9),
(24, 'Chleb z nasionami rzepaku', '170', 2),
(25, 'Chleb z nasionami soi', '180', 1),
(26, 'Chleb z nasionami quinoa', '185', 9),
(27, 'Chleb z nasionami amarantusa', '195', 11),
(28, 'Chleb z nasionami gryki', '200', 10),
(29, 'Chleb z nasionami proso', '125', 13),
(30, 'Chleb z nasionami komosy ryżowej', '210', 12);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lokale`
--

CREATE TABLE `lokale` (
  `id` int(10) UNSIGNED NOT NULL,
  `miasto` varchar(40) NOT NULL,
  `ilość lokali` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `lokale`
--

INSERT INTO `lokale` (`id`, `miasto`, `ilość lokali`) VALUES
(1, 'Warszawa', 1),
(2, 'Kraków', 4),
(3, 'Łódź', 2),
(4, 'Wrocław', 5),
(5, 'Poznań', 3),
(6, 'Gdańsk', 2),
(7, 'Szczecin', 1),
(8, 'Bydgoszcz', 2),
(9, 'Lublin', 5),
(10, 'Katowice', 4),
(11, 'Gdynia', 2),
(12, 'Częstochowa', 1),
(13, 'Białystok', 1),
(14, 'Radom', 2),
(15, 'Sosnowiec', 4),
(16, 'Toruń', 3),
(17, 'Kielce', 5),
(18, 'Rzeszów', 3),
(19, 'Gliwice', 4),
(20, 'Zabrze', 2),
(21, 'Olsztyn', 2),
(22, 'Bielsko-Biała', 6),
(23, 'Bytom', 1),
(24, 'Zielona', 1),
(25, 'Rybnik', 2),
(26, 'Ruda Śląska', 3),
(27, 'Opole', 1),
(28, 'Tychy', 1),
(29, 'Gorzów Wielkopolski', 4),
(30, 'Elbląg', 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wspolprace`
--

CREATE TABLE `wspolprace` (
  `id` int(10) UNSIGNED NOT NULL,
  `nazwa firmy` varchar(50) NOT NULL,
  `siedziba` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `wspolprace`
--

INSERT INTO `wspolprace` (`id`, `nazwa firmy`, `siedziba`) VALUES
(1, 'EcoThrive', 'Francja'),
(2, 'QuantumQuirk', 'Czechy'),
(3, 'NebulaNet', 'Polska'),
(4, 'PulsePioneer', 'Czechy'),
(5, 'VividVertex', 'Czechy'),
(6, 'PrimePivot', 'Niemcy'),
(7, 'GigaGlow', 'Polska'),
(8, 'MegaMingle', 'Niemcy'),
(9, 'UltraUnity', 'Niemcy'),
(10, 'TeraTrend', 'Belgia'),
(11, 'PentaPower', 'Polska'),
(12, 'HexaHarmony', 'Czechy'),
(13, 'ZetaZenith', 'Francja'),
(14, 'AlphaAim', 'Francja'),
(15, 'BetaBoost', 'Polska'),
(16, 'GammaGlide', 'Francja'),
(17, 'DeltaDive', 'Polska'),
(18, 'EpsilonEdge', 'Niemcy'),
(19, 'ZetaZoom', 'Francja'),
(20, 'EtaEssence', 'Belgia'),
(21, 'ThetaThrive', 'Czechy'),
(22, 'IotaImpact', 'Francja'),
(23, 'KappaKick', 'Niemcy'),
(24, 'LambdaLift', 'Belgia'),
(25, 'MuMove', 'Polska'),
(26, 'MuMove', 'Francja'),
(27, 'XiXplore', 'Polska'),
(28, 'OmicronOrbit', 'Czechy'),
(29, 'PiPulse', 'Polska'),
(30, 'RhoReach', 'Belgia');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
