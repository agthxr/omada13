-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Φιλοξενητής: 127.0.0.1
-- Χρόνος δημιουργίας: 02 Φεβ 2013 στις 19:52:02
-- Έκδοση διακομιστή: 5.5.27
-- Έκδοση PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Βάση: `thanos`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `kartela`
--

CREATE TABLE IF NOT EXISTS `kartela` (
  `kwdikos` varchar(100) NOT NULL,
  `onoma` varchar(100) NOT NULL,
  `eponimo` varchar(100) NOT NULL,
  `hm_gen` varchar(10) NOT NULL,
  `om_aimatos` varchar(40) NOT NULL,
  `pathisi` varchar(200) NOT NULL,
  `allergies` text NOT NULL,
  `tilephono` varchar(12) NOT NULL,
  `hm_eggrafis` varchar(10) NOT NULL,
  `simioseis` longtext NOT NULL,
  PRIMARY KEY (`kwdikos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Άδειασμα δεδομένων του πίνακα `kartela`
--

INSERT INTO `kartela` (`kwdikos`, `onoma`, `eponimo`, `hm_gen`, `om_aimatos`, `pathisi`, `allergies`, `tilephono`, `hm_eggrafis`, `simioseis`) VALUES
('1111', 'Thanos', 'Balfousias-', '27-06-1988', 'A+', 'Tipota', 'Kamia', '5555555', '2-2-2013', ''),
('2222', 'Aggelos', 'Bisvikis', '17-02-90', '0+', 'Kamia', 'Kamia', '5548154845', '2-2-2013', '');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` mediumint(9) NOT NULL,
  `user` varchar(50) CHARACTER SET utf8 NOT NULL,
  `pass` varchar(50) CHARACTER SET utf8 NOT NULL,
  `dik` varchar(10) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user` (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `users`
--

INSERT INTO `users` (`id`, `user`, `pass`, `dik`) VALUES
(1, 'gramateas', '1111', 'gram'),
(2, 'giatros', '1111', 'gia'),
(3, 'nosokomos', '1111', 'nos');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
