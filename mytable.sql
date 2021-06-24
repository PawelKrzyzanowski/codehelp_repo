-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 26 Mar 2021, 10:53
-- Wersja serwera: 10.1.34-MariaDB
-- Wersja PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `projekt_1`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mytable`
--

CREATE TABLE `mytable` (
  `ID` int(11) NOT NULL,
  `jezyk` varchar(10) COLLATE utf8_polish_ci DEFAULT NULL,
  `kategoria` text COLLATE utf8_polish_ci,
  `opis` text COLLATE utf8_polish_ci,
  `przyklad` text COLLATE utf8_polish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `mytable`
--

INSERT INTO `mytable` (`ID`, `jezyk`, `kategoria`, `opis`, `przyklad`) VALUES
(0, 'SQL', 'tabela', 'zmiana kolejności kolumn', 'ALTER TABLE tabela MODIFY nazwisko VARCHAR(32) NOT NULL AFTER imie'),
(1, 'SQL', 'Bazy danych', 'Utworzenie bazy', 'CREATE DATABASE databasename;'),
(2, 'SQL', 'Bazy danych', 'Usunięcie bazy', 'DROP DATABASE databasename;'),
(3, 'SQL', 'Bazy danych', 'Backup\r\nWITH DIFFERENTIAL - tylko różnice', 'BACKUP DATABASE databasename\r\nTO DISK = \'filepath\'\r\nWITH DIFFERENTIAL;\r\n'),
(4, 'SQL', 'Bazy danych\r\nTypy danych', 'Wybrane typy danych', 'BOOLEAN\r\nINT			+/- 2mln albo do ok. 4mln\r\nSMALLINT		od -128 do 127	albo od 0 do 255\r\nBIGINT			ok 9E+/-19 ablo od 0 do ok.18E+19\r\nFLOAT(size)		size – max 24\r\nDOUBLE(size,d)		size – max 53, d – po przecinku\r\nVARCHAR(size)		size – max 8000 znaków\r\nCHAR			do 8000 znaków\r\nTEXT			do ok. 2 mln znaków\r\nTINYTEXT		do 255 znaków\r\nMEDIUMTEXT		do ok. 16,7 mln znaków\r\nLONGTEXT		do ok. 4 mld. znaków\r\nDATE			RRRR-MM-DD\r\nTIME			HH:MM:SS\r\nDATETIME		RRRR-MM-DD HH:MM:SS'),
(5, 'SQL', 'Tabele', 'Usunięcie całej tabeli', 'DROP TABLE mytable;'),
(6, 'SQL', 'Tabele', 'Usunięcie wszystkich wierszy z tabeli', 'TRUNCATE TABLE mytable;'),
(7, 'SQL', 'Tabele', 'Usunięcie całej tabeli', 'DROP TABLE mytable;'),
(8, 'SQL', 'Tabele', 'Usunięcie wszystkich wierszy z tabeli', 'TRUNCATE TABLE mytable;'),
(9, 'SQL', 'Tabele', 'Wybór początkowej wartości dla autoinkrementacji', 'ALTER TABLE myID AUTO_INCREMENT=100;'),
(10, 'SQL', 'Tabele', 'Dodanie kolumny', 'ALTER TABLE mytable\r\nADD columName VARCHAR(100) ;\r\n'),
(11, 'SQL', 'Tabele', 'Wybór początkowej wartości dla autoinkrementacji', 'ALTER TABLE myID AUTO_INCREMENT=100;'),
(12, 'HTML', 'Szablon', 'szablon pustej strony', '<!DOCTYPE HTML>\r\n<html lang=\"pl\">\r\n<head>\r\n	<meta charset=\"utf-8\" />\r\n	<title>Mój tytuł!</title>\r\n	<meta name=\"description\" content=\"Opis zawartości\" />\r\n	<meta name=\"keywords\" content=\"moja, strona, opis, tytuł, zawartość\" />\r\n	<meta http-equiv=\"X-UA-Compatibile\" content=\"IE=edge, chrome=1\" />\r\n	<!--<link rel=\"stylesheet\" href=\"style.css\" type=\"text/css\"/>-->\r\n	<!--<script type=\"text/javascript\" src=\"javascript.js\"> </script>-->\r\n</head>\r\n<body>\r\n</body>\r\n</html>'),
(13, 'HTML', 'tabela', 'sparametryzowana tabela HTML, jeden wiersz dla wielu wierszy tabeli SQL, width=\"90%\", align=\"justify\"\r\n', '<table width=\"900\" align=\"center\" border=\"1\" bordercolor=\"#d5d5d5\" cellpadding=\"0\" cellspacing=\"0\">     \r\n<tr>\r\n</tr>\r\n</table>'),
(14, 'PHP', 'konfiguracja serwera', 'Konfiguracja serwera PHP,\r\nwyłączenie wyświetlania bełędów serwera w przeglądarce.\r\nużycie - na początku', 'ini_set(\"display_errors\", 0);'),
(15, 'PHP', 'include, załączenie pliku', 'Jednorazowe załączenie pliku (bez powtórzeń), include', 'require_once \'connect.php\';'),
(16, 'PHP', 'bazy danych', 'połączenie z bazą danych', 'ini_set(\"display_errors\", 0);\r\nrequire_once \'dbconnect.php\';\r\n$polaczenie = mysqli_connect($host, $user, $password);\r\nmysqli_query($polaczenie, \"SET CHARSET utf8\");\r\nmysqli_query($polaczenie, \"SET NAMES \'utf8\' COLLATE \'utf8_polish_ci\'\");\r\nmysqli_select_db($polaczenie, $database);'),
(17, 'PHP', 'bazy danych', 'skrypt z danymi potrzebnymi do połączenia strony z bazą danych', '<?php\r\n	$host=\"localhost\";		// Nazwa hosta\r\n	$user=\"root\"; 			// Nazwa użytkownika - domyślnie: root\r\n	$password=\"\"; 			// Haslo do bazy\r\n	$database=\"quiz\";	 	// Nazwa bazy\r\n	$table=\"pytania\" 		// Nazwa tabeli	\r\n?>'),
(18, 'SQL', 'Tabela', 'Dodatnie wiersza z danymi\r\n', 'INSERT INTO mytable (ID,jezyk, opis, przyklad) VALUES (int,’varchar’, \'text1\',\'text2\');\r\n\r\nalbo\r\n\r\nINSERT INTO mytable VALUES (1, ‘text’, … )'),
(19, 'SQL', 'Tabele', 'Usunięcie wiersza z danymi', 'DELETE FROM mytable WHERE id=1;'),
(20, 'SQL', 'Tabele', 'Dodanie tabeli z kluczem głównym i autoinkrementacją.', 'CREATE TABLE tabela (\r\nid INT NOT NULL AUTO_INCREMENT,\r\nImie Varchar(200),\r\nNazwisko VARCHAR(200),\r\nPRIMARY KEY (id)\r\n)'),
(21, 'SQL', 'tabela', 'zmiana kolejności kolumn', 'ALTER TABLE tabela MODIFY nazwisko VARCHAR(32) NOT NULL AFTER imie'),
(22, 'SQL', 'tabele, klucze', 'tworzenie tabeli z kluczem obcym', 'CREATE TABLE Orders (\r\n    OrderID int NOT NULL,\r\n    OrderNumber int NOT NULL,\r\n    PersonID int,\r\n    PRIMARY KEY (OrderID),\r\n    CONSTRAINT FK_PersonOrder FOREIGN KEY (PersonID)\r\n    REFERENCES Persons(PersonID)\r\n);'),
(23, 'SQL', 'tabele, klucze', 'Dodanie klucza obcego do istniejącej tabeli', 'ALTER TABLE Orders\r\nADD CONSTRAINT FK_PersonOrder\r\nFOREIGN KEY (PersonID) REFERENCES Persons(PersonID);'),
(24, 'SQL', 'Tabele', 'Zmiana nazwy tabeli', 'ALTER TABLE table_name\r\nRENAME TO new_table_name;\r\n');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `mytable`
--
ALTER TABLE `mytable`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
