-- phpMyAdmin SQL Dump
-- version 4.2.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Czas generowania: 16 Lut 2015, 10:46
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
) ENGINE=MyISAM AUTO_INCREMENT=124125 DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `dostawcy`
--

INSERT INTO `dostawcy` (`id_dostawcy`, `nazwa_firmy`, `adres`, `miasto`, `kraj`) VALUES
(121, '0000-00-00', 'ul.Maja', 0, 0),
(141, '0000-00-00', 'ul.swita', 0, 0),
(171, '0000-00-00', 'ul.bieda', 0, 0),
(124, '0000-00-00', 'ul.kita', 0, 0),
(34634, '0000-00-00', 'Gniewosz', 0, 0),
(124124, '0000-00-00', 'kipzung', 0, 0);

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
) ENGINE=MyISAM AUTO_INCREMENT=3255236 DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `dostawy`
--

INSERT INTO `dostawy` (`nr_dostawy`, `id_dostawcy`, `data_zam`, `data_przyjecia`, `nr_kaalog_tow`, `ilosc`) VALUES
(155, 125412, '0000-00-00', '0000-00-00', 123132, 132312),
(658, 778, '0000-00-00', '0000-00-00', 5645, 745778),
(98987, 679089, '0000-00-00', '0000-00-00', 879678, 8678678),
(3255235, 6436, '0000-00-00', '0000-00-00', 637547, 7346437),
(12441, 51235, '0000-00-00', '0000-00-00', 45436, 214124);

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
) ENGINE=MyISAM AUTO_INCREMENT=235233 DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `klienci`
--

INSERT INTO `klienci` (`id_klienta`, `nazwa_firmy`, `adres`, `miasto`, `nr_tel`, `nr_fax`) VALUES
(15125, 'Miedz', 'tuk', 'miso', 67568776, 67456456),
(2145, 'Mirak', 'Wieprz', 'Witaj', 53252352, 12412444),
(5232, 'Witum', 'Izaka', 'Hanki', 412525, 51251251),
(12556, 'Pimo', 'Pomoc', 'Warszawa', 634634534, 534534554),
(235232, 'Nipoc', 'Liepno', 'Lipun', 4214, 532523),
(142552, 'Molek', 'bitwy', 'Kraków', 46346345, 42356666),
(2575, 'gimo', 'Kilka', 'Wies', 125152512, 1525211525);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oferty_dostawcow`
--

CREATE TABLE IF NOT EXISTS `oferty_dostawcow` (
`id_dostawcy` int(11) NOT NULL,
  `nr_katalog_towaru` int(11) NOT NULL,
  `cena` float NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2352533 DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `oferty_dostawcow`
--

INSERT INTO `oferty_dostawcow` (`id_dostawcy`, `nr_katalog_towaru`, `cena`) VALUES
(56565, 34634, 55555),
(2352532, 532352, 532352),
(32523, 342234, 12325),
(523253, 423423, 124124),
(214125, 15212, 124124);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pozycje_zamowienia`
--

CREATE TABLE IF NOT EXISTS `pozycje_zamowienia` (
`nr_zam` int(11) NOT NULL,
  `nr_kat_tow` int(11) NOT NULL,
  `ilosc_zam` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3445235 DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `pozycje_zamowienia`
--

INSERT INTO `pozycje_zamowienia` (`nr_zam`, `nr_kat_tow`, `ilosc_zam`) VALUES
(124124, 13212, 312445),
(3445234, 324325, 5325235),
(325235, 23423, 44324),
(532523, 222234, 451324),
(25353, 12412, 36443);

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
) ENGINE=MyISAM AUTO_INCREMENT=2147483648 DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `towary`
--

INSERT INTO `towary` (`nr_katalog_towaru`, `rodzaj_towaru`, `nazwa_producenta`, `model`, `cena_sprzed`, `ilosc_w_mag`) VALUES
(12412123, 0, 'Nestle', 'Nokia', 512512, 12),
(145355, 0, 'Grzybek', 'Halucyn', 23523, 423535),
(35346, 0, 'Ziepy', 'LD', 1212520, 214142),
(1241255, 0, 'Gary', 'grypa', 124, 124444),
(123553, 0, 'Lipek', 'Mibok', 125, 23553),
(2147483647, 0, 'Bitwaka', 'spj5', 100, 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE IF NOT EXISTS `zamowienia` (
`nr_zam` int(11) NOT NULL,
  `data_zam` date NOT NULL,
  `id_klienta` int(11) NOT NULL,
  `wartosc_zamowienia` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=532523533 DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `zamowienia`
--

INSERT INTO `zamowienia` (`nr_zam`, `data_zam`, `id_klienta`, `wartosc_zamowienia`) VALUES
(513253, '0000-00-00', 214425, 15245),
(532523532, '0000-00-00', 2345235, 124124),
(125125, '0000-00-00', 532523, 523432432),
(32423566, '0000-00-00', 6346234, 423423),
(53262, '0000-00-00', 63463, 3455),
(12412, '0000-00-00', 1123, 124412);

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
MODIFY `id_dostawcy` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=124125;
--
-- AUTO_INCREMENT dla tabeli `dostawy`
--
ALTER TABLE `dostawy`
MODIFY `nr_dostawy` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3255236;
--
-- AUTO_INCREMENT dla tabeli `klienci`
--
ALTER TABLE `klienci`
MODIFY `id_klienta` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=235233;
--
-- AUTO_INCREMENT dla tabeli `oferty_dostawcow`
--
ALTER TABLE `oferty_dostawcow`
MODIFY `id_dostawcy` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2352533;
--
-- AUTO_INCREMENT dla tabeli `pozycje_zamowienia`
--
ALTER TABLE `pozycje_zamowienia`
MODIFY `nr_zam` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3445235;
--
-- AUTO_INCREMENT dla tabeli `towary`
--
ALTER TABLE `towary`
MODIFY `nr_katalog_towaru` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2147483648;
--
-- AUTO_INCREMENT dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
MODIFY `nr_zam` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=532523533;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
