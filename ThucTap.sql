-- -------------------------------------------------------------
-- TablePlus 3.5.0(308)
--
-- https://tableplus.com/
--
-- Database: ThucTap
-- Generation Time: 2020-07-13 16:04:43.1480
-- -------------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


DROP TABLE IF EXISTS `TBLDeTai`;
CREATE TABLE `TBLDeTai` (
  `Madt` char(10) NOT NULL,
  `Tendt` char(30) DEFAULT NULL,
  `Kinhphi` int(11) DEFAULT NULL,
  `Noithuctap` char(30) DEFAULT NULL,
  PRIMARY KEY (`Madt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `TBLGiangVien`;
CREATE TABLE `TBLGiangVien` (
  `Magv` int(11) NOT NULL,
  `Hotengv` char(30) DEFAULT NULL,
  `Luong` decimal(5,2) DEFAULT NULL,
  `Makhoa` char(10) DEFAULT NULL,
  PRIMARY KEY (`Magv`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `TBLHuongDan`;
CREATE TABLE `TBLHuongDan` (
  `Masv` int(11) NOT NULL,
  `Madt` char(10) DEFAULT NULL,
  `Magv` int(11) DEFAULT NULL,
  `KetQua` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`Masv`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `TBLKhoa`;
CREATE TABLE `TBLKhoa` (
  `Makhoa` char(10) NOT NULL,
  `Tenkhoa` char(30) DEFAULT NULL,
  `Dienthoai` char(10) DEFAULT NULL,
  PRIMARY KEY (`Makhoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `TBLSinhVien`;
CREATE TABLE `TBLSinhVien` (
  `Masv` int(11) NOT NULL,
  `Hotensv` char(40) DEFAULT NULL,
  `Makhoa` char(10) DEFAULT NULL,
  `Namsinh` int(11) DEFAULT NULL,
  `Quequan` char(30) DEFAULT NULL,
  PRIMARY KEY (`Masv`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `TBLDeTai` (`Madt`, `Tendt`, `Kinhphi`, `Noithuctap`) VALUES
('Dt01', 'GIS', '100', 'Nghe An'),
('Dt02', 'ARC GIS', '500', 'Nam Dinh'),
('Dt03', 'Spatial DB', '100', 'Ha Tinh'),
('Dt04', 'MAP', '300', 'Quang Binh');

INSERT INTO `TBLGiangVien` (`Magv`, `Hotengv`, `Luong`, `Makhoa`) VALUES
('11', 'Thanh Binh', '700.00', 'Geo'),
('12', 'Thu Huong', '500.00', 'Math'),
('13', 'Chu Vinh', '650.00', 'Geo'),
('14', 'Le Thi Ly', '500.00', 'Bio'),
('15', 'Tran Son', '900.00', 'Math');

INSERT INTO `TBLHuongDan` (`Masv`, `Madt`, `Magv`, `KetQua`) VALUES
('1', 'Dt01', '13', '8.00'),
('2', 'Dt03', '14', '0.00'),
('3', 'Dt03', '12', '10.00'),
('5', 'Dt04', '14', '7.00'),
('6', 'Dt01', '13', NULL),
('7', 'Dt04', '11', '10.00'),
('8', 'Dt03', '15', '6.00');

INSERT INTO `TBLKhoa` (`Makhoa`, `Tenkhoa`, `Dienthoai`) VALUES
('Bio', 'Cong nghe Sinh hoc', '3855412'),
('Geo', 'Dia ly va QLTN', '3855413'),
('Math', 'Toan', '3855411');

INSERT INTO `TBLSinhVien` (`Masv`, `Hotensv`, `Makhoa`, `Namsinh`, `Quequan`) VALUES
('1', 'Le Van Son', 'Bio', '1990', 'Nghe An'),
('2', 'Nguyen Thi Mai', 'Geo', '1990', 'Thanh Hoa'),
('3', 'Bui Xuan Duc', 'Math', '1992', 'Ha Noi'),
('4', 'Nguyen Van Tung', 'Bio', NULL, 'Ha Tinh'),
('5', 'Le Khanh Linh', 'Bio', '1989', 'Ha Nam'),
('6', 'Tran Khac Trong', 'Geo', '1991', 'Thanh Hoa'),
('7', 'Le Thi Van', 'Math', NULL, 'null'),
('8', 'Hoang Van Duc', 'Bio', '1992', 'Nghe An');



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;