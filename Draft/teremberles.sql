-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Nov 06. 11:00
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `teremberles`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `berbeado`
--

CREATE TABLE `berbeado` (
  `berbeadoId` int(11) NOT NULL,
  `nev` text DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `nem` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `berlo`
--

CREATE TABLE `berlo` (
  `berloId` int(11) NOT NULL,
  `nev` text DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `nem` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `foglalas`
--

CREATE TABLE `foglalas` (
  `foglalasId` int(11) NOT NULL,
  `teremId` int(11) DEFAULT NULL,
  `berloId` int(11) DEFAULT NULL,
  `foglalasIdo` datetime DEFAULT NULL,
  `datum` datetime DEFAULT NULL,
  `hossz` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `terem`
--

CREATE TABLE `terem` (
  `teremId` int(11) NOT NULL,
  `teremNev` varchar(50) DEFAULT NULL,
  `berbeadoId` int(11) DEFAULT NULL,
  `helyszin` varchar(100) DEFAULT NULL,
  `meret` varchar(10) DEFAULT NULL,
  `ar` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `berbeado`
--
ALTER TABLE `berbeado`
  ADD PRIMARY KEY (`berbeadoId`);

--
-- A tábla indexei `berlo`
--
ALTER TABLE `berlo`
  ADD PRIMARY KEY (`berloId`);

--
-- A tábla indexei `foglalas`
--
ALTER TABLE `foglalas`
  ADD PRIMARY KEY (`foglalasId`);

--
-- A tábla indexei `terem`
--
ALTER TABLE `terem`
  ADD PRIMARY KEY (`teremId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
