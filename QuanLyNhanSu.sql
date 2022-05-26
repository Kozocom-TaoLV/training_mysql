-- -------------------------------------------------------------
-- TablePlus 3.5.0(308)
--
-- https://tableplus.com/
--
-- Database: QuanLyNhanSu
-- Generation Time: 2020-07-13 16:50:00.8120
-- -------------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


DROP TABLE IF EXISTS `dean`;
CREATE TABLE `dean` (
  `mada` varchar(10) NOT NULL,
  `tenda` varchar(30) DEFAULT NULL,
  `ddiem_da` varchar(50) DEFAULT NULL,
  `pgh` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`mada`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `nhanvien`;
CREATE TABLE `nhanvien` (
  `manv` varchar(10) NOT NULL,
  `honv` varchar(30) DEFAULT NULL,
  `tenlot` varchar(10) DEFAULT NULL,
  `tennv` varchar(10) DEFAULT NULL,
  `gioitinh` varchar(10) DEFAULT NULL,
  `luong` varchar(10) DEFAULT NULL,
  `ngaysinh` varchar(50) DEFAULT NULL,
  `diachi` varchar(256) DEFAULT NULL,
  `pgh` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`manv`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `phancong`;
CREATE TABLE `phancong` (
  `manv` varchar(10) DEFAULT NULL,
  `tenda` varchar(10) DEFAULT NULL,
  `sogio` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `phongban`;
CREATE TABLE `phongban` (
  `pgh` varchar(10) NOT NULL,
  `tenpgh` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`pgh`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `dean` (`mada`, `tenda`, `ddiem_da`, `pgh`) VALUES
('1', 'Sản phẩm X', 'Quy Nhơn', '5'),
('10', 'Tin hoá học', 'Bình Dương', '4'),
('2', 'Sản phẩm Y', 'Nha Trang', '5'),
('3', 'Sản phẩm Z', 'TP HCM', '5');

INSERT INTO `nhanvien` (`manv`, `honv`, `tenlot`, `tennv`, `gioitinh`, `luong`, `ngaysinh`, `diachi`, `pgh`) VALUES
('1', 'Đinh', 'Lê', 'Tiên', 'Nam', '40000', '01/09/1965', 'Nguyễn Trãi, Q5', '1'),
('2', 'Nguyễn', 'Thị', 'Loan', 'Nữ', '25000', '12/08/1955', 'Nguyễn Huệ, Q1', '5'),
('3', 'Nguyễn', 'Lan', 'Anh', 'Nữ', '43000', '15/09/1962', 'Lê Lợi, Q1', '5'),
('4', 'Trần', 'Thanh', 'Tâm', 'Nam', '38000', '31/07/1972', 'Trần Não, Q2', '2');

INSERT INTO `phancong` (`manv`, `tenda`, `sogio`) VALUES
('1', '1', '32'),
('1', '2', '8'),
('3', '3', '40'),
('4', '1', '20');

INSERT INTO `phongban` (`pgh`, `tenpgh`) VALUES
('1', 'Nhân sự'),
('2', 'Kế hoạch'),
('3', 'Kinh doanh'),
('4', 'Marketing'),
('5', 'Kế toán');



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;