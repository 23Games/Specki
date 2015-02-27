-- 1 i 2
CREATE DATABASE user;

-- 3
USE USER;

-- 5 i 6
CREATE TABLE IF NOT EXISTS `dane` (
	`id` int(11) NOT NULL,
	`imie` varchar(18) NOT NULL,
	`nazwisko` varchar(25) NOT NULL,
	`email` varchar(60) NOT NULL,
	`ulica` varchar(40) NOT NULL,
	`miasto` varchar(40) NOT NULL,
	`data_ur` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
	
ALTER TABLE `dane`
 ADD PRIMARY KEY (`id`);

-- 7
SHOW TABLES;

-- 8
SHOW DATABASES;

-- 9
INSERT INTO `dane` (`id`, `imie`, `nazwisko`, `email`, `ulica`, `miasto`, `data_ur`) VALUES
	(1, 'Adam', 'Nowak', 'anoasdwak@malpa.pl', 'tak 23/3', 'Wałcz', '1995-12-12'),
	(2, 'Tomek', 'Kowalski', 'mkowsadasdalski@siewo.net', 'pocztowa 23/3', 'siewigrag', '1995-08-03'),
	(3, 'Arek', 'Sienkiewicz', 'pdsadsien@mtrolwgadolo.com', 'mleczna 23/3', 'niedzwiedz', '1990-05-06'),
	(4, 'Karek', 'Kowalski', 'mkhfdhadhowalski@jest.guru', 'pocztowa 23/3', 'niekursk', '1990-04-02');

-- 10
INSERT INTO `dane` (`id`, `imie`, `nazwisko`, `email`) VALUES
	(5, 'Adam', 'Kowalski', 'adam@firma.com.pl');
	
-- 11
SELECT * FROM dane;
	
-- 12
SELECT id FROM dane;

-- 13
SELECT `imie`,`id`,`id`,`id` FROM `dane`;

-- 14
SELECT * FROM `dane` WHERE data_ur  < '19920101';

-- 15
SELECT * FROM `dane` WHERE `miasto` = "Wałcz";

-- 16
SELECT * FROM `dane` WHERE `miasto` != "Wałcz" AND data_ur < '19920101';

-- 17
SELECT * FROM `dane` ORDER BY `nazwisko` ASC;

-- 18
SELECT *,(YEAR(CURDATE()) - YEAR(data_ur)) - (RIGHT(CURDATE(), 5) < RIGHT(data_ur, 5)) AS wiek FROM dane;


-- EMAILe, czyli zad 19 i 20

-- Zad 21
CREATE TABLE IF NOT EXISTS `skrzynka`(
	`id` int(11) NOT NULL,
	`listy` int(11) NOT NULL,
	`email` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
SHOW COLUMNS FROM `skrzynka`;

INSERT INTO `skrzynka` (`id`,`email`,`listy`) VALUES
	(1, 'anoasdwak@malpa.pl', 555),
	(2, 'anoasdwak@malpa.pl', 666),
	(3, 'anoasdwak@malpa.pl', 0);

-- 22
SELECT * FROM `skrzynka`;

-- 23
SELECT * FROM skrzynka INNER JOIN dane ON dane.email=skrzynka.email;

-- 24
DELETE FROM dane WHERE `miasto` = "Wałcz";

-- 25
DELETE FROM skrzynka WHERE `listy` > 10;

-- 26
INSERT INTO `dane` (`id`, `imie`, `nazwisko`) VALUES (6, 'Darek', 'Kasza');

-- 27
UPDATE `dane` SET `email`="kasza@sklep.kasza.pl",`miasto`="Mirosławiec" WHERE `id`=6;

--
DROP DATABASE user;