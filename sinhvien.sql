-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 04, 2020 lúc 05:16 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `sinhvien`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diemthi`
--

CREATE TABLE `diemthi` (
  `diemthiID` int(11) NOT NULL,
  `sinhvienID` int(11) NOT NULL,
  `ltud` float NOT NULL,
  `ltvm` float NOT NULL,
  `htvt` int(11) NOT NULL,
  `htcm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `diemthi`
--

INSERT INTO `diemthi` (`diemthiID`, `sinhvienID`, `ltud`, `ltvm`, `htvt`, `htcm`) VALUES
(1, 6, 8, 8.5, 8, 8),
(2, 2, 10, 9, 8, 5),
(3, 12, 8, 7, 8, 7),
(4, 11, 9, 8, 1, 8),
(5, 13, 8, 8, 9, 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoa`
--

CREATE TABLE `khoa` (
  `makhoa` int(11) NOT NULL,
  `tenkhoa` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `khoa`
--

INSERT INTO `khoa` (`makhoa`, `tenkhoa`) VALUES
(1, 'Công nghệ thông tin'),
(2, 'Hóa');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lophoc`
--

CREATE TABLE `lophoc` (
  `lopID` int(11) NOT NULL,
  `tenlop` text NOT NULL,
  `phonghoc` text NOT NULL,
  `makhoa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `lophoc`
--

INSERT INTO `lophoc` (`lopID`, `tenlop`, `phonghoc`, `makhoa`) VALUES
(8, 'K44.CNTTA', 'P.101', 0),
(9, 'K44.CNTT.B', 'P.101', 0),
(10, 'K44.CNTT.C', 'P.203', 0),
(11, 'K44.HOA.A', 'P.103', 0),
(12, 'K44.HOA.B', 'P.301', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sinhvien`
--

CREATE TABLE `sinhvien` (
  `sinhvienID` int(11) NOT NULL,
  `MaSV` int(11) NOT NULL,
  `lopID` int(11) NOT NULL,
  `name` text NOT NULL,
  `birthday` date NOT NULL,
  `phonenumber` int(11) NOT NULL,
  `address` text NOT NULL,
  `avt` text NOT NULL,
  `so_truong` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sinhvien`
--

INSERT INTO `sinhvien` (`sinhvienID`, `MaSV`, `lopID`, `name`, `birthday`, `phonenumber`, `address`, `avt`, `so_truong`) VALUES
(2, 5, 10, 'Trịnh Đức Duy', '1998-10-30', 168656788, 'Dak Lak', '', 'football'),
(3, 4, 8, 'Phạm Tuấn Anh', '1998-10-10', 35656565, 'Hải Phòng', '', ''),
(5, 2, 8, 'Phạm Anh Khoa', '2000-10-15', 38456777, 'Bình Dương', '', 'football'),
(6, 1, 10, 'Huỳnh Nhật Khánh', '2000-09-09', 1684659555, 'Vũng Tàu', 'phamhieu.jpg', 'IT chém gió !'),
(11, 0, 10, 'Lê Minh Hải', '1998-06-22', 95858798, 'Hà Nội', 'minhhai.jpg', 'Cua gái thần chưởng, thả thính đại pháp '),
(12, 0, 10, 'Nguyễn Đức Duy', '2000-10-31', 38469555, 'Thanh Hóa', '', 'Art, Painting '),
(13, 0, 11, 'Nguyễn Đức Độ ', '2000-09-27', 3922300, 'Nam Định', 'ducdo.jpg', ''),
(14, 0, 8, 'Nguyễn Sơn Hoàng ', '2000-10-20', 35484785, 'Hồ Chí Minh', '', '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `diemthi`
--
ALTER TABLE `diemthi`
  ADD PRIMARY KEY (`diemthiID`,`sinhvienID`),
  ADD KEY `sinhvienID` (`sinhvienID`);

--
-- Chỉ mục cho bảng `khoa`
--
ALTER TABLE `khoa`
  ADD PRIMARY KEY (`makhoa`);

--
-- Chỉ mục cho bảng `lophoc`
--
ALTER TABLE `lophoc`
  ADD PRIMARY KEY (`lopID`);

--
-- Chỉ mục cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD PRIMARY KEY (`sinhvienID`),
  ADD KEY `lopID` (`lopID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `diemthi`
--
ALTER TABLE `diemthi`
  MODIFY `diemthiID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `khoa`
--
ALTER TABLE `khoa`
  MODIFY `makhoa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `lophoc`
--
ALTER TABLE `lophoc`
  MODIFY `lopID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  MODIFY `sinhvienID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `diemthi`
--
ALTER TABLE `diemthi`
  ADD CONSTRAINT `diemthi_ibfk_1` FOREIGN KEY (`sinhvienID`) REFERENCES `sinhvien` (`sinhvienID`);

--
-- Các ràng buộc cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD CONSTRAINT `sinhvien_ibfk_1` FOREIGN KEY (`lopID`) REFERENCES `lophoc` (`lopID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
