-- phpMyAdmin SQL Dump
-- version 4.2.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Czas generowania: 13 Lut 2015, 11:58
-- Wersja serwera: 5.6.20
-- Wersja PHP: 5.4.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Baza danych: `zadanko1`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dostawcy`
--

CREATE TABLE IF NOT EXISTS `dostawcy` (
`id_dostawcy` int(11) NOT NULL,
  `nazwa_firmy` date NOT NULL,
  `adres` text NOT NULL,
  `miasto` int(11) NOT NULL,
  `kraj` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dostawy`
--

CREATE TABLE IF NOT EXISTS `dostawy` (
`nr_dostawy` int(11) NOT NULL,
  `id_dostawcy` int(11) NOT NULL,
  `data_zam` date NOT NULL,
  `data_przyjecia` date NOT NULL,
  `nr_kaalog_tow` int(11) NOT NULL,
  `ilosc` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klienci`
--

CREATE TABLE IF NOT EXISTS `klienci` (
`id_klienta` int(11) NOT NULL,
  `nazwa_firmy` text NOT NULL,
  `adres` text NOT NULL,
  `miasto` text NOT NULL,
  `nr_tel` int(9) NOT NULL,
  `nr_fax` int(9) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oferty_dostawcow`
--

CREATE TABLE IF NOT EXISTS `oferty_dostawcow` (
`id_dostawcy` int(11) NOT NULL,
  `nr_katalog_towaru` int(11) NOT NULL,
  `cena` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pozycje_zamowienia`
--

CREATE TABLE IF NOT EXISTS `pozycje_zamowienia` (
`nr_zam` int(11) NOT NULL,
  `nr_kat_tow` int(11) NOT NULL,
  `ilosc_zam` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `towary`
--

CREATE TABLE IF NOT EXISTS `towary` (
`nr_katalog_towaru` int(11) NOT NULL,
  `rodzaj_towaru` int(11) NOT NULL,
  `nazwa_producenta` text NOT NULL,
  `model` text NOT NULL,
  `cena_sprzed` float NOT NULL,
  `ilosc_w_mag` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE IF NOT EXISTS `zamowienia` (
`nr_zam` int(11) NOT NULL,
  `data_zam` date NOT NULL,
  `id_klienta` int(11) NOT NULL,
  `wartosc_zamowienia` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `dostawcy`
--
ALTER TABLE `dostawcy`
 ADD PRIMARY KEY (`id_dostawcy`);

--
-- Indexes for table `dostawy`
--
ALTER TABLE `dostawy`
 ADD PRIMARY KEY (`nr_dostawy`);

--
-- Indexes for table `klienci`
--
ALTER TABLE `klienci`
 ADD PRIMARY KEY (`id_klienta`);

--
-- Indexes for table `oferty_dostawcow`
--
ALTER TABLE `oferty_dostawcow`
 ADD PRIMARY KEY (`id_dostawcy`);

--
-- Indexes for table `pozycje_zamowienia`
--
ALTER TABLE `pozycje_zamowienia`
 ADD PRIMARY KEY (`nr_zam`);

--
-- Indexes for table `towary`
--
ALTER TABLE `towary`
 ADD PRIMARY KEY (`nr_katalog_towaru`);

--
-- Indexes for table `zamowienia`
--
ALTER TABLE `zamowienia`
 ADD PRIMARY KEY (`nr_zam`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `dostawcy`
--
ALTER TABLE `dostawcy`
MODIFY `id_dostawcy` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `dostawy`
--
ALTER TABLE `dostawy`
MODIFY `nr_dostawy` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `klienci`
--
ALTER TABLE `klienci`
MODIFY `id_klienta` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `oferty_dostawcow`
--
ALTER TABLE `oferty_dostawcow`
MODIFY `id_dostawcy` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `pozycje_zamowienia`
--
ALTER TABLE `pozycje_zamowienia`
MODIFY `nr_zam` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `towary`
--
ALTER TABLE `towary`
MODIFY `nr_katalog_towaru` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
MODIFY `nr_zam` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
