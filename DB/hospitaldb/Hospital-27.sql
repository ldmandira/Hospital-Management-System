-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.14-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for hospital
DROP DATABASE IF EXISTS `hospital`;
CREATE DATABASE IF NOT EXISTS `hospital` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `hospital`;

-- Dumping structure for table hospital.employee
DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `joiningDate` date DEFAULT NULL,
  `eid` varchar(255) NOT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `middleName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `birthdate` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `emailID` varchar(255) DEFAULT NULL,
  `mobileno` bigint(20) DEFAULT NULL,
  `adharNo` bigint(20) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `residentialAddress` varchar(255) DEFAULT NULL,
  `permanentAddress` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `specialization` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`eid`),
  UNIQUE KEY `emailID` (`emailID`),
  UNIQUE KEY `adharNo` (`adharNo`),
  UNIQUE KEY `mobileno` (`mobileno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table hospital.employee: ~5 rows (approximately)
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` (`joiningDate`, `eid`, `firstName`, `middleName`, `lastName`, `birthdate`, `gender`, `emailID`, `mobileno`, `adharNo`, `country`, `state`, `city`, `residentialAddress`, `permanentAddress`, `role`, `qualification`, `specialization`, `status`) VALUES
	('2021-04-24', 'EMP101', 'Nirmali', 'Sudarshani', 'Perera', '1992-01-07', 'female', 'sudarshi1992@gmail.com', 94775548564, 143590034912, 'Sri Lanka', 'S', 'Katunayaka', 'vandana apartment, nashik', 'Katunaka , North', 'doctor', 'mbbs, md', 'gynacologist', 1),
	('2021-04-24', 'EMP102', 'Amal', 'C', 'Silva', '1988-05-12', 'male', 'amal.c@gmail.com', 94772542254, 409285671923, 'Sri Lanka', 'S', 'Maharagama', 'Maharagama', 'Maharagama South', 'doctor', 'mbbs', 'none', 0),
	('2021-04-24', 'EMP103', 'Kasun', 'Shalinda', 'Perera', '1980-03-07', 'male', 'kasun.rox@gmail.com', 94717558694, 103758492134, 'Sri Lanka', 'S', 'Awissawella', 'gajanan banglow nashik', 'Awissawella , Puwakpitiya North', 'doctor', 'ms', 'surgery', 1),
	('2021-04-24', 'EMP104', 'Sureni', 'Poornima', 'Dissanayake', '1990-03-09', 'female', 'dissanayake90@gmail.com', 94716783426, 345600189345, 'Sri Lanka', 'S', 'Kiribathgoda', 'damodar heights', 'Kiribathgoda , Jambugasmulla, JN', 'administrator', 'be', 'computer science', 1),
	('2021-04-23', 'EMP105', 'Malindu', 'Damsara', 'Wijesekara', '1975-02-14', 'male', 'wikjesekara75@gmail.com', 94756985425, 920385967123, 'Sri Lanka', 'S', 'Wattala', 'narayani bunglow', 'Wattala , South', 'receptionist', 'be', 'computer', 1);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;

-- Dumping structure for table hospital.idgenerate
DROP TABLE IF EXISTS `idgenerate`;
CREATE TABLE IF NOT EXISTS `idgenerate` (
  `eid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table hospital.idgenerate: ~1 rows (approximately)
/*!40000 ALTER TABLE `idgenerate` DISABLE KEYS */;
INSERT INTO `idgenerate` (`eid`, `pid`) VALUES
	(5, 4);
/*!40000 ALTER TABLE `idgenerate` ENABLE KEYS */;

-- Dumping structure for table hospital.login
DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `id` varchar(155) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table hospital.login: ~5 rows (approximately)
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` (`id`, `role`, `username`, `password`) VALUES
	('EMP101', 'doctor', 'EMP101', '$2a$10$We9z/qK7DoBK5eY7kSJ3Cud2Rb6VDMGKDBSnvXzfHQnW/Ds1zKdBi'),
	('EMP103', 'doctor', 'EMP103', '$2a$10$RwTr3JDO1T64S.7C45J5yOQ4IlKLo8veU6NdBaqyff4FSbmarKLXC'),
	('EMP104', 'administrator', 'EMP104', '$2a$10$LmE4x1jf6fvb/1fOp.6I.OTH7qzx..p9yjJjOovXGnHLsAh9VC02a'),
	('EMP105', 'receptionist', 'EMP105', '$2a$10$uArJiQ3sFGGEWzmrJA4U/eDXBooIa0hg59PK4BADJo5iMSY1LPhoy'),
	('EMP100', 'administrator', 'root123', '$2a$2a$10$6JNcQozIanvEpS01aSdFBev3sqVJJOL2np7mFz3CSQmvppeGRo6yy');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;

-- Dumping structure for table hospital.opd
DROP TABLE IF EXISTS `opd`;
CREATE TABLE IF NOT EXISTS `opd` (
  `opdid` int(11) NOT NULL AUTO_INCREMENT,
  `visitdate` date DEFAULT NULL,
  `pid` varchar(255) DEFAULT NULL,
  `doctorid` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`opdid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table hospital.opd: ~4 rows (approximately)
/*!40000 ALTER TABLE `opd` DISABLE KEYS */;
INSERT INTO `opd` (`opdid`, `visitdate`, `pid`, `doctorid`, `status`) VALUES
	(1, '2021-04-24', 'P101', 'EMP101', 0),
	(6, '2021-04-24', 'P104', 'EMP101', 1),
	(7, '2021-04-24', 'P101', 'EMP101', 0),
	(8, '2021-04-24', 'P101', 'EMP101', 1);
/*!40000 ALTER TABLE `opd` ENABLE KEYS */;

-- Dumping structure for table hospital.opddetails
DROP TABLE IF EXISTS `opddetails`;
CREATE TABLE IF NOT EXISTS `opddetails` (
  `opdid` varchar(255) NOT NULL,
  `symptoms` varchar(255) DEFAULT NULL,
  `diagnosis` varchar(255) DEFAULT NULL,
  `medicinesDose` varchar(255) DEFAULT NULL,
  `dos` varchar(255) DEFAULT NULL,
  `donts` varchar(255) DEFAULT NULL,
  `investigations` varchar(255) DEFAULT NULL,
  `followupDate` varchar(255) DEFAULT NULL,
  `fees` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`opdid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table hospital.opddetails: ~2 rows (approximately)
/*!40000 ALTER TABLE `opddetails` DISABLE KEYS */;
INSERT INTO `opddetails` (`opdid`, `symptoms`, `diagnosis`, `medicinesDose`, `dos`, `donts`, `investigations`, `followupDate`, `fees`) VALUES
	('1', '#headache #bodypain', 'weakness', '#crocin@2 #neutrolin-B@3', '#drink warm water', '#junk food', 'none', '2021-04-24', '200'),
	('7', '#abdominal pain #fever #nausea', 'typhoid', '#crocin500@2  #meftal spas@2 #ofloxine500@1', '#rest #eat dal-chaval #warm water', '#oily food #cold drinks', 'blood test', '2021-04-24', '500');
/*!40000 ALTER TABLE `opddetails` ENABLE KEYS */;

-- Dumping structure for table hospital.patient
DROP TABLE IF EXISTS `patient`;
CREATE TABLE IF NOT EXISTS `patient` (
  `registrationDate` date DEFAULT NULL,
  `pid` varchar(255) NOT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `middleName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `birthdate` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `emailID` varchar(255) DEFAULT NULL,
  `mobileno` bigint(20) DEFAULT NULL,
  `adharNo` bigint(20) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `residentialAddress` varchar(255) DEFAULT NULL,
  `permanentAddress` varchar(255) DEFAULT NULL,
  `bloodGroup` varchar(5) DEFAULT NULL,
  `chronicDiseases` varchar(255) DEFAULT NULL,
  `medicineAllergy` varchar(255) DEFAULT NULL,
  `doctorId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  UNIQUE KEY `emailID` (`emailID`),
  UNIQUE KEY `adharNo` (`adharNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table hospital.patient: ~4 rows (approximately)
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` (`registrationDate`, `pid`, `firstName`, `middleName`, `lastName`, `birthdate`, `gender`, `emailID`, `mobileno`, `adharNo`, `country`, `state`, `city`, `residentialAddress`, `permanentAddress`, `bloodGroup`, `chronicDiseases`, `medicineAllergy`, `doctorId`) VALUES
	('2021-04-24', 'P101', 'Shamil', 'Themiya', 'Perera', '1990-04-12', 'male', 'perers1990@gmail.com', 94715468987, 901238756123, 'Sri Lanka', 'S', 'Kuliyapitiya', 'Dambadeniya JN', 'Kuliyapitiya South', 'A+', 'none', 'bluemox', 'EMP101'),
	('2021-04-24', 'P102', 'Upamali', 'Darshika', 'Fonseka', '1990-05-02', 'female', 'darashika90@gmail.com', 94776548725, 109478563215, 'Sri Lanka', 'S', 'Mahara', 'Kadawath , Mawaramandiya JN', 'Mahara , kadawatha , North', 'B-', 'diabetes', 'none', 'EMP103'),
	('2021-04-24', 'P103', 'Sirddhi', 'Pramodini', 'Dissanayake', '1991-05-17', 'female', 'sudarshi6542@gmail.com', 94175548625, 823947610019, 'Sri Lanka', 'S', 'Homagama', 'Homagama , Hanwella JN', 'Homagama , Hanwella , South', 'O+', 'none', 'none', 'EMP102'),
	('2021-04-24', 'P104', 'Kusumi', 'Upeksha', 'Perara', '1973-06-28', 'female', 'kusumi1973@gmail.com', 94745584935, 728001823453, 'Sri Lanka', 'S', 'Yakkala', 'Yakkala North', 'Yakkala, Waralla Watta , JN', 'AB+', 'diabetes', 'none', 'EMP101');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
