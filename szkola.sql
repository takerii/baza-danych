-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Lis 14, 2024 at 07:34 PM
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
-- Database: `szkola`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dyrekcja`
--

CREATE TABLE `dyrekcja` (
  `id` int(11) NOT NULL,
  `imie` varchar(50) NOT NULL,
  `nazwisko` varchar(50) NOT NULL,
  `telefon` varchar(50) DEFAULT NULL,
  `stanowisko` varchar(50) DEFAULT NULL,
  `data_urodzenia` date DEFAULT NULL,
  `adres` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dyrekcja`
--

INSERT INTO `dyrekcja` (`id`, `imie`, `nazwisko`, `telefon`, `stanowisko`, `data_urodzenia`, `adres`) VALUES
(1, 'Jan', 'Kowalski', '700-123-456', 'Dyrektor', '1975-06-15', 'ul. Leśna 5, 85-000 Bydgoszcz'),
(2, 'Anna', 'Nowak', '701-234-567', 'Wicedyrektor', '1980-08-22', 'ul. Sosnowa 11, 85-000 Bydgoszcz'),
(3, 'Piotr', 'Wiśniewski', '702-345-678', 'Sekretarz', '1990-03-30', 'ul. Brzozowa 20, 85-000 Bydgoszcz');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `inwentarz`
--

CREATE TABLE `inwentarz` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(100) NOT NULL,
  `kategoria` varchar(50) DEFAULT NULL,
  `ilosc` int(11) NOT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `data_zakupu` date DEFAULT NULL,
  `stan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inwentarz`
--

INSERT INTO `inwentarz` (`id`, `nazwa`, `kategoria`, `ilosc`, `sale_id`, `data_zakupu`, `stan`) VALUES
(1, 'Kreda', 'Materiały biurowe', 100, 1, '2023-01-10', 'Nowy'),
(2, 'Pisaki', 'Materiały biurowe', 50, 2, '2023-02-15', 'Używany'),
(3, 'Tablica', 'Sprzęt szkolny', 10, 3, '2022-09-01', 'Używany'),
(4, 'Komputer', 'Sprzęt elektroniczny', 20, 8, '2021-03-22', 'Używany'),
(5, 'Biurko nauczycielskie', 'Meble', 15, 1, '2020-08-10', 'Używany'),
(6, 'Krzesła', 'Meble', 30, 1, '2020-08-10', 'Używany'),
(7, 'Mikroskop', 'Sprzęt laboratoryjny', 5, 4, '2021-05-12', 'Nowy'),
(8, 'Kalkulator', 'Sprzęt biurowy', 10, 5, '2023-03-15', 'Nowy'),
(9, 'Projektor', 'Sprzęt elektroniczny', 3, 8, '2023-06-20', 'Nowy'),
(10, 'Drukarka', 'Sprzęt elektroniczny', 2, 8, '2020-02-01', 'Używany');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `nauczyciele`
--

CREATE TABLE `nauczyciele` (
  `id` int(11) NOT NULL,
  `imie` varchar(50) NOT NULL,
  `nazwisko` varchar(50) NOT NULL,
  `telefon` varchar(50) DEFAULT NULL,
  `przedmiot` varchar(50) DEFAULT NULL,
  `data_urodzenia` date DEFAULT NULL,
  `adres` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nauczyciele`
--

INSERT INTO `nauczyciele` (`id`, `imie`, `nazwisko`, `telefon`, `przedmiot`, `data_urodzenia`, `adres`) VALUES
(1, 'Anna', 'Kowalska', '123-456-789', 'Matematyka', '1985-04-12', 'ul. Podolska 10, 85-000 Bydgoszcz'),
(2, 'Piotr', 'Nowak', '987-654-321', 'Fizyka', '1980-02-20', 'ul. Dworcowa 5, 85-000 Bydgoszcz'),
(3, 'Maria', 'Zielińska', '555-666-777', 'Biologia', '1990-09-15', 'ul. Lipowa 12, 85-000 Bydgoszcz'),
(4, 'Jan', 'Wiśniewski', '111-222-333', 'Chemia', '1975-12-25', 'ul. Polna 8, 85-000 Bydgoszcz'),
(5, 'Ewa', 'Kaczmarek', '444-555-666', 'Historia', '1988-11-30', 'ul. Słowiańska 22, 85-000 Bydgoszcz'),
(6, 'Marek', 'Pawlak', '666-777-888', 'Informatyka', '1979-03-03', 'ul. Gdańska 25, 85-000 Bydgoszcz'),
(7, 'Katarzyna', 'Wójcik', '333-444-555', 'Geografia', '1983-07-14', 'ul. Kujawska 3, 85-000 Bydgoszcz'),
(8, 'Tomasz', 'Kwiatkowski', '222-333-444', 'Wychowanie fizyczne', '1992-01-22', 'ul. Toruńska 7, 85-000 Bydgoszcz'),
(9, 'Zofia', 'Szymańska', '888-999-000', 'Język angielski', '1987-06-10', 'ul. Witebska 14, 85-000 Bydgoszcz');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownicy`
--

CREATE TABLE `pracownicy` (
  `id` int(11) NOT NULL,
  `imie` varchar(50) NOT NULL,
  `nazwisko` varchar(50) NOT NULL,
  `telefon` varchar(50) DEFAULT NULL,
  `stanowisko` varchar(50) DEFAULT NULL,
  `data_urodzenia` date DEFAULT NULL,
  `adres` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pracownicy`
--

INSERT INTO `pracownicy` (`id`, `imie`, `nazwisko`, `telefon`, `stanowisko`, `data_urodzenia`, `adres`) VALUES
(1, 'Maria', 'Kowalczyk', '710-123-456', 'Sprzątaczka', '1965-12-04', 'ul. Długa 15, 85-000 Bydgoszcz'),
(2, 'Andrzej', 'Wesołowski', '711-234-567', 'Woźny', '1970-03-18', 'ul. Krótka 8, 85-000 Bydgoszcz'),
(3, 'Barbara', 'Nowicka', '712-345-678', 'Sprzątaczka', '1978-05-22', 'ul. Różana 9, 85-000 Bydgoszcz');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sale`
--

CREATE TABLE `sale` (
  `id` int(11) NOT NULL,
  `nazwa_sali` varchar(50) NOT NULL,
  `przedmiot` varchar(50) NOT NULL,
  `nauczyciel_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`id`, `nazwa_sali`, `przedmiot`, `nauczyciel_id`) VALUES
(1, 'Sala 101', 'Matematyka', 1),
(2, 'Sala 102', 'Język Polski', 2),
(3, 'Sala 103', 'Historia', 5),
(4, 'Sala 104', 'Biologia', 3),
(5, 'Sala 105', 'Chemia', 4),
(6, 'Sala 106', 'Geografia', 7),
(7, 'Sala 107', 'Fizyka', 2),
(8, 'Sala 108', 'Informatyka', 6),
(9, 'Sala Gimnastyczna', 'Wychowanie fizyczne', 8);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uczniowie_1a`
--

CREATE TABLE `uczniowie_1a` (
  `id` int(11) NOT NULL,
  `imie` varchar(50) NOT NULL,
  `nazwisko` varchar(50) NOT NULL,
  `telefon_rodzica` varchar(50) DEFAULT NULL,
  `data_urodzenia` date DEFAULT NULL,
  `wychowawca_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uczniowie_1a`
--

INSERT INTO `uczniowie_1a` (`id`, `imie`, `nazwisko`, `telefon_rodzica`, `data_urodzenia`, `wychowawca_id`) VALUES
(1, 'Kacper', 'Nowak', '601-234-567', '2010-05-12', 1),
(2, 'Ola', 'Wiśniewska', '602-345-678', '2010-11-23', 1),
(3, 'Michał', 'Kwiatkowski', '603-456-789', '2010-03-07', 1),
(4, 'Julia', 'Zielińska', '604-567-890', '2010-08-19', 1),
(5, 'Filip', 'Szymański', '605-678-901', '2010-02-22', 1),
(6, 'Weronika', 'Pawlak', '606-789-012', '2010-06-15', 1),
(7, 'Łukasz', 'Kaczmarek', '607-890-123', '2010-01-25', 1),
(8, 'Patryk', 'Pietrzak', '608-901-234', '2010-04-10', 1),
(9, 'Natalia', 'Sikora', '609-012-345', '2010-12-02', 1),
(10, 'Jakub', 'Jankowski', '610-123-456', '2010-09-11', 1),
(11, 'Karolina', 'Kowalczyk', '611-234-567', '2010-07-08', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uczniowie_1b`
--

CREATE TABLE `uczniowie_1b` (
  `id` int(11) NOT NULL,
  `imie` varchar(50) NOT NULL,
  `nazwisko` varchar(50) NOT NULL,
  `telefon_rodzica` varchar(50) DEFAULT NULL,
  `data_urodzenia` date DEFAULT NULL,
  `wychowawca_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uczniowie_1b`
--

INSERT INTO `uczniowie_1b` (`id`, `imie`, `nazwisko`, `telefon_rodzica`, `data_urodzenia`, `wychowawca_id`) VALUES
(1, 'Igor', 'Nowak', '616-789-012', '2010-05-03', 4),
(2, 'Kasia', 'Wójcik', '617-890-123', '2010-06-18', 4),
(3, 'Paweł', 'Wiśniewski', '618-901-234', '2010-04-10', 4),
(4, 'Ania', 'Kaczmarek', '619-012-345', '2010-08-11', 4),
(5, 'Bartek', 'Zawisza', '620-123-456', '2010-02-07', 4),
(6, 'Dominika', 'Kowalska', '621-234-567', '2010-12-19', 4),
(7, 'Sebastian', 'Malinowski', '622-345-678', '2010-09-22', 4),
(8, 'Iga', 'Nowakowska', '623-456-789', '2010-11-01', 4),
(9, 'Kuba', 'Lipiński', '624-567-890', '2010-01-28', 4);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uczniowie_2a`
--

CREATE TABLE `uczniowie_2a` (
  `id` int(11) NOT NULL,
  `imie` varchar(50) NOT NULL,
  `nazwisko` varchar(50) NOT NULL,
  `telefon_rodzica` varchar(50) DEFAULT NULL,
  `data_urodzenia` date DEFAULT NULL,
  `wychowawca_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uczniowie_2a`
--

INSERT INTO `uczniowie_2a` (`id`, `imie`, `nazwisko`, `telefon_rodzica`, `data_urodzenia`, `wychowawca_id`) VALUES
(1, 'Ewa', 'Lewandowska', '631-234-567', '2009-05-12', 3),
(2, 'Wojtek', 'Witkowski', '632-345-678', '2009-03-10', 3),
(3, 'Zofia', 'Michałowska', '633-456-789', '2009-07-21', 3),
(4, 'Łukasz', 'Stefanowski', '634-567-890', '2009-04-15', 3),
(5, 'Krystian', 'Kwiatkowski', '635-678-901', '2009-06-17', 3),
(6, 'Ola', 'Pietras', '636-789-012', '2009-08-22', 3),
(7, 'Daria', 'Rogalska', '637-890-123', '2009-01-03', 3),
(8, 'Tomek', 'Ślusarczyk', '638-901-234', '2009-11-05', 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uczniowie_2b`
--

CREATE TABLE `uczniowie_2b` (
  `id` int(11) NOT NULL,
  `imie` varchar(50) NOT NULL,
  `nazwisko` varchar(50) NOT NULL,
  `telefon_rodzica` varchar(50) DEFAULT NULL,
  `data_urodzenia` date DEFAULT NULL,
  `wychowawca_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uczniowie_2b`
--

INSERT INTO `uczniowie_2b` (`id`, `imie`, `nazwisko`, `telefon_rodzica`, `data_urodzenia`, `wychowawca_id`) VALUES
(1, 'Karol', 'Wójcik', '646-789-012', '2009-05-01', 8),
(2, 'Marta', 'Zalewska', '647-890-123', '2009-10-05', 8),
(3, 'Paweł', 'Szymański', '648-901-234', '2009-04-20', 8),
(4, 'Kamil', 'Pawlak', '649-012-345', '2009-07-11', 8),
(5, 'Agata', 'Nowakowska', '650-123-456', '2009-01-13', 8),
(6, 'Mateusz', 'Krukowski', '651-234-567', '2009-09-29', 8),
(7, 'Michał', 'Górski', '652-345-678', '2009-02-03', 8),
(8, 'Alicja', 'Bąk', '653-456-789', '2009-06-06', 8),
(9, 'Grzegorz', 'Sikorski', '654-567-890', '2009-08-10', 8),
(10, 'Zuzanna', 'Kowalczyk', '655-678-901', '2009-12-18', 8),
(11, 'Wojciech', 'Pietrzak', '656-789-012', '2009-10-02', 8),
(12, 'Krystyna', 'Adamczak', '657-890-123', '2009-03-04', 8);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `dyrekcja`
--
ALTER TABLE `dyrekcja`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `inwentarz`
--
ALTER TABLE `inwentarz`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_id` (`sale_id`);

--
-- Indeksy dla tabeli `nauczyciele`
--
ALTER TABLE `nauczyciele`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nauczyciel_id` (`nauczyciel_id`);

--
-- Indeksy dla tabeli `uczniowie_1a`
--
ALTER TABLE `uczniowie_1a`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wychowawca_id` (`wychowawca_id`);

--
-- Indeksy dla tabeli `uczniowie_1b`
--
ALTER TABLE `uczniowie_1b`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wychowawca_id` (`wychowawca_id`);

--
-- Indeksy dla tabeli `uczniowie_2a`
--
ALTER TABLE `uczniowie_2a`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wychowawca_id` (`wychowawca_id`);

--
-- Indeksy dla tabeli `uczniowie_2b`
--
ALTER TABLE `uczniowie_2b`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wychowawca_id` (`wychowawca_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dyrekcja`
--
ALTER TABLE `dyrekcja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `inwentarz`
--
ALTER TABLE `inwentarz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `nauczyciele`
--
ALTER TABLE `nauczyciele`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pracownicy`
--
ALTER TABLE `pracownicy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sale`
--
ALTER TABLE `sale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `uczniowie_1a`
--
ALTER TABLE `uczniowie_1a`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `uczniowie_1b`
--
ALTER TABLE `uczniowie_1b`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `uczniowie_2a`
--
ALTER TABLE `uczniowie_2a`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `uczniowie_2b`
--
ALTER TABLE `uczniowie_2b`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `inwentarz`
--
ALTER TABLE `inwentarz`
  ADD CONSTRAINT `inwentarz_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `sale` (`id`);

--
-- Constraints for table `sale`
--
ALTER TABLE `sale`
  ADD CONSTRAINT `sale_ibfk_1` FOREIGN KEY (`nauczyciel_id`) REFERENCES `nauczyciele` (`id`);

--
-- Constraints for table `uczniowie_1a`
--
ALTER TABLE `uczniowie_1a`
  ADD CONSTRAINT `uczniowie_1a_ibfk_1` FOREIGN KEY (`wychowawca_id`) REFERENCES `nauczyciele` (`id`);

--
-- Constraints for table `uczniowie_1b`
--
ALTER TABLE `uczniowie_1b`
  ADD CONSTRAINT `uczniowie_1b_ibfk_1` FOREIGN KEY (`wychowawca_id`) REFERENCES `nauczyciele` (`id`);

--
-- Constraints for table `uczniowie_2a`
--
ALTER TABLE `uczniowie_2a`
  ADD CONSTRAINT `uczniowie_2a_ibfk_1` FOREIGN KEY (`wychowawca_id`) REFERENCES `nauczyciele` (`id`);

--
-- Constraints for table `uczniowie_2b`
--
ALTER TABLE `uczniowie_2b`
  ADD CONSTRAINT `uczniowie_2b_ibfk_1` FOREIGN KEY (`wychowawca_id`) REFERENCES `nauczyciele` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
