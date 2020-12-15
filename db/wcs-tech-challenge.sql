-- --------------------------------------------------------
-- Hôte :                        127.0.0.1
-- Version du serveur:           5.7.24 - MySQL Community Server (GPL)
-- SE du serveur:                Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Listage de la structure de la table wcs-tech-challenge. argonautes
CREATE TABLE IF NOT EXISTS `argonautes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

-- Listage des données de la table wcs-tech-challenge.argonautes : ~43 rows (environ)
/*!40000 ALTER TABLE `argonautes` DISABLE KEYS */;
INSERT INTO `argonautes` (`id`, `nom`) VALUES
	(1, 'Acastus'),
	(2, 'Admetus'),
	(3, 'Aethalides'),
	(4, 'Amphidamas'),
	(5, 'Ancaeus'),
	(6, 'Argus'),
	(7, 'Asterion'),
	(8, 'Augeas'),
	(9, 'Butes'),
	(10, 'Calaïs'),
	(11, 'Canthus'),
	(12, 'Castor'),
	(13, 'Cepheus'),
	(14, 'Clytius'),
	(15, 'Cornonus'),
	(16, 'Deucalion'),
	(17, 'Echion'),
	(18, 'Eleftheria'),
	(19, 'Erginos'),
	(20, 'Erytus'),
	(21, 'Euphemus'),
	(22, 'Euryale'),
	(23, 'Eurydamas'),
	(24, 'Gennadios'),
	(25, 'Héraclès'),
	(26, 'Hylas'),
	(27, 'Idmon'),
	(28, 'Iphicius'),
	(29, 'Iphitos'),
	(30, 'Leodocus'),
	(31, 'Lynecus'),
	(32, 'Lysimachos'),
	(33, 'Menoetius'),
	(34, 'Mopsus'),
	(35, 'Nauplius'),
	(36, 'Oileus'),
	(37, 'Orpheus'),
	(38, 'Palaemon'),
	(39, 'Peleus'),
	(40, 'Periclymenus'),
	(41, 'Phalerus'),
	(42, 'Phlias'),
	(43, 'Pollux'),
	(44, 'Polyphemus'),
	(45, 'Talaus'),
	(46, 'Telamon'),
	(47, 'Tiphys'),
	(48, 'Zetes');
/*!40000 ALTER TABLE `argonautes` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
