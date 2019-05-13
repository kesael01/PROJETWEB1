-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 16 août 2018 à 11:45
-- Version du serveur :  5.7.19
-- Version de PHP :  5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `bdprojetweb`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `ID` int(32) NOT NULL AUTO_INCREMENT,
  `LOGIN` varchar(52) NOT NULL,
  `PASSWORD` varchar(52) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`ID`, `LOGIN`, `PASSWORD`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `ID` int(32) NOT NULL AUTO_INCREMENT,
  `NOM` varchar(52) NOT NULL,
  `MAIL` varchar(52) NOT NULL,
  `TEL` varchar(52) NOT NULL,
  `TEXTE` varchar(52) NOT NULL,
  `DATE_DEMANDE` varchar(52) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`ID`, `NOM`, `MAIL`, `TEL`, `TEXTE`, `DATE_DEMANDE`) VALUES
(1, 'KEMAYOU', 'sandrine.kemayou@outlook.com', '0479719092', 'test, 1 - 2 - 1 - 2', '2018-08-16 13:38:12');

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE IF NOT EXISTS `reservation` (
  `ID` int(32) NOT NULL AUTO_INCREMENT,
  `NOM_CLIENT` varchar(52) NOT NULL,
  `EMAIL_CLIENT` varchar(52) NOT NULL,
  `TEL_CLIENT` varchar(52) NOT NULL,
  `PAYS_CLIENT` varchar(52) NOT NULL,
  `VILLE_CLIENT` varchar(52) NOT NULL,
  `DESTINATION` varchar(52) NOT NULL,
  `DATE` date NOT NULL,
  `NBR_PERSONNES` int(1) NOT NULL,
  `BUDGET` int(4) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `reservation`
--

INSERT INTO `reservation` (`ID`, `NOM_CLIENT`, `EMAIL_CLIENT`, `TEL_CLIENT`, `PAYS_CLIENT`, `VILLE_CLIENT`, `DESTINATION`, `DATE`, `NBR_PERSONNES`, `BUDGET`) VALUES
(1, 'John', 'John@gmail.be', '04798273843', 'France', 'Paris', '1', '2018-08-21', 3, 2000),
(2, 'kemayou', 'sandrine.kemayou@outlook.com', '0479719092', 'Belgique', 'Neufmaison', '9', '2018-08-20', 2, 1500);

-- --------------------------------------------------------

--
-- Structure de la table `voyage`
--

DROP TABLE IF EXISTS `voyage`;
CREATE TABLE IF NOT EXISTS `voyage` (
  `ID` int(32) NOT NULL AUTO_INCREMENT,
  `PAYS` varchar(52) NOT NULL,
  `IMAGE` varchar(52) NOT NULL,
  `VILLE` varchar(52) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `voyage`
--

INSERT INTO `voyage` (`ID`, `PAYS`, `IMAGE`, `VILLE`) VALUES
(1, 'USA', 'gal1.jpg', 'SpringHill'),
(2, 'MONACO', 'gal2.jpg', 'Monte Carlo Bay'),
(3, 'ESPAGNE', 'gal3.jpg', 'La Quinta Inn'),
(4, 'ROYAUME-UNI', 'gal4.jpg', 'BritHotel'),
(5, 'SUÈDE', 'gal5.jpg', 'Skandic hotel'),
(6, 'POLOGNE', 'gal6.jpg', 'The Bonerowski Palace'),
(7, 'BULGARIE', 'gal7.jpg', 'Marinela Sofia'),
(8, 'GRÈCE', 'gal8.jpg', 'The Spartans'),
(9, 'ITALIE', 'gal9.jpg', 'Cagliari'),
(10, 'FRANCE', 'gal10.jpg', 'La baraque à Simone'),
(11, 'ALLEMAGNE', 'gal11.jpg', 'The Falkensteiner'),
(12, 'ÉGYPTE', 'gal12.jpg', 'Al Masa');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
