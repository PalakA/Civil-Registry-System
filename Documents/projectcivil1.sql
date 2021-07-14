-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.1.34-community - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             8.0.0.4396
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for projectcivil
DROP DATABASE IF EXISTS `projectcivil`;
CREATE DATABASE IF NOT EXISTS `projectcivil` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `projectcivil`;


-- Dumping structure for table projectcivil.civilreg
DROP TABLE IF EXISTS `civilreg`;
CREATE TABLE IF NOT EXISTS `civilreg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(50) NOT NULL,
  `sex` varchar(6) NOT NULL,
  `placeOfBirth` varchar(50) NOT NULL,
  `dateOfBirth` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hospital` varchar(50) NOT NULL,
  `fatherName` varchar(50) NOT NULL,
  `motherName` varchar(50) DEFAULT NULL,
  `address` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `religion` varchar(15) DEFAULT NULL,
  `relation` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table projectcivil.civilreg: ~3 rows (approximately)
DELETE FROM `civilreg`;
/*!40000 ALTER TABLE `civilreg` DISABLE KEYS */;
INSERT INTO `civilreg` (`id`, `firstName`, `sex`, `placeOfBirth`, `dateOfBirth`, `hospital`, `fatherName`, `motherName`, `address`, `contact`, `religion`, `relation`) VALUES
	(1, 'sammy', 'female', 'fbd11', '2014-04-05 10:42:32', 'apolo', 'raj', 'reenu', '456/12', '1234567890', '---------------', 'mother'),
	(2, 'tia', 'female', 'chennai', '2014-04-04 07:08:00', 'Care', 'Dharam', 'Sheila', '345/7  A', '98753211', 'Hindu', 'Father'),
	(3, 'tia', 'female', 'chennai', '2014-04-04 07:08:00', 'Care', 'Dharam', 'Sheila', '345/7  A', '98753211', 'Hindu', 'Father');
/*!40000 ALTER TABLE `civilreg` ENABLE KEYS */;


-- Dumping structure for table projectcivil.deathrecord
DROP TABLE IF EXISTS `deathrecord`;
CREATE TABLE IF NOT EXISTS `deathrecord` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `sex` varchar(6) NOT NULL,
  `dateOfBirth` date NOT NULL,
  `address` varchar(50) NOT NULL,
  `diedOn` date NOT NULL,
  `placeOfDeath` varchar(50) NOT NULL,
  `causeOfDeath` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `spousename` varchar(50) DEFAULT NULL,
  `spouseAdd` varchar(50) DEFAULT NULL,
  `spouseCont` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table projectcivil.deathrecord: ~1 rows (approximately)
DELETE FROM `deathrecord`;
/*!40000 ALTER TABLE `deathrecord` DISABLE KEYS */;
INSERT INTO `deathrecord` (`id`, `name`, `sex`, `dateOfBirth`, `address`, `diedOn`, `placeOfDeath`, `causeOfDeath`, `status`, `spousename`, `spouseAdd`, `spouseCont`) VALUES
	(1, 'tom', 'female', '1900-03-02', 'ddd', '2014-04-03', 'delhi', 'asthma', 'Married', 'tia', '345/19', '9876543210');
/*!40000 ALTER TABLE `deathrecord` ENABLE KEYS */;


-- Dumping structure for table projectcivil.feedback
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Contact` varchar(50) NOT NULL,
  `Feedback` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table projectcivil.feedback: ~5 rows (approximately)
DELETE FROM `feedback`;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` (`id`, `Name`, `Contact`, `Feedback`) VALUES
	(1, 'dsd', 'sadasd', 'sadsa'),
	(2, 'sam', '8756435677', 'good'),
	(3, 's', '3', '3dfdsf'),
	(4, 'aaa', 'aaaa', 'aaaaaaaaaaaaaaaaa'),
	(5, 'jack', '8764375635', 'Good Job');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;


-- Dumping structure for table projectcivil.login
DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `Userid` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table projectcivil.login: ~1 rows (approximately)
DELETE FROM `login`;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` (`Userid`, `pass`) VALUES
	('palak', '123');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;


-- Dumping structure for table projectcivil.marriagerecord
DROP TABLE IF EXISTS `marriagerecord`;
CREATE TABLE IF NOT EXISTS `marriagerecord` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `husbandName` varchar(50) NOT NULL,
  `religion` varchar(15) NOT NULL,
  `dateOfBirth3` date NOT NULL,
  `address` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `placeOfMarriage` varchar(50) NOT NULL,
  `dateOfMarriage` date NOT NULL,
  `profession` varchar(50) NOT NULL,
  `wifeName` varchar(50) NOT NULL,
  `dateOfBirth2` date NOT NULL,
  `contact1` varchar(50) NOT NULL,
  `profession1` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table projectcivil.marriagerecord: ~1 rows (approximately)
DELETE FROM `marriagerecord`;
/*!40000 ALTER TABLE `marriagerecord` DISABLE KEYS */;
INSERT INTO `marriagerecord` (`id`, `husbandName`, `religion`, `dateOfBirth3`, `address`, `contact`, `placeOfMarriage`, `dateOfMarriage`, `profession`, `wifeName`, `dateOfBirth2`, `contact1`, `profession1`) VALUES
	(1, 'tom', 'hindu', '1900-02-01', '234/12', '0977777777', 'delhi', '2014-04-30', 'self', 'jill', '2014-04-30', '9777777754', 'self');
/*!40000 ALTER TABLE `marriagerecord` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
