-- phpMyAdmin SQL Dump
-- version 4.2.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Czas generowania: 17 Lut 2015, 11:43
-- Wersja serwera: 5.6.20
-- Wersja PHP: 5.4.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Baza danych: `SPA`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Basen`
--

CREATE TABLE IF NOT EXISTS `Basen` (
  `ID_KLIENTA` int(11) NOT NULL,
  `TYP` text NOT NULL,
  `DATA_REZER` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `Basen`
--

INSERT INTO `Basen` (`ID_KLIENTA`, `TYP`, `DATA_REZER`) VALUES
(1111, 'KRYTY', 9092014),
(2222, 'OTWARTY', 2062014),
(3333, 'KRYTY', 40414);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Jacuzzi`
--

CREATE TABLE IF NOT EXISTS `Jacuzzi` (
  `ID_KLIENTA` int(11) NOT NULL,
  `DATA_REZER` text NOT NULL,
  `CZAS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `Jacuzzi`
--

INSERT INTO `Jacuzzi` (`ID_KLIENTA`, `DATA_REZER`, `CZAS`) VALUES
(1111, '04042014', 4),
(2223, '09092014', 2),
(1212, '04022014', 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Kolacja`
--

CREATE TABLE IF NOT EXISTS `Kolacja` (
  `ID_KLIENTA` int(11) NOT NULL,
  `NR_ZESTAWU` int(11) NOT NULL,
  `POKOJ` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `Kolacja`
--

INSERT INTO `Kolacja` (`ID_KLIENTA`, `NR_ZESTAWU`, `POKOJ`) VALUES
(2221, 2, 231),
(2122, 1, 544),
(2422, 4, 211);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Masaz`
--

CREATE TABLE IF NOT EXISTS `Masaz` (
  `ID_KLIENTA` int(11) NOT NULL,
  `NR_MASAZYSTY` int(11) NOT NULL,
  `NR_SALI` int(11) NOT NULL,
  `DATA_REZER` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `Masaz`
--

INSERT INTO `Masaz` (`ID_KLIENTA`, `NR_MASAZYSTY`, `NR_SALI`, `DATA_REZER`) VALUES
(5555, 5, 3, 9042015),
(5555, 5, 3, 9042015),
(5555, 5, 3, 9042015);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Sauna`
--

CREATE TABLE IF NOT EXISTS `Sauna` (
  `ID_KLIENTA` int(11) NOT NULL,
  `NR_SAUNY` int(11) NOT NULL,
  `DATA_REZER` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `Sauna`
--

INSERT INTO `Sauna` (`ID_KLIENTA`, `NR_SAUNY`, `DATA_REZER`) VALUES
(1222, 3, 8082014),
(1211, 2, 4042014),
(1111, 2, 4042014);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
