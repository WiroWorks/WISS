-- --------------------------------------------------------
-- Sunucu:                       127.0.0.1
-- Sunucu sürümü:                10.4.21-MariaDB - mariadb.org binary distribution
-- Sunucu İşletim Sistemi:       Win64
-- HeidiSQL Sürüm:               11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- wiss için veritabanı yapısı dökülüyor
CREATE DATABASE IF NOT EXISTS `wiss` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci */;
USE `wiss`;

-- tablo yapısı dökülüyor wiss.accounts
CREATE TABLE IF NOT EXISTS `accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL DEFAULT '',
  `password` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL DEFAULT '',
  `name` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL DEFAULT '',
  `position` varchar(150) COLLATE utf8mb4_turkish_ci NOT NULL DEFAULT '[]',
  `authority` int(1) NOT NULL DEFAULT 0,
  `selectedLanguage` varchar(3) COLLATE utf8mb4_turkish_ci DEFAULT 'TR',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- wiss.accounts: ~3 rows (yaklaşık) tablosu için veriler indiriliyor
DELETE FROM `accounts`;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` (`id`, `username`, `password`, `name`, `position`, `authority`, `selectedLanguage`) VALUES
	(1, 'Wiro', 'WR.2020!', 'Berk Çiçekler', '["4"]', 2, 'TR'),
	(12, 'ibrahim.abay', 'ibrahim.abay99', 'İbrahim Abay', '["2","3","4","5","7"]', 2, 'TR'),
	(13, 'yetkisiz', 'yetkisiz', 'yetkisiz', '["2","3","4","5","7"]', 0, 'TR');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;

-- tablo yapısı dökülüyor wiss.cellphonebrands
CREATE TABLE IF NOT EXISTS `cellphonebrands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- wiss.cellphonebrands: ~8 rows (yaklaşık) tablosu için veriler indiriliyor
DELETE FROM `cellphonebrands`;
/*!40000 ALTER TABLE `cellphonebrands` DISABLE KEYS */;
INSERT INTO `cellphonebrands` (`id`, `value`) VALUES
	(1, 'Apple'),
	(2, 'General Mobile'),
	(3, 'Honor'),
	(4, 'Huawei'),
	(5, 'Oppo'),
	(6, 'Realme'),
	(7, 'Samsung'),
	(8, 'Xiaomi');
/*!40000 ALTER TABLE `cellphonebrands` ENABLE KEYS */;

-- tablo yapısı dökülüyor wiss.cellphonedebits
CREATE TABLE IF NOT EXISTS `cellphonedebits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cellPhoneId` int(11) NOT NULL DEFAULT 0,
  `employeeId` int(11) NOT NULL DEFAULT 0,
  `debitStartDate` date DEFAULT NULL,
  `debitEndDate` date DEFAULT NULL,
  `extensionNumber` varchar(50) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- wiss.cellphonedebits: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
DELETE FROM `cellphonedebits`;
/*!40000 ALTER TABLE `cellphonedebits` DISABLE KEYS */;
INSERT INTO `cellphonedebits` (`id`, `cellPhoneId`, `employeeId`, `debitStartDate`, `debitEndDate`, `extensionNumber`) VALUES
	(2, 2, 3, '2022-04-08', '2022-04-13', '666');
/*!40000 ALTER TABLE `cellphonedebits` ENABLE KEYS */;

-- tablo yapısı dökülüyor wiss.cellphones
CREATE TABLE IF NOT EXISTS `cellphones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand` varchar(2) COLLATE utf8mb4_turkish_ci NOT NULL DEFAULT '0',
  `model` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL DEFAULT '0',
  `serialNumber` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL DEFAULT '0',
  `IMEI` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL DEFAULT '0',
  `wifiMac` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL DEFAULT '0',
  `adapter` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL DEFAULT '0',
  `purchaseDate` date NOT NULL,
  `isTrash` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- wiss.cellphones: ~2 rows (yaklaşık) tablosu için veriler indiriliyor
DELETE FROM `cellphones`;
/*!40000 ALTER TABLE `cellphones` DISABLE KEYS */;
INSERT INTO `cellphones` (`id`, `brand`, `model`, `serialNumber`, `IMEI`, `wifiMac`, `adapter`, `purchaseDate`, `isTrash`) VALUES
	(1, '1', 'Iphone 12', '0', '0', '0', '1', '0000-00-00', 0),
	(2, '2', 'Iphone XV Pro', '1231231', '341', 'dsg', '1', '2023-04-08', 0);
/*!40000 ALTER TABLE `cellphones` ENABLE KEYS */;

-- tablo yapısı dökülüyor wiss.computerantivirus
CREATE TABLE IF NOT EXISTS `computerantivirus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(50) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- wiss.computerantivirus: ~3 rows (yaklaşık) tablosu için veriler indiriliyor
DELETE FROM `computerantivirus`;
/*!40000 ALTER TABLE `computerantivirus` DISABLE KEYS */;
INSERT INTO `computerantivirus` (`id`, `value`) VALUES
	(1, ' '),
	(2, 'Eset'),
	(3, 'None');
/*!40000 ALTER TABLE `computerantivirus` ENABLE KEYS */;

-- tablo yapısı dökülüyor wiss.computerbrands
CREATE TABLE IF NOT EXISTS `computerbrands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(50) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- wiss.computerbrands: ~10 rows (yaklaşık) tablosu için veriler indiriliyor
DELETE FROM `computerbrands`;
/*!40000 ALTER TABLE `computerbrands` DISABLE KEYS */;
INSERT INTO `computerbrands` (`id`, `value`) VALUES
	(1, ' '),
	(2, 'Acer'),
	(3, 'Apple'),
	(4, 'Asus'),
	(5, 'Dell'),
	(6, 'Hp'),
	(7, 'Lenovo'),
	(8, 'Samsung'),
	(9, 'Sony'),
	(10, 'Toshiba');
/*!40000 ALTER TABLE `computerbrands` ENABLE KEYS */;

-- tablo yapısı dökülüyor wiss.computerdebits
CREATE TABLE IF NOT EXISTS `computerdebits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `computerId` int(11) DEFAULT NULL,
  `employeeId` int(11) DEFAULT NULL,
  `debitStartDate` date DEFAULT NULL,
  `debitEndDate` date DEFAULT NULL,
  `mouse` varchar(50) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `adapter` varchar(50) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `bag` varchar(50) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `keyboard` varchar(50) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `monitor` varchar(50) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- wiss.computerdebits: ~5 rows (yaklaşık) tablosu için veriler indiriliyor
DELETE FROM `computerdebits`;
/*!40000 ALTER TABLE `computerdebits` DISABLE KEYS */;
INSERT INTO `computerdebits` (`id`, `computerId`, `employeeId`, `debitStartDate`, `debitEndDate`, `mouse`, `adapter`, `bag`, `keyboard`, `monitor`) VALUES
	(1, 0, 0, '0000-00-00', NULL, '1', '1', '1', '1', '1'),
	(2, 3, 1, '2022-04-01', '2022-04-07', '0', '0', '1', '0', '1'),
	(3, 0, 2, '0000-00-00', NULL, '1', '1', '1', '1', '1'),
	(4, 0, 2, '0000-00-00', NULL, '1', '1', '1', '1', '1'),
	(5, 0, 0, '0000-00-00', NULL, '1', '1', '1', '1', '1');
/*!40000 ALTER TABLE `computerdebits` ENABLE KEYS */;

-- tablo yapısı dökülüyor wiss.computerkinds
CREATE TABLE IF NOT EXISTS `computerkinds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(50) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- wiss.computerkinds: ~4 rows (yaklaşık) tablosu için veriler indiriliyor
DELETE FROM `computerkinds`;
/*!40000 ALTER TABLE `computerkinds` DISABLE KEYS */;
INSERT INTO `computerkinds` (`id`, `value`) VALUES
	(1, ' '),
	(2, 'Laptop'),
	(3, 'Desktop'),
	(4, 'AIO');
/*!40000 ALTER TABLE `computerkinds` ENABLE KEYS */;

-- tablo yapısı dökülüyor wiss.computerofficeprograms
CREATE TABLE IF NOT EXISTS `computerofficeprograms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(50) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- wiss.computerofficeprograms: ~5 rows (yaklaşık) tablosu için veriler indiriliyor
DELETE FROM `computerofficeprograms`;
/*!40000 ALTER TABLE `computerofficeprograms` DISABLE KEYS */;
INSERT INTO `computerofficeprograms` (`id`, `value`) VALUES
	(3, ' '),
	(4, 'Office 2019'),
	(5, 'Office 2010'),
	(6, 'Libre Office'),
	(7, 'None');
/*!40000 ALTER TABLE `computerofficeprograms` ENABLE KEYS */;

-- tablo yapısı dökülüyor wiss.computeros
CREATE TABLE IF NOT EXISTS `computeros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(50) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- wiss.computeros: ~5 rows (yaklaşık) tablosu için veriler indiriliyor
DELETE FROM `computeros`;
/*!40000 ALTER TABLE `computeros` DISABLE KEYS */;
INSERT INTO `computeros` (`id`, `value`) VALUES
	(1, ' '),
	(2, 'Windows 11'),
	(3, 'Windows 10'),
	(4, 'Windows 8'),
	(5, 'Windows 7');
/*!40000 ALTER TABLE `computeros` ENABLE KEYS */;

-- tablo yapısı dökülüyor wiss.computerram
CREATE TABLE IF NOT EXISTS `computerram` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(50) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- wiss.computerram: ~7 rows (yaklaşık) tablosu için veriler indiriliyor
DELETE FROM `computerram`;
/*!40000 ALTER TABLE `computerram` DISABLE KEYS */;
INSERT INTO `computerram` (`id`, `value`) VALUES
	(1, '1 GB'),
	(2, '2 GB'),
	(3, '3 GB'),
	(4, '4 GB'),
	(5, '8 GB'),
	(6, '12 GB'),
	(7, '16 GB');
/*!40000 ALTER TABLE `computerram` ENABLE KEYS */;

-- tablo yapısı dökülüyor wiss.computers
CREATE TABLE IF NOT EXISTS `computers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kind` varchar(2) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `brand` varchar(2) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `model` varchar(40) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `position` varchar(50) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `serialNumber` varchar(50) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `CPU` varchar(40) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `RAM` varchar(2) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `disk` varchar(40) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `dateOfPurchase` date DEFAULT NULL,
  `wifiMac` varchar(50) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `ethMac` varchar(50) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `OS` varchar(2) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `officePrograms` varchar(2) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `antiVirus` varchar(2) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `isTrash` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- wiss.computers: ~214 rows (yaklaşık) tablosu için veriler indiriliyor
DELETE FROM `computers`;
/*!40000 ALTER TABLE `computers` DISABLE KEYS */;
INSERT INTO `computers` (`id`, `kind`, `brand`, `model`, `position`, `serialNumber`, `CPU`, `RAM`, `disk`, `dateOfPurchase`, `wifiMac`, `ethMac`, `OS`, `officePrograms`, `antiVirus`, `isTrash`) VALUES
	(1, '2', '7', 'Thinkpad X1 Yoga 20FQ0041TX', '4', 'R90NDX49', 'Intel(R) Core(TM) i7-6500U CPU @ 2.50GHz', '6', '256 GB SSD', '0000-00-00', '', '', '', '3', '1', 0),
	(2, '2', '9', 'SVP13211STS', NULL, '54592174-0000510', 'Intel(R) Core(TM) i5-4200U CPU @ 1.60GHz', '5', '256 GB SSD', '0000-00-00', '', '', '', '3', '1', 0),
	(3, '2', '7', '', NULL, '1', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(5, '2', '5', '1304283', NULL, '306WM42', 'Intel(R) Core(TM) i5-8250U CPU @ 1.60GHz', '6', '256 GB SSD', '0000-00-00', '', '', '', '3', '1', 0),
	(6, '2', '5', 'Inspiron 13-7359', NULL, 'F2TQ682', 'Intel(R) Core(TM) i5-6200U CPU @ 2.30GHz', '6', '500 GB HDD', '0000-00-00', '', '', '', '3', '1', 0),
	(7, '2', '7', 'Thinkpad E460', NULL, 'PF-0J3J7C', 'Intel(R) Core(TM) i5-6200U CPU @ 2.40GHz', '6', '256 GB SSD', '0000-00-00', '', '', '', '3', '1', 0),
	(8, '3', '6', 'Pro 3500 Series', NULL, 'TRF30105H4', 'Intel(R) Core(TM) i5-3470 CPU @ 3.20GHz', '10', '500 GB HDD', '0000-00-00', '', '', '', '3', '1', 0),
	(9, '2', '5', '1303918', NULL, '2G7V002', 'Intel(R) Core(TM) i5-4200U CPU @ 1.60GHz', '5', '500 GB HDD', '0000-00-00', 'E0-DB-55-ED-5B-62', 'FC-F8-AE-22-38-19', '3', '4', '2', 0),
	(10, '2', '5', '', NULL, '3', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(11, '2', '5', 'Latitude E7240', NULL, '9DGPL12', 'Intel(R) Core(TM) i7-4600U CPU @ 2.10GHz', '6', '238 GB SSD', '0000-00-00', 'F8-16-54-96-0C-C0', 'F8-16-54-96-0C-BC', '3', '7', '2', 0),
	(12, '2', '7', 'G50-70 Type 20351', NULL, '1,04209E+12', 'Intel(R) Core(TM) i7-4510U CPU @ 2.00GHz', '9', '240 GB SSD', '0000-00-00', '68-F7-28-27-31-8F', 'D0-7E-35-3E-8C-30', '4', '5', '2', 0),
	(13, '3', '6', 'Pro3500 Series', NULL, 'TRF323164R', 'Intel(R) Core(TM) i5-3470 CPU @ 3.20GHz', '5', '500 GB HDD', '0000-00-00', '', '', '', '3', '1', 0),
	(14, '3', '6', 'Pro 3500 Series', NULL, 'TRF3140HD8', 'Intel(R) Core(TM) i3-3220 CPU @ 3.30GHz', '5', '150 + 500 GB HDD', '0000-00-00', '6C-3B-E5-26-24-CF', '', '3', '5', '2', 0),
	(15, '3', '6', '', NULL, '4', 'Intel(R) Core(TM) i7 CPU 920 @ 2.67GHz', '9', '250 GB SSD', '0000-00-00', '', '', '', '3', '1', 0),
	(16, '3', '7', '349251G', NULL, 'PBA4M3A', 'Intel(R) Core(TM) i3-3220 CPU @ 3.30GHz', '5', '256 SSD + 500 GB HDD', '0000-00-00', '74-27-EA-CA-2F-6D', '', '3', '4', '2', 0),
	(17, '3', '6', '', NULL, '5', 'Intel(R) Core(TM) i3-3220T CPU @ 2.80GHz', '5', '500 GB HDD', '0000-00-00', '', '', '', '3', '1', 0),
	(18, '3', '1', '3492C4G', NULL, 'PBWZLYK', 'Intel(R) Core(TM) i5-3470S CPU @ 2.90GHz', '13', '240GB SSD + 500 GB HDD', '0000-00-00', 'EC-A8-6B-2C-F1-7E', '', '3', '4', '2', 0),
	(19, '4', '7', 'V410z', NULL, 'YJ006RRV', 'Intel(R) Core(TM) i5-7400T CPU @ 2.40GHz', '6', '1 TB HDD', '0000-00-00', '', '', '', '3', '1', 0),
	(20, '2', '9', '54592174-0000796', NULL, 'SVP13211STS', 'Intel(R) Core(TM) i5-4200U CPU @ 1.60GHz', '5', '256 GB SSD', '0000-00-00', '', '', '', '3', '1', 0),
	(21, '3', 'To', 'p6-2013tr', NULL, 'TRF1510BDD', 'Intel(R) Core(TM) i5-2400 CPU @ 3.10GHz', '5', '1 TB HDD', '0000-00-00', '', '', '', '3', '1', 0),
	(22, '2', '6', 'Pavilion Power Laptop 15-CB0XX', NULL, '5CD8062BRY', 'Intel(R) Core(TM) i7-7700HQ CPU @ 2.80GH', '9', '1 TB HDD + 256 GB SSD', '0000-00-00', '', '', '', '3', '1', 0),
	(23, '2', '7', 'Thinkbook', NULL, 'LR0D2XKP', 'Intel(R) Core(TM) i5-1035G1 CPU @ 1.00GH', '6', '500 GB HDD', '0000-00-00', '', '', '', '3', '1', 0),
	(26, '2', '7', '20LSS04M00', NULL, 'PF115XH8', 'Intel(R) Core(TM) i5-8250U CPU @ 1.60GHz', '13', '256 GB SSD', '0000-00-00', '', '', '', '3', '1', 0),
	(27, '3', '7', '0006TX', NULL, 'YJ006RFQ', 'Intel(R) Core(TM) i5-7400T CPU @ 2.40GHz', '6', '1 TB HDD', '0000-00-00', '', '', '', '3', '1', 0),
	(28, '2', '6', 'HP Pavilion Power Laptop 15-cb0xx', NULL, '5CD747BN97', 'Intel(R) Core(TM) i7-7700HQ CPU @ 2.80GH', '8', '1 TB HDD + 256 GB SSD', '0000-00-00', 'AC-E2-D3-62-92-99', 'F8-94-C2-58-EA-A8', '3', '4', '2', 0),
	(29, '3', '7', '10GRS00400', NULL, 'PC0DAM8N', 'Intel(R) Core(TM) i7-6700 CPU @ 3.40GHz', '6', '1 TB HDD + 2 TB HDD', '0000-00-00', '4C-CC-6A-51-6A-4A', '', '3', '4', '2', 0),
	(30, '2', '7', 'V330-15IKB Laptop Type 81AX', NULL, 'R90SY8JD', 'Intel(R) Core(TM) i5-8250U CPU @ 1.60GHz', '5', '1 TB HDD + 128 GB SSD', '0000-00-00', '48-2A-E3-2C-E2-6D', 'FC-77-74-7D-41-EB', '3', '4', '2', 0),
	(31, '2', '7', 'V330-15IKB - Type 81AX', NULL, 'R90ST3JW', 'Intel(R) Core(TM) i5-8250U CPU @ 1.60GHz', '5', '240 GB SSD', '0000-00-00', '', '', '', '3', '1', 0),
	(32, '3', '6', '600B', NULL, 'TRF3080KCH', 'Intel(R) Core(TM) i3-3220T CPU @ 2.80GHz', '5', '500 GB HDD', '0000-00-00', '', '', '', '3', '1', 0),
	(33, '2', '7', 'Thinkpad E470E470 20H1S01C00', NULL, 'PF0QJK0V', 'Intel(R) Core(TM) i5-7200U CPU @ 2.50GHz', '13', '250 GB SSD', '0000-00-00', 'C8-5B-76-F1-8F-3E', '00-28-F8-5F-C8-6E', '3', '4', '2', 0),
	(34, '3', 'To', '', NULL, '7', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(35, '2', '7', '81AX', NULL, 'R90SY9MC', 'Intel(R) Core(TM) i5-8250U CPU @ 1.60GHz', '6', '1 TB HDD + 128 GB SSD', '0000-00-00', '48-2A-E3-2C-E2-75', 'FC-77-74-7D-14-5F', '3', '4', '2', 0),
	(36, '3', '7', 'E73 10DRS03000', NULL, 'PC02J9B1', 'Intel(R) Core(TM) i7-4790S CPU @ 3.20GHz', '6', '1 TB HDD + 2 TB HDD', '0000-00-00', 'D8-CB-8A-23-7D-EA', '', '3', '7', '2', 0),
	(37, '2', '7', 'V330-15IKB - Type 81AX', NULL, 'R90SY8HM', 'Intel(R) Core(TM) i5-8250U CPU @ 1.60GHz', '13', '1 TB HDD + 128 GB SSD', '0000-00-00', '48-2A-E3-2C-E2-65', 'FC-77-74-7D-40-F6', '2 ', '4', '2', 0),
	(38, '2', '7', 'V330-15IKB - Type 81AX', NULL, 'R90SY8L8', 'Intel(R) Core(TM) i5-8250U CPU @ 1.60GHz', '13', '1 TB HDD + 128 GB SSD', '0000-00-00', 'FC-77-74-7C-FF-5F', 'FC-77-74-7C-FF-5B', '3', '4', '2', 0),
	(39, '3', '6', 'ProDesk 400 G2 MT', NULL, 'TRF44507BF', 'Intel(R) Core(TM) i7-4790 CPU @ 3.60GHz', '6', '1 TB HDD + 500 GB HDD', '0000-00-00', '', '', '', '3', '1', 0),
	(40, '3', '6', '600B', NULL, 'TRF3090JCF', 'Intel(R) Core(TM) i3-3220T CPU @ 2.80GHz', '5', '500 GB HDD', '0000-00-00', '', '', '', '3', '1', 0),
	(41, '2', '9', '', NULL, '8', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(42, '4', '7', 'V410z All-in-One - Type 10QW0008TX', NULL, 'YJ00AW3D', 'Intel(R) Core(TM) i5-7400T CPU @ 2.40GHz', '5', '500 GB HDD', '0000-00-00', '1C-83-41-24-08-60', '60-F6-77-36-59-89', '3', '4', '2', 0),
	(43, '3', '5', 'D520MT', NULL, 'G4PFCG000CUR', 'Intel(R) Core(TM) i5-6400 CPU @ 2.70GHz', '5', '1 TB HDD', '0000-00-00', '', '', '', '3', '1', 0),
	(44, '3', 'To', '', NULL, '9', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(45, '2', '6', 'HP 250 G4 Notebook PC', NULL, 'CND546497C', 'Intel(R) Core(TM) i5-6200U CPU @ 2.30GHz', '5', '250GB SSD', '0000-00-00', 'DC-4A-3E-D2-95-87', '60-6D-C7-E9-BD-01', '3', '5', '2', 0),
	(46, '2', '7', 'E480 20KN005DTX', NULL, 'PF18KFZ1', 'Intel(R) Core(TM) i5-8250U CPU @ 1.60GHz', '6', '240 GB SSD', '0000-00-00', '8C-16-45-9F-49-CC', 'AA-20-87-14-DB-54', '3', '5', '2', 0),
	(47, '2', '7', '', NULL, '10', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(48, '2', '7', 'E480 20KN005DTX', NULL, 'PF18KG26', 'Intel(R) Core(TM) i5-8250U CPU @ 1.60GHz', '6', '256 SSD + 1 TB HDD harici', '0000-00-00', '8C-16-45-9F-50-4C', '14-4F-8A-76-37-9D', '3', '4', '2', 0),
	(49, '2', '7', 'V330-15IKB - Type 81AX', NULL, 'R90QX3LG', 'Intel(R) Core(TM) i5-8250U CPU @ 1.60GHz', '6', '1 TB HDD', '0000-00-00', '', '', '', '3', '1', 0),
	(50, '2', '7', '', NULL, '11', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(51, '2', '7', '', NULL, '12', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(52, '2', '7', '320-15IKB (Type 81BG, 81BT', NULL, 'PF13TVQF', 'Intel(R) Core(TM) i5-8250U CPU @ 1.60GHz', '6', '256 GB SSD', '0000-00-00', '8C-16-45-25-71-77', '98-22-EF-E8-6A-17', '', '4', '2', 0),
	(53, '2', '7', '320-15IKB - Type 81BT', NULL, 'PF13TTLZ', 'Intel(R) Core(TM) i5-8250U CPU @ 1.60GHz', '6', '1 TB HDD', '0000-00-00', '', '', '', '3', '1', 0),
	(54, '2', '5', '1303918', NULL, 'DMPV242', 'Intel(R) Core(TM) i5-4210U CPU @ 1.70GHz', '5', '500HDD', '0000-00-00', '80-19-34-A9-9F-1F', '80-19-34-A9-9F-1B', '3', '6', '2', 0),
	(55, '3', 'To', '', NULL, '13', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(56, '3', 'To', '', NULL, '14', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(57, '3', 'To', '', NULL, '15', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(58, '2', '4', 'X550VC', NULL, 'D8NOCV1808996338', 'Intel(R) Core(TM) i5-3230M CPU @ 2.60GHz', '6', '256 GB SSD', '0000-00-00', 'AC-22-0B-B8-3E-AF', '24-0A-64-74-28-35', '3', '5', '2', 0),
	(59, '2', '10', 'SATELLITE R830', NULL, '4B039191H', 'Intel(R) Core(TM) i5-2410M CPU @ 2.30GHz', '6', '256 GB SSD', '0000-00-00', '', '', '', '3', '1', 0),
	(60, '2', '7', '', NULL, '16', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(61, '2', '10', '', NULL, '17', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(62, '2', '5', '1303918', NULL, 'JTJV242/N232', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(63, '2', '5', '', NULL, '18', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(64, '2', '8', '3530CE', NULL, 'HWXX91HCA00036M', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(65, '2', '4', 'X551CA', NULL, 'DCN0CX931697527', '?3- 3217U', '5', '500 GB', '0000-00-00', 'E0-3F-49-36-AE-EB', '6C-71-D9-AD-A8-55', '4', '5', '2', 0),
	(66, '2', '7', '18264,04167', NULL, 'MPNXB5924064', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(67, '2', '7', 'E-50-80', NULL, 'MPI04EP8', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(69, '3', 'To', '', NULL, '20', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(70, '3', '7', '', NULL, '21', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(71, '3', '7', '', NULL, '22', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(73, '2', '3', '', NULL, 'Tu?rul Konak', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(74, '2', '7', '81AX', NULL, 'R90TJLH3', 'Intel(R) Core(TM) i5-8250U CPU @ 1.60GHz', '6', '256 GB SSD', '0000-00-00', 'A8-6D-AA-D3-E5-09', 'A8-6D-AA-D3-E5-05', '3', '4', '2', 0),
	(75, '2', '4', 'X542UR', NULL, 'H9N0CV082159379', 'Intel(R) Core(TM) i7-7500U CPU @ 2.70GHz', '6', '1 TB HDD', '0000-00-00', 'B0-6E-BF-16-E7-0C', '40-9F-38-5F-63-1B', '3', '4', '2', 0),
	(76, '2', '5', '1336059', NULL, 'B1D0S32', 'Intel(R) Core(TM) i5-5200U CPU @ 2.20GHz', '6', '240 GB SSD', '0000-00-00', '34-E6-D7-75-6E-14', '34-E6-AD-88-32-2C', '3', '4', '2', 0),
	(77, '2', '5', '599730', NULL, '6C9M532', 'Intel(R) Core(TM) i7-4510U CPU @ 2.00GHz', '6', '256 GB SSD', '0000-00-00', '74-E6-E2-27-99-54', '4C-BB-58-42-22-C7', '3', '4', '2', 0),
	(78, '2', '7', '81AX', NULL, 'R90TJHWF', 'Intel(R) Core(TM) i5-8250U CPU @ 1.60GHz', '6', '1 TB HDD + 250 GB SSD', '0000-00-00', '48-2A-E3-38-B1-21', 'A8-6D-AA-DB-FB-82', '3', '4', '2', 0),
	(79, '2', '7', 'G50-70 - Type 20351', NULL, 'YB07341423', 'Intel(R) Core(TM) i7-4510U CPU @ 2.00GHz', '9', '500 GB HDD', '0000-00-00', '68-F7-28-28-CE-F1', 'D0-7E-35-34-E0-45', '3', '4', '2', 0),
	(80, '2', '5', '1303187', NULL, '8W8DRF2', 'Intel(R) Core(TM) i7-7500U CPU @ 2.70GHz', '6', '250 GB SSD', '0000-00-00', '18-DB-F2-3C-31-4C', '98-54-1B-57-22-1D', '3', '4', '2', 0),
	(81, '2', '5', '1303187', NULL, 'GW6X1G2', 'Intel(R) Core(TM) i7-7500U CPU @ 2.70GHz', '6', '1 TB HDD', '0000-00-00', 'D4-81-D7-B5-43-A0', 'E2-57-2C-91-62-12', '3', '4', '2', 0),
	(82, '2', '4', 'X542UR', NULL, 'H9N0CV091455373', 'Intel(R) Core(TM) i7-7500U CPU @ 2.70GHz', '9', '1 TB HDD', '0000-00-00', 'B0-6E-BF-1A-A8-BF', '40-9F-38-7A-5F-85', '3', '4', '2', 0),
	(83, '3', '6', 'Pro 3500 Series', NULL, 'TRF4020H7Y', 'Intel(R) Core(TM) i3-3240 CPU @ 3.40GHz', '5', '500 GB HDD + 250GB SSD', '0000-00-00', 'F0-92-1C-ED-2C-0C', '', '3', '4', '2', 0),
	(84, '3', '7', 'E73 ThinkCentre - Type  10DRS03000', NULL, 'PC02J9AN', 'Intel(R) Core(TM) i7-4790S CPU @ 3.20GHz', '6', '1 TB HDD', '0000-00-00', 'D8-CB-8A-23-8D-42', '', '3', '5', '2', 0),
	(85, '2', '5', '529604', NULL, '86LJPR1', 'Intel(R) Core(TM) i5-2450M CPU @ 2.50GHz', '5', '500 GB HDD', '0000-00-00', '24-B6-FD-39-56-9F', '4C-EB-42-3E-0A-A3', '5', '5', '2', 0),
	(86, '3', '7', 'E73 10DRS03000', NULL, '302J9AR', 'Intel(R) Core(TM) i7-4790S CPU @ 3.20GHz', '6', '1 TB HDD + 256 SSD', '0000-00-00', 'D8-CB-8A-23-90-D8', '', '3', '4', '2', 0),
	(87, '2', '4', 'X542UR', NULL, 'H9N0CV09132137B', 'Intel(R) Core(TM) i7-7500U CPU @ 2.70GHz', '6', '1 TB HDD', '0000-00-00', '', '40-9F-38-7A-61-17', '3', '3', '2', 0),
	(88, '2', '7', '', NULL, '24', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(89, '2', '7', '', NULL, '25', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(90, '2', '4', 'X555LN', NULL, 'EBN0CV003519447', 'Intel(R) Core(TM) i7-4510U CPU @ 2.00GHz', '6', '1 TB HDD + 240 GB SSD', '0000-00-00', '38-2C-4A-29-58-8A', '30-10-B3-E2-23-98', '3', '4', '2', 0),
	(91, '3', 'Na', '', NULL, 'F0-D5-BF-D4-3B-AE', 'Intel(R) Core(TM) i7-8700 CPU @ 3.20GHz', '6', '240 SSD', '0000-00-00', '', 'F0-D5-BF-D4-3B-AE', '3', '4', '2', 0),
	(92, '2', '7', '', NULL, '27', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(93, '2', '7', '80QQ', NULL, '28', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(94, '2', '7', 'V330-14IKB', NULL, 'MP1HNB0K', 'Intel(R) Core(TM) i5-8250U CPU @ 1.60GHz', '6', '256 GB SSD', '0000-00-00', '', '', '', '3', '1', 0),
	(95, '3', '1', 'HP Z220 CMT Workstation', NULL, 'CZC3270Q5F', 'Intel(R) Xeon(R) CPU E3-1240 V2 @ 3.40GH', '9', '256 GB SSD', '0000-00-00', '', '', '', '3', '1', 0),
	(96, '2', '1', '', NULL, '29', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(97, '2', '7', '', NULL, '30', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(98, '2', '7', '', NULL, '31', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(99, '2', '7', '', NULL, '32', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(100, '2', '6', '', NULL, '33', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(101, '2', '7', 'ideapad 300-15ISK 80Q7', NULL, 'PF0H12JA', 'Intel(R) Core(TM) i5-6200U CPU @ 2.30GHz', '5', '256 GB SSD', '0000-00-00', '50-7B-9D-C8-99-AA', '08-D4-0C-AF-58-8E', '3', '6', '2', 0),
	(102, '2', '7', '', NULL, '34', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(103, '2', '5', '618358', NULL, '6LBYB33', 'Intel(R) Core(TM) i5-1035G1 CPU @ 1.00GH', '6', '256 GB SSD', '0000-00-00', '98-E7-43-55-16-1E', 'DA-12-2D-B8-EC-07', '2 ', '4', '2', 0),
	(104, '2', '7', '20351', NULL, 'YB07105344', '?7', '5', '500 GB HDD', '0000-00-00', '', '', '', '3', '1', 0),
	(105, '2', '7', '', NULL, '35', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(106, '2', '7', 'Thinkpad E470 20LSS04M00', NULL, 'PF115T80', 'Intel(R) Core(TM) i5-8250U CPU @ 1.60GHz', '6', '256 GB SSD', '0000-00-00', '', '', '', '3', '1', 0),
	(107, '2', '5', '', NULL, '36', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(108, '2', '7', '', NULL, '37', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(110, '2', '7', '', NULL, '39', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(111, '2', '7', '', NULL, '40', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(112, '2', '5', '618358', NULL, 'C30ZB33', 'Intel(R) Core(TM) i5-1035G1 CPU @ 1.00GH', '6', '256 GB SSD', '0000-00-00', '', '', '', '3', '1', 0),
	(113, '2', '7', '', NULL, '41', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(114, '2', '7', '', NULL, '42', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(115, '2', '5', '', NULL, '43', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(116, '2', '7', '', NULL, '44', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(117, '2', '7', '', NULL, '45', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(118, '2', '7', '', NULL, '46', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(119, '2', '7', '', NULL, '47', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(120, '3', 'To', '', NULL, '48', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(121, '2', '7', '', NULL, '49', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(122, '2', '7', '', NULL, '50', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(123, '2', '7', '', NULL, '51', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(124, '2', '10', 'Satelite Radius 14 L40W-C-102', NULL, '9F0856925', '?3-5005U', '5', '500 GB HDD', '0000-00-00', '', '', '', '3', '1', 0),
	(125, '3', 'To', '', NULL, '52', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(126, '2', '7', '', NULL, '53', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(127, '2', '7', 'IdeaPad 310 80SM009YTX', NULL, 'PF0NRU6M', 'Intel(R) Core(TM) i5-6200U CPU @ 2.30GHz', '5', '1 TB HDD', '0000-00-00', '', '', '', '3', '1', 0),
	(128, '2', '6', '', NULL, '54', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(129, '2', '7', '310-15ISK - Type 80SM', NULL, 'PF0NRXTP 1', 'Intel(R) Core(TM) i5-6200U CPU @ 2.30GHz', '5', '500 GB HDD', '0000-00-00', '', '', '', '3', '1', 0),
	(130, '3', 'To', '', NULL, '55', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(131, '2', '7', '', NULL, '56', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(132, '2', '7', 'V330-14IKB', NULL, 'MP1HNB2H', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(134, '2', '4', 'N550JX', NULL, 'F5N0CY371027216', 'Intel(R) Core(TM) i7-4720HQ CPU @ 2.60GH', '6', '240GB SSD', '0000-00-00', '1C-B7-2C-15-C2-CF', 'D8-FC-93-A3-FD-8B', '3', '4', '2', 0),
	(135, '2', '5', '600095', NULL, 'FRL0F32', 'Intel(R) Core(TM) i7-5500U CPU @ 2.40GHz', '6', '256 GB SSD', '0000-00-00', '74-E6-E2-4F-F7-1B', '2C-33-7A-FE-95-41', '3', '4', '2', 0),
	(136, '3', '6', 'HP 600B', NULL, 'TRF24102B2', 'Intel(R) Core(TM) i3-3220T CPU @ 2.80GHz', '5', '500 GB HDD', '0000-00-00', '4C-72-B9-2E-EA-5B', '', '3', '5', '2', 0),
	(137, '3', 'To', '', NULL, '58', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(138, '4', '7', '10QW0011TX', NULL, 'YJ009C75', 'Intel(R) Core(TM) i5-7400T CPU @ 2.40GHz', '5', '1 TB HDD', '0000-00-00', '1C-83-41-23-21-69', '44-03-2C-4A-02-54', '3', '4', '2', 0),
	(139, '4', '7', '10QW0011TX', NULL, 'YJ009C6W', 'Intel(R) Core(TM) i5-7400T CPU @ 2.40GHz', '5', '1 TB HDD', '0000-00-00', '1C-83-41-23-1D-F4', '44-03-2C-4A-B4-DD', '3', '4', '2', 0),
	(140, '4', '7', '10QW0011TX', NULL, 'YJ009E2M', 'Intel(R) Core(TM) i5-7400T CPU @ 2.40GHz', '5', '1 TB HDD', '0000-00-00', '1C-83-41-22-9E-C9', '44-03-2C-4A-42-B9', '3', '4', '2', 0),
	(141, '4', '7', '10QW0011TX', NULL, 'YJ009C8D', 'Intel(R) Core(TM) i5-7400T CPU @ 2.40GHz', '5', '1 TB HDD', '0000-00-00', '1C-83-41-23-23-1C', '44-03-2C-4A-02-45', '3', '4', '2', 0),
	(142, '4', '7', '10QW0011TX', NULL, 'YJ009C94', 'Intel(R) Core(TM) i5-7400T CPU @ 2.40GHz', '5', '1 TB HDD', '0000-00-00', '1C-83-41-23-23-95', '44-03-2C-4A-B4-E2', '3', '4', '2', 0),
	(143, '4', '7', '10QW0011TX', NULL, 'YJ009C8G', 'Intel(R) Core(TM) i5-7400T CPU @ 2.40GHz', '5', '1 TB HDD', '0000-00-00', '1C-83-41-23-1C-42', '44-03-2C-4A-B1-F9', '3', '4', '2', 0),
	(145, '4', '7', '10QW0011TX', NULL, 'YJ009DSW', 'Intel(R) Core(TM) i5-7400T CPU @ 2.40GHz', '5', '1 TB HDD', '0000-00-00', '1C-83-41-22-A2-72', '44-03-2C-7D-91-82', '3', '4', '2', 0),
	(146, '4', '7', '10QW0011TX', NULL, 'YJ009C6J', 'Intel(R) Core(TM) i5-7400T CPU @ 2.40GHz', '5', '1 TB HDD', '0000-00-00', '1C-83-41-23-20-54', '44-03-2C-4A-B4-1F', '3', '4', '2', 0),
	(147, '2', '7', '81AX', NULL, 'R90PZKRE', 'Intel(R) Core(TM) i5-8250U CPU @ 1.60GHz', '5', '256 GB SSD', '0000-00-00', '54-EE-75-F2-8D-A9', '8C-A9-82-F7-C3-7B', '3', '4', '2', 0),
	(148, '2', '7', '81AX', NULL, 'R90PZKTA', 'Intel(R) Core(TM) i5-8250U CPU @ 1.60GHz', '5', '120 GB', '0000-00-00', '54-EE-75-F2-8D-A6', '8C-A9-82-F7-7B-BE', '3', '5', '2', 0),
	(149, '2', '7', '80UD', NULL, 'MP14JD91', 'Intel(R) Core(TM) i5-6200U CPU @ 2.30GHz', '5', '500 GB', '0000-00-00', '1C-39-47-E3-79-67', 'CC-B0-DA-A5-A7-57', '3', '4', '2', 0),
	(150, '2', '7', '20236', NULL, '3,26015E+12', 'Intel(R) Core(TM) i5-3230M CPU @ 2.60GHz', '5', '256 GB SSD', '0000-00-00', '20-1A-06-29-F9-DD', 'A4-DB-30-2B-B9-36', '3', '4', '2', 0),
	(151, '2', '7', '20351', NULL, '1,04209E+12', 'Intel(R) Core(TM) i7-4510U CPU @ 2.00GHz', '9', '240GB', '0000-00-00', '68-F7-28-27-32-12', 'D0-7E-35-3E-8D-5C', '3', '5', '2', 0),
	(152, '2', '7', '20351', NULL, '1,04209E+12', 'Intel(R) Core(TM) i7-4510U CPU @ 2.00GHz', '9', '250GB', '0000-00-00', '68-F7-28-27-31-C8', 'D0-7E-35-2E-0B-53', '3', '4', '2', 0),
	(153, '2', '4', 'X550VC', NULL, 'D8N0CV181148339', 'Intel(R) Core(TM) i5-3230M CPU @ 2.60GHz', '9', '500 GB HDD', '0000-00-00', 'AC-22-0B-B7-2A-53', '24-0A-64-52-FE-51', '3', '4', '2', 0),
	(154, '2', '7', '80Q7', NULL, 'PF0EWZYN', 'Intel(R) Core(TM) i5-6200U CPU @ 2.30GHz', '5', '256 GB SSD', '0000-00-00', '50-7B-9D-6E-ED-1D', 'E0-94-67-4A-84-09', '3', '5', '2', 0),
	(155, '2', '7', '20351', NULL, 'AAYB07341033', 'Intel(R) Core(TM) i7-4510U CPU @ 2.00GHz', '9', '256 GB SSD', '0000-00-00', '68-F7-28-27-35-88', 'D0-7E-35-3B-49-8F', '3', '4', '2', 0),
	(156, '2', '7', '20351', NULL, '1,04209E+12', 'Intel(R) Core(TM) i7-4510U CPU @ 2.00GHz', '9', '367 GB HDD', '0000-00-00', '68-F7-28-27-31-B0', 'D0-7E-35-3D-A5-A9', '3', '4', '2', 0),
	(157, '2', '7', '20351', NULL, '1,04209E+12', 'Intel(R) Core(TM) i7-4510U CPU @ 2.00GHz', '9', '300 GB', '0000-00-00', '68-F7-28-27-31-BB', 'D0-7E-35-3E-8C-08', '3', '5', '2', 0),
	(158, '2', '4', 'X555LNB', NULL, 'F1N0CV72904405A', 'Intel(R) Core(TM) i7-5500U CPU @ 2.40GHz', '5', '240 GB SSD', '0000-00-00', '08-62-66-1E-43-53', '40-E2-30-D1-8B-39', '3', '4', '2', 0),
	(159, '2', '4', 'X550CC', NULL, 'DCN0WU02139049C', 'Intel(R) Core(TM) i3-3217U CPU @ 1.80GHz', '5', '500 HDD', '0000-00-00', 'BC-EE-7B-C8-6A-11', '48-5A-B6-43-E0-6D', '3', '4', '2', 0),
	(160, '2', '2', 'Aspire 4820TG', NULL, 'LXPSE0234103700FE62500', 'Intel(R) Core(TM) i5 CPU       M 460  @ ', '6', '500GB', '0000-00-00', '60-EB-69-4C-1C-89', '4C-0F-6E-62-92-ED', '3', '5', '2', 0),
	(161, '2', '6', 'HP 250 G4 Notebook PC', NULL, 'CND53799HL', 'Intel(R) Core(TM) i5-5200U CPU @ 2.20GHz', '5', '256 GB SSD', '0000-00-00', 'B0-5A-DA-9D-ED-DC', 'D8-5D-E2-BB-E2-5D', '', '4', '2', 0),
	(162, '2', '5', '618358', NULL, '15ZHX23', '', '6', '256 GB SSD', '0000-00-00', '', '', '2 ', '4', '2', 0),
	(163, '2', '5', '618358', NULL, '90WKX23 1', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(164, '2', '6', '15-r120nt', NULL, 'CND4469Z5K', 'Intel(R) Core(TM) i7-4510U CPU @ 2.00GHz', '5', '500 GB HDD', '0000-00-00', '', '', '', '3', '1', 0),
	(165, '4', '7', '10QW0011TX', NULL, 'YJ009C8J', 'Intel(R) Core(TM) i5-7400T CPU @ 2.40GHz', '5', '1 TB HDD', '0000-00-00', '1C-83-41-23-1B-BB', '44-03-2C-4A-B4-EC', '3', '4', '2', 0),
	(166, '2', '7', 'V330-15IKB - Type 81AX', NULL, 'R90QX3SJ', 'Intel(R) Core(TM) i5-8250U CPU @ 1.60GHz', '5', '1 TB HDD', '0000-00-00', '', '', '', '3', '1', 0),
	(167, '2', '4', '', NULL, '61', '', '1', '', '0000-00-00', '', '', '', '3', '1', 0),
	(168, '2', '7', 'ideapad 100-15IBD', NULL, 'PF0Q491', 'Intel(R) Core(TM) i3-5005U CPU @ 2.00GHz', '5', '500 GB HDD', '0000-00-00', '', '', '', '3', '1', 0),
	(169, '2', '7', '81Y4', NULL, 'PF2CW3YH', 'Intel(R) Core(TM) i7-10750H CPU @ 2.60GH', '8', '500 GB SSD', '0000-00-00', '00-2B-67-AC-A6-76', 'C8-58-C0-EF-53-D5', '3', '4', '2', 0),
	(170, '2', '7', 'V14-IIL', NULL, 'PF24MPAF', 'Intel(R) Core(TM) i7-1065G7 CPU @ 1.30GH', '6', '256 GB SSD', '0000-00-00', '', '', '', '3', '1', 0),
	(171, '3', '7', '10DRS03000', NULL, '302J9AL', 'Intel(R) Core(TM) i7-4790S CPU @ 3.20GHz', '6', '1 TB HDD', '0000-00-00', '', '', '', '3', '1', 0),
	(172, '2', '5', 'Vostro 14 3000', NULL, 'G92LJ93', 'Intel(R) Core(TM) i5-1135G7 @ 2.40GHz', '6', '256 GB SSD + 1 TB HDD', '0000-00-00', '', '', '', '3', '1', 0),
	(173, '2', '4', 'X551CA-SX014H', NULL, 'DCN0CX931449528', 'Intel(R) Core(TM) i3-3217U CPU @ 1.80GHz', '5', '500 GB HDD', '0000-00-00', '', '', '', '3', '1', 0),
	(174, '2', '7', 'LENOVO, 81B0', NULL, 'MP1HNB1A', 'Intel(R) Core(TM) i5-8250U CPU @ 1.60GHz', '6', '256 GB SSD', '0000-00-00', '', '', '', '3', '1', 0),
	(175, '2', '7', '20SL', NULL, 'LR0D2XM5', 'Intel(R) Core(TM) i5-1035G1 CPU @ 1.00GH', '6', '237 GB SSD', '0000-00-00', 'B4-A9-FC-94-EE-3A', 'E8-6F-38-26-19-63', '3', '4', '2', 0),
	(176, '2', '4', 'X550VC', NULL, 'D8N0CV181140335', 'Intel(R) Core(TM) i5-3230M CPU @ 2.60GHz', '9', '300GB', '0000-00-00', 'AC-22-0B-B8-42-3A', '24-0A-64-53-16-CF', '3', '5', '2', 0),
	(177, '2', '4', 'X550VC', NULL, 'D8N0CV18090333A', 'Intel(R) Core(TM) i5-3230M CPU @ 2.60GHz', '9', '320 GB HDD', '0000-00-00', '', '', '', '3', '1', 0),
	(178, '2', '7', 'Thinkbook', NULL, 'LR0BULCS', 'Intel(R) Core(TM) i7-1065G7 CPU @ 1.30GH', '6', '256 GB SSD', '0000-00-00', '', '', '', '3', '1', 0),
	(179, '2', '1', 'X542UR', NULL, 'H9N0CV17852239C', 'Intel(R) Core(TM) i7-7500U CPU @ 2.70GHz', '6', '1 TB HDD', '0000-00-00', '', '', '', '3', '1', 0),
	(180, '3', '6', 'HP ProDesk 400 G2 MT', NULL, 'TRF44507G8', 'Intel(R) Core(TM) i7-4790 CPU @ 3.60GHz', '6', '1 TB HDD + 240 GB SSD', '0000-00-00', '', '', '', '3', '1', 0),
	(182, '2', '7', 'G50-70 Model 20351', NULL, '1,04209E+12', 'Intel(R) Core(TM) i7-4510U CPU @ 2.00GHz', '5', '500 GB HDD', '0000-00-00', '', '', '', '3', '1', 0),
	(183, '2', '5', '547866', NULL, 'J42LC93', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2', '6', '1 TB HDD + 256 GB SSD', '0000-00-00', '', '', '', '3', '1', 0),
	(184, '3', '7', 'V410Z 10QW0006TX', NULL, 'YJ006RSB', 'Intel(R) Core(TM) i5-7400T CPU @ 2.40GHz', '6', '1 TB HDD', '0000-00-00', '', '', '', '3', '1', 0),
	(185, '2', '7', 'V330-15IKB - Type 81AX', NULL, 'R90TJLM1', 'Intel(R) Core(TM) i5-8250U CPU @ 1.60GHz', '6', '256 GB SSD', '0000-00-00', '', '', '', '3', '1', 0),
	(186, '2', '7', 'Thinkpad E14 (Type 20RA, 20RB)', NULL, 'PF-26M3Z3', 'Intel(R) Core(TM) i5-10210U CPU @ 1.60GH', '6', '2 TB HDD + 256 GB SSD', '0000-00-00', 'F8-75-A4-C8-A4-84', 'D8-3B-BF-6C-5A-98', '3', '4', '2', 0),
	(187, '2', '7', '20H1S01C00', NULL, 'PF0QJK0R', 'Intel(R) Core(TM) i5-7200U CPU @ 2.50GHz', '6', '256 GB SSD', '0000-00-00', '', '', '', '3', '1', 0),
	(188, '3', '7', 'V410Z 10QW0008TX', NULL, 'YJ00GEES', 'Intel(R) Core(TM) i5-7400T CPU @ 2.40GHz', '4', '500 GB HDD + 4 TB HDD', '0000-00-00', '8C-16-45-61-C1-90', '94-B8-6D-E4-B3-94', '3', '4', '2', 0),
	(189, '2', '7', '300-15ISK ideapad - Type 80Q7', NULL, 'PF0E93WM', 'Intel(R) Core(TM) i5-6200U CPU @ 2.30GHz', '5', '500 GB HDD', '0000-00-00', '', '', '', '3', '1', 0),
	(190, '2', '7', '310-15ISK ideapad - Type 80SM', NULL, 'PF0NRXTP 2', 'Intel(R) Core(TM) i5-6200U CPU @ 2.30GHz', '5', '750 GB HDD', '0000-00-00', '', '', '', '3', '1', 0),
	(191, '2', '6', '250 G4', NULL, 'CND5492JNN', 'Intel(R) Core(TM) i5-6200U CPU @ 2.30GHz', '1', 'YOK', '0000-00-00', '', '', '', '3', '1', 0),
	(192, '2', '5', '618358', NULL, '90WKX23 2', 'Intel(R) Core(TM) i5-1035G1 CPU @ 1.00GH', '6', '256 GB SSD', '0000-00-00', '', '', '', '3', '1', 0),
	(193, '2', '7', 'E50-80 - Type 80J2', NULL, 'MP104EP8', 'Intel(R) Core(TM) i5-2410M CPU @ 2.30GHz', '5', '500 GB HDD', '0000-00-00', '', '', '', '3', '1', 0),
	(194, '2', '7', 'V330-15IKB - Type 81AX', NULL, 'R90QX3R5', 'Intel(R) Core(TM) i5-8250U CPU @ 1.60GHz', '6', '1 TB HDD', '0000-00-00', '', '', '', '3', '1', 0),
	(195, '2', '5', '1303918', NULL, 'JTJV242', 'Intel(R) Core(TM) i5-4210U CPU @ 1.70GHz', '5', '500 GB HDD', '0000-00-00', '', '', '', '3', '1', 0),
	(196, '2', '7', '310-15ISK - Type 80SM', NULL, 'PF0NRXTP 3', 'Intel(R) Core(TM) i5-6200U CPU @ 2.30GHz', '5', '500 GB HDD', '0000-00-00', '', '', '', '3', '1', 0),
	(197, '2', '5', '1279081', NULL, '7JG0V93', 'Intel(R) Core(TM) i5-1135G7 @ 2.40GHz', '6', '500 GB SSD', '0000-00-00', 'C0-25-A5-2E-35-FA', 'D4-1B-81-79-D7-2B', '2 ', '4', '2', 0),
	(198, '2', '4', 'X551CA', NULL, 'DCN0CX93172452A', 'Intel(R) Core(TM) i3-3217U CPU @ 1.80GHz', '5', '500 GB HDD', '0000-00-00', '', '', '', '3', '1', 0),
	(199, '2', '7', 'V330-15IKB', NULL, 'R90QX6BG', 'Intel(R) Core(TM) i5-8250U CPU @ 1.60GHz', '6', '1 TB HDD', '0000-00-00', '48-2A-E3-06-AF-7B', 'B4-6B-FC-EF-94-85', '3', '7', '2', 0),
	(200, '2', '4', 'X550VC', NULL, 'D8N0V18090333A', 'Intel(R) Core(TM) i5-3230U CPU @ 2.60GHz', '9', '240 GB SSD', '0000-00-00', '', '', '', '3', '1', 0),
	(201, '2', '7', 'ideapad 100-15IBD', NULL, 'PF0FQ491', 'Intel(R) Core(TM) i5-1135G7 CPU @ 2.40GH', '5', '240 GB SSD', '0000-00-00', '', '', '', '3', '1', 0),
	(202, '2', '6', 'HP Laptop 15s-fq2xxx', NULL, '5CD127K3KH', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2', '6', '500 GB SSD', '0000-00-00', '90-0F-0C-35-81-20', '90-0F-0C-35-81-1F', '3', '4', '2', 0),
	(203, '2', '5', '1303918', NULL, '4B7V02', 'Intel(R) Core(TM) i5-4200U CPU @ 2.30GHz', '5', '465 GB HDD', '0000-00-00', 'E0-DB-55-ED-5C-F0', 'FC-F8-AE-22-2F-04', '3', '7', '2', 0),
	(204, '2', '6', '34OS G7', NULL, '5CD104KMZB', 'Intel(R) Core(TM) i5-1035G1 CPU @ 1.00GH', '6', '240 GB SSD', '0000-00-00', '70-9C-D1-14-BF-FD', '70-9C-D1-14-BF-F9', '3', '4', '2', 0),
	(205, '2', '6', '15S-FQ2027NT', NULL, '5CD127K376', 'Intel(R) Core(TM) i3-5005U CPU @ 2.00GHz', '6', '500 GB SSD', '0000-00-00', '', '', '', '3', '1', 0),
	(206, '2', '5', '547866', NULL, 'DDTJJ93', '11th Gen Intel(R) Core(TM) i5-1135G7 @ 2', '6', '256 GB SSD + 1 TB HDD', '0000-00-00', '30-D0-42-29-33-01', 'A4-97-B1-4A-78-FB', '3', '4', '2', 0),
	(207, '2', '10', 'Satellite C855-2C5', NULL, '2D129786R', '', '1', 'YOK', '0000-00-00', '', '', '', '3', '1', 0),
	(208, '2', '2', 'Aspire 5733 PEW71', NULL, 'LXRN50102213608DF51601', '', '1', 'YOK', '0000-00-00', '', '', '', '3', '1', 0),
	(209, '2', '1', '500379,9555', NULL, 'CND73821X2', '', '1', 'YOK', '0000-00-00', '', '', '', '3', '1', 0),
	(210, '2', '2', 'Aspire 4820T', NULL, '10801595925', 'Intel(R) Core(TM) i5 CPU M 480  @ 2.67GH', '5', '500 GB HDD', '0000-00-00', '', '', '', '3', '1', 0),
	(212, '2', '7', 'V330-15IKB', NULL, 'R90TJHPJ', 'Intel(R) Core(TM) i5-8250U CPU @ 1.60GHz', '6', '128 GB SSD + 1 TB HDD', '0000-00-00', '', '', '3', '3', '2', 0),
	(213, '2', '7', '81AX', NULL, 'R90ST5CF', 'Intel(R) Core(TM) i5-8250U CPU @ 1.60GHz', '6', '1 TB HDD', '0000-00-00', '48-2A-E3-2A-3B-E9', 'A0-A4-C5-4B-4B-AA', '3', '4', '2', 0),
	(216, '2', '7', '20TBS2AQ00', NULL, 'PF39RXZP', '11th Gen Intel(R) Core(TM) i7-1165G7 @ 2', '8', '300 GB SSD', '0000-00-00', '84-A9-38-07-3D-79', '80-B6-55-FF-69-28', '3', '4', '2', 0),
	(217, '3', '5', '2571309', NULL, '3XCJWH3', '11th Gen Intel(R) Core(TM) i7-11700 @ 2.', '8', '500 GB SSD + 1 TB HDD', '0000-00-00', 'D0-8E-79-00-95-FD', '90-CC-DF-B7-96-52', '3', '4', '2', 0),
	(218, '2', '4', 'X101H', NULL, 'BAOAAS226608', 'Intel(R) Atom(TM) CPU N570 @ 1.66GHz', '2', '240 GB HDD', '0000-00-00', '', '74-2F-68-A5-B8-1F', '5', '7', '3', 0),
	(219, '2', '7', '20023', NULL, '2,45422E+12', 'Pentium(R) Dual-Core CPU T4500 @2.30GHz', '3', '160GB HDD', '0000-00-00', '88-AE-1D-D8-FF-38', 'C0-CB-38-20-2C-BB', '5', '7', '3', 0),
	(220, '2', '4', 'Eee PC 1000H', NULL, '950AAS259907', 'Intel(R) Atom(TM) CPU N270 @1.60GHz 1.60', '3', '240GB SSD', '0000-00-00', '00-26-18-25-60-CA', '00-25-D3-0C-66-4F', '5', '7', '3', 0),
	(221, '2', '7', '81AX', NULL, 'R90PZKKE', 'Intel(R) Core(TM) i5-8250U CPU @ 1.60GHz', '5', '120 GB SSD + 1 TB HDD', '0000-00-00', '54-EE-75-F2-95-51', '8C-A9-82-F7-6B-D8', '3', '5', '2', 0),
	(222, '3', 'MS', '2111104', NULL, '6C-62-6D-FA-BE-EB', 'Intel(R) Core(TM) i7-2600 CPU @ 3.40GHz', '5', '500 GB HDD', '0000-00-00', '6C-62-6D-FA-BE-EB', '', '5', '5', '3', 0),
	(223, '2', '5', '547866', NULL, 'BZF22D3', '11th Gen Intel(R) Core(TM) i3-1115G4 @ 3', '5', '930 HDD', '0000-00-00', '60-18-95-14-D4-E9', '50-2F-9B-58-4A-BC', '3', '6', '2', 0),
	(224, '2', '7', '33667JG', NULL, 'MP4AFZT', 'i3 3110M 2.40GHZ', '5', '500 GB HDD', '0000-00-00', '', '', '5', '7', '3', 0),
	(225, '3', '6', '500B Microtower', NULL, '3CB94520RR', 'Pentium(R) DualCore CPU E5300 @ 2.60GHz', '3', '300GB HDD', '0000-00-00', '', '', '5', '7', '3', 0),
	(226, '2', '6', 'HP 240 G8 Notebook PC', NULL, '5CG1073XB2', 'Intel(R) Core(TM) i5-1035G1 CPU @ 1.00GH', '6', '240 GB SSD', '0000-00-00', '14-CB-19-08-6E-C2', '00-E9-3A-B6-A5-29', '3', '4', '2', 0);
/*!40000 ALTER TABLE `computers` ENABLE KEYS */;

-- tablo yapısı dökülüyor wiss.employees
CREATE TABLE IF NOT EXISTS `employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL DEFAULT '',
  `surname` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL,
  `position` varchar(50) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `birthDate` varchar(50) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `socialIdentityNumber` varchar(50) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `workGroup` varchar(50) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `homeAddress` varchar(50) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `phoneNumber` varchar(50) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `startWorkDate` date DEFAULT NULL,
  `dismissalDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- wiss.employees: ~2 rows (yaklaşık) tablosu için veriler indiriliyor
DELETE FROM `employees`;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` (`id`, `name`, `surname`, `position`, `birthDate`, `socialIdentityNumber`, `workGroup`, `homeAddress`, `phoneNumber`, `email`, `startWorkDate`, `dismissalDate`) VALUES
	(2, 'deneme', 'deneme', '2', '2022-03-23', 'deneme', 'deneme', 'deneme', 'deneme', 'deneme', '2022-03-23', '0000-00-00'),
	(3, 'Wiro', 'test', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;

-- tablo yapısı dökülüyor wiss.fieldequipments
CREATE TABLE IF NOT EXISTS `fieldequipments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employeeId` int(11) DEFAULT NULL,
  `type` varchar(1) COLLATE utf8mb4_turkish_ci NOT NULL DEFAULT '0',
  `model` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL DEFAULT '0',
  `debitStartDate` date DEFAULT NULL,
  `debitEndDate` date DEFAULT NULL,
  `isTrash` int(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- wiss.fieldequipments: ~2 rows (yaklaşık) tablosu için veriler indiriliyor
DELETE FROM `fieldequipments`;
/*!40000 ALTER TABLE `fieldequipments` DISABLE KEYS */;
INSERT INTO `fieldequipments` (`id`, `employeeId`, `type`, `model`, `debitStartDate`, `debitEndDate`, `isTrash`) VALUES
	(1, 0, '3', 'wasda', '2022-04-18', '0000-00-00', 0),
	(2, 3, '3', 'test', '2022-04-06', '0000-00-00', 0);
/*!40000 ALTER TABLE `fieldequipments` ENABLE KEYS */;

-- tablo yapısı dökülüyor wiss.fieldequipmenttypes
CREATE TABLE IF NOT EXISTS `fieldequipmenttypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(50) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- wiss.fieldequipmenttypes: ~3 rows (yaklaşık) tablosu için veriler indiriliyor
DELETE FROM `fieldequipmenttypes`;
/*!40000 ALTER TABLE `fieldequipmenttypes` DISABLE KEYS */;
INSERT INTO `fieldequipmenttypes` (`id`, `value`) VALUES
	(1, ' '),
	(2, 'Shoes'),
	(3, 'Tool Set');
/*!40000 ALTER TABLE `fieldequipmenttypes` ENABLE KEYS */;

-- tablo yapısı dökülüyor wiss.networkdbrands
CREATE TABLE IF NOT EXISTS `networkdbrands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- wiss.networkdbrands: ~2 rows (yaklaşık) tablosu için veriler indiriliyor
DELETE FROM `networkdbrands`;
/*!40000 ALTER TABLE `networkdbrands` DISABLE KEYS */;
INSERT INTO `networkdbrands` (`id`, `value`) VALUES
	(1, ''),
	(2, 'test');
/*!40000 ALTER TABLE `networkdbrands` ENABLE KEYS */;

-- tablo yapısı dökülüyor wiss.networkdevicedebits
CREATE TABLE IF NOT EXISTS `networkdevicedebits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `networkDeviceId` int(11) NOT NULL DEFAULT 0,
  `employeeId` int(11) NOT NULL DEFAULT 0,
  `debitStartDate` date DEFAULT NULL,
  `debitEndDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- wiss.networkdevicedebits: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
DELETE FROM `networkdevicedebits`;
/*!40000 ALTER TABLE `networkdevicedebits` DISABLE KEYS */;
/*!40000 ALTER TABLE `networkdevicedebits` ENABLE KEYS */;

-- tablo yapısı dökülüyor wiss.networkdevices
CREATE TABLE IF NOT EXISTS `networkdevices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kind` varchar(3) COLLATE utf8mb4_turkish_ci NOT NULL DEFAULT '0',
  `brand` varchar(3) COLLATE utf8mb4_turkish_ci NOT NULL DEFAULT '0',
  `model` varchar(50) COLLATE utf8mb4_turkish_ci NOT NULL DEFAULT '0',
  `serialNumber` varchar(50) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `purchaseDate` date DEFAULT NULL,
  `isTrash` int(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- wiss.networkdevices: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
DELETE FROM `networkdevices`;
/*!40000 ALTER TABLE `networkdevices` DISABLE KEYS */;
INSERT INTO `networkdevices` (`id`, `kind`, `brand`, `model`, `serialNumber`, `purchaseDate`, `isTrash`) VALUES
	(1, '1', '2', 'hihihaha', 'seri', '2022-04-13', 0);
/*!40000 ALTER TABLE `networkdevices` ENABLE KEYS */;

-- tablo yapısı dökülüyor wiss.networkdkinds
CREATE TABLE IF NOT EXISTS `networkdkinds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(50) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- wiss.networkdkinds: ~2 rows (yaklaşık) tablosu için veriler indiriliyor
DELETE FROM `networkdkinds`;
/*!40000 ALTER TABLE `networkdkinds` DISABLE KEYS */;
INSERT INTO `networkdkinds` (`id`, `value`) VALUES
	(1, ''),
	(2, 'test');
/*!40000 ALTER TABLE `networkdkinds` ENABLE KEYS */;

-- tablo yapısı dökülüyor wiss.positions
CREATE TABLE IF NOT EXISTS `positions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(50) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- wiss.positions: ~6 rows (yaklaşık) tablosu için veriler indiriliyor
DELETE FROM `positions`;
/*!40000 ALTER TABLE `positions` DISABLE KEYS */;
INSERT INTO `positions` (`id`, `value`) VALUES
	(1, ''),
	(2, 'Mn'),
	(3, 'Turkcell Şerifali'),
	(4, 'Netwell'),
	(5, 'Netser'),
	(7, 'Mersin');
/*!40000 ALTER TABLE `positions` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
