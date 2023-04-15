-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th4 15, 2023 lúc 04:56 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlbh`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `email`, `password`, `admin_name`) VALUES
(1, 'doantrangcosmetic@gmail.com', '123456', 'Trang');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`) VALUES
(1, 'Sửa Rửa Mặt'),
(2, 'Serum'),
(3, 'Son'),
(4, 'Lotion'),
(5, 'Mặt Nạ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_donhang`
--

CREATE TABLE `tbl_donhang` (
  `donhang_id` int(11) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `mahang` varchar(50) NOT NULL,
  `khachhang_id` int(11) NOT NULL,
  `ngaythang` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tinhtrang` int(11) NOT NULL,
  `huydon` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_donhang`
--

INSERT INTO `tbl_donhang` (`donhang_id`, `sanpham_id`, `soluong`, `mahang`, `khachhang_id`, `ngaythang`, `tinhtrang`, `huydon`) VALUES
(10, 17, 7, '3060', 12, '2019-10-01 04:11:55', 1, 0),
(11, 21, 5, '8979', 14, '2019-10-04 02:29:52', 0, 0),
(12, 26, 6, '8979', 14, '2019-10-04 02:29:52', 0, 0),
(13, 20, 3, '4236', 15, '2019-10-04 02:33:55', 0, 0),
(14, 21, 4, '4236', 15, '2019-10-04 02:33:56', 0, 0),
(15, 20, 3, '6503', 16, '2019-10-04 02:34:56', 0, 0),
(16, 21, 4, '6503', 16, '2019-10-04 02:34:56', 0, 0),
(17, 21, 1, '2508', 17, '2019-10-04 02:35:19', 0, 0),
(18, 26, 3, '4249', 18, '2019-10-04 02:45:46', 0, 0),
(19, 26, 3, '8728', 19, '2019-10-04 02:46:40', 0, 0),
(20, 21, 1, '5037', 20, '2019-10-04 02:48:16', 0, 0),
(21, 20, 1, '5037', 20, '2019-10-04 02:48:17', 0, 0),
(22, 21, 1, '1594', 21, '2019-10-04 02:51:05', 0, 0),
(23, 20, 1, '1594', 21, '2019-10-04 02:51:05', 0, 0),
(24, 20, 1, '2323', 22, '2019-10-04 02:54:27', 0, 0),
(25, 21, 3, '2323', 22, '2019-10-04 02:54:27', 0, 0),
(26, 21, 2, '5737', 23, '2019-10-04 02:57:00', 0, 0),
(28, 25, 3, '7785', 25, '2019-10-04 03:11:51', 0, 0),
(29, 22, 5, '7785', 25, '2019-10-04 03:11:52', 0, 0),
(30, 27, 2, '7785', 25, '2019-10-04 03:11:52', 0, 0),
(31, 21, 1, '5396', 26, '2019-10-04 03:49:08', 0, 0),
(32, 20, 3, '5396', 26, '2019-10-04 03:49:08', 0, 0),
(35, 25, 2, '6687', 27, '2019-10-09 09:48:42', 1, 2),
(36, 26, 3, '6687', 27, '2019-10-09 09:48:42', 1, 2),
(37, 27, 1, '6687', 27, '2019-10-09 09:48:42', 1, 2),
(38, 22, 1, '1125', 27, '2019-10-09 09:47:17', 1, 2),
(39, 24, 1, '1125', 27, '2019-10-09 09:47:17', 1, 2),
(40, 20, 1, '555', 27, '2019-10-09 09:50:07', 0, 2),
(41, 30, 1, '8328', 31, '2023-04-13 23:56:28', 1, 0),
(42, 20, 1, '8328', 31, '2023-04-13 23:56:28', 1, 0),
(43, 21, 1, '8328', 31, '2023-04-13 23:56:28', 1, 0),
(44, 18, 2, '8328', 31, '2023-04-13 23:56:28', 1, 0),
(45, 30, 1, '6303', 31, '2023-03-24 00:08:57', 0, 0),
(46, 29, 1, '1531', 31, '2023-03-24 02:12:08', 0, 0),
(47, 27, 1, '1531', 31, '2023-03-24 02:12:08', 0, 0),
(50, 29, 1, '8558', 32, '2023-04-12 03:13:23', 0, 0),
(51, 29, 1, '1901', 32, '2023-04-14 01:41:26', 1, 0),
(52, 29, 2, '2349', 32, '2023-04-12 06:15:49', 0, 0),
(53, 24, 1, '2349', 32, '2023-04-12 06:15:49', 0, 0),
(54, 30, 1, '699', 33, '2023-04-13 17:15:50', 0, 0),
(55, 30, 4, '4423', 33, '2023-04-14 00:04:52', 0, 0),
(56, 29, 1, '736', 33, '2023-04-14 02:18:24', 0, 0),
(57, 29, 1, '9346', 33, '2023-04-14 02:18:37', 0, 0),
(58, 29, 1, '3769', 33, '2023-04-14 02:18:50', 0, 0),
(59, 29, 1, '9972', 33, '2023-04-14 02:19:05', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_giaodich`
--

CREATE TABLE `tbl_giaodich` (
  `giaodich_id` int(11) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `magiaodich` varchar(50) NOT NULL,
  `ngaythang` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `khachhang_id` int(11) NOT NULL,
  `tinhtrangdon` int(11) NOT NULL DEFAULT 0,
  `huydon` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_giaodich`
--

INSERT INTO `tbl_giaodich` (`giaodich_id`, `sanpham_id`, `soluong`, `magiaodich`, `ngaythang`, `khachhang_id`, `tinhtrangdon`, `huydon`) VALUES
(3, 21, 2, '5737', '2019-10-04 02:57:00', 23, 0, 0),
(4, 26, 1, '6219', '2019-10-04 02:58:34', 24, 0, 0),
(5, 25, 3, '7785', '2019-10-04 03:11:52', 25, 0, 0),
(6, 22, 5, '7785', '2019-10-04 03:11:52', 25, 0, 0),
(7, 27, 2, '7785', '2019-10-04 03:11:52', 25, 0, 0),
(8, 21, 1, '5396', '2019-10-04 03:49:08', 26, 0, 0),
(9, 20, 3, '5396', '2019-10-04 03:49:08', 26, 0, 0),
(10, 20, 3, '7914', '2019-10-05 05:38:42', 28, 0, 0),
(11, 26, 1, '7914', '2019-10-05 05:38:42', 28, 0, 0),
(12, 25, 2, '6687', '2019-10-09 09:48:42', 27, 1, 2),
(13, 26, 3, '6687', '2019-10-09 09:48:42', 27, 1, 2),
(14, 27, 1, '6687', '2019-10-09 09:48:42', 27, 1, 2),
(15, 22, 1, '1125', '2019-10-09 09:47:17', 27, 1, 2),
(16, 24, 1, '1125', '2019-10-09 09:47:17', 27, 1, 2),
(17, 20, 1, '555', '2019-10-09 09:50:08', 27, 0, 2),
(18, 30, 1, '8328', '2023-04-13 23:56:28', 31, 1, 0),
(19, 20, 1, '8328', '2023-04-13 23:56:28', 31, 1, 0),
(20, 21, 1, '8328', '2023-04-13 23:56:28', 31, 1, 0),
(21, 18, 2, '8328', '2023-04-13 23:56:28', 31, 1, 0),
(22, 30, 1, '6303', '2023-03-24 00:08:57', 31, 0, 0),
(23, 29, 1, '1531', '2023-03-24 02:12:08', 31, 0, 0),
(24, 27, 1, '1531', '2023-03-24 02:12:08', 31, 0, 0),
(25, 30, 1, '9894', '2023-03-29 14:57:49', 30, 0, 0),
(26, 22, 1, '9894', '2023-03-29 14:57:49', 30, 0, 0),
(27, 29, 1, '8558', '2023-04-12 03:13:23', 32, 0, 0),
(28, 29, 1, '1901', '2023-04-14 01:41:26', 32, 1, 0),
(29, 29, 2, '2349', '2023-04-12 06:15:49', 32, 0, 0),
(30, 24, 1, '2349', '2023-04-12 06:15:49', 32, 0, 0),
(31, 30, 1, '699', '2023-04-13 17:15:50', 33, 0, 0),
(32, 30, 4, '4423', '2023-04-14 00:04:52', 33, 0, 0),
(33, 29, 1, '736', '2023-04-14 02:18:24', 33, 0, 0),
(34, 29, 1, '9346', '2023-04-14 02:18:37', 33, 0, 0),
(35, 29, 1, '3769', '2023-04-14 02:18:50', 33, 0, 0),
(36, 29, 1, '9972', '2023-04-14 02:19:05', 33, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_giohang`
--

CREATE TABLE `tbl_giohang` (
  `giohang_id` int(11) NOT NULL,
  `tensanpham` varchar(100) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `giasanpham` varchar(50) NOT NULL,
  `hinhanh` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_khachhang`
--

CREATE TABLE `tbl_khachhang` (
  `khachhang_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `note` text NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(100) NOT NULL,
  `giaohang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_khachhang`
--

INSERT INTO `tbl_khachhang` (`khachhang_id`, `name`, `phone`, `address`, `note`, `email`, `password`, `giaohang`) VALUES
(28, 'Trang', '0932023992', '123 Tây Lân', 'nhận hàng nhận tìn', 'hoa@gmail.com', '1010', 0),
(30, 'Đoan Trang', '0834841329', 'Bình Chánh, HCM', '', 'doantrangcosmetic@gmail.com', '1111', 0),
(31, 'Đoan Trang', '0834841329', '25 Trần Huy Liệu', 'không', 'doantrangcosmetic@gmail.com', '2222', 0),
(32, 'Đoan Trang', '0834841329', '25 Trần Huy Liệu', 'giao tới nhà', 'trangratmap@gmail.com', '3333', 1),
(33, 'Đoan Trang', '0834841329', '25 Tây Lân, Vĩnh Lộc B, Bình Chánh', 'không có gì đâu mà nhìn', 'trangxinhdep@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0),
(34, 'Đoan Trang', '0834841329', '25 Tây Lân, Vĩnh Lộc B, Bình Chánh', 'không có gì để nhìn', 'trangxinhdep@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0),
(35, 'Đoan Trang', '0834841329', '25 Tây Lân, Vĩnh Lộc B, Bình Chánh', '', 'trangxinhdep@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `sanpham_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `sanpham_name` varchar(255) NOT NULL,
  `sanpham_chitiet` text NOT NULL,
  `sanpham_mota` text NOT NULL,
  `sanpham_gia` varchar(100) NOT NULL,
  `sanpham_giakhuyenmai` varchar(100) NOT NULL,
  `sanpham_active` int(11) NOT NULL,
  `sanpham_hot` int(11) NOT NULL,
  `sanpham_soluong` int(11) NOT NULL,
  `sanpham_image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`sanpham_id`, `category_id`, `sanpham_name`, `sanpham_chitiet`, `sanpham_mota`, `sanpham_gia`, `sanpham_giakhuyenmai`, `sanpham_active`, `sanpham_hot`, `sanpham_soluong`, `sanpham_image`) VALUES
(17, 2, 'Serum trị mụn', 'dasdasdasadasd', 'dasdasddsadasds', '6000000', '5000000', 0, 0, 10, 's4.png'),
(18, 5, 'Cấp ẩm cho da', 'asdasd', 'dasdasd', '200000', '150000', 0, 0, 1, 's1.png'),
(19, 5, 'Nạ đất sét Kiehl\'s ', 'asdasd', 'dasdasd', '1000000', '850000', 0, 0, 1, 's6.png'),
(20, 4, 'Dưỡng trắng da', 'dasdad', 'dasdas', '13000000', '10000000', 0, 0, 10, 's2.png'),
(21, 4, 'Cấp ẩm da', 'dasdad', 'dasdas', '20000000', '17000000', 0, 0, 10, 's8.png'),
(22, 2, 'OBAGI mờ thâm', 'dasdad', 'dasdas', '8000000', '68000000', 0, 0, 5, 's12.png'),
(23, 2, 'klair làm trắng', 'dasdaddasda', 'dasdasdasd', '600000', '480000', 0, 0, 10, 's13.png'),
(24, 1, 'Cocoon củ nghệ', 'sfsdf', 'adsf', '200000', '150000', 0, 0, 10, 's14.png'),
(25, 1, 'Eucerin trị mụn', 'sfsdf', 'adsf', '10000000', '5000000', 0, 0, 10, 's5.png'),
(26, 3, 'Son Romand', 'dasdas', 'dsadas', '300000', '270000', 0, 0, 10, 's10.png'),
(27, 3, 'Son 3CE', 'dasdas', 'dsadas', '380000', '290000', 0, 0, 10, 's3.png'),
(29, 5, 'Trắng da', 'đffff', 'đff', '122222', '222', 0, 0, 22, 's7.png'),
(30, 4, 'Mờ thâm', 'vốn dĩ là như dị đó', 'lotion mờ thâm, dưỡng trắng', '30000000', '20500000', 0, 0, 15, 's9.png'),
(31, 3, 'MAC', 'son mac', 'son mac', '8000000', '6000000', 0, 0, 50, 's11.png'),
(34, 1, 'Adaphil dịu nhẹ', '', '', '5000000', '3000000', 0, 0, 50, 's2.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `slider_id` int(11) NOT NULL,
  `slider_image` varchar(100) NOT NULL,
  `slider_caption` text NOT NULL,
  `slider_active` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_slider`
--

INSERT INTO `tbl_slider` (`slider_id`, `slider_image`, `slider_caption`, `slider_active`) VALUES
(1, 'b2.jpg', 'Slider khuyến mãi ', 1),
(2, 'b3.jpg', 'Slider 50%', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `tbl_donhang`
--
ALTER TABLE `tbl_donhang`
  ADD PRIMARY KEY (`donhang_id`);

--
-- Chỉ mục cho bảng `tbl_giaodich`
--
ALTER TABLE `tbl_giaodich`
  ADD PRIMARY KEY (`giaodich_id`);

--
-- Chỉ mục cho bảng `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  ADD PRIMARY KEY (`giohang_id`);

--
-- Chỉ mục cho bảng `tbl_khachhang`
--
ALTER TABLE `tbl_khachhang`
  ADD PRIMARY KEY (`khachhang_id`);

--
-- Chỉ mục cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`sanpham_id`);

--
-- Chỉ mục cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_donhang`
--
ALTER TABLE `tbl_donhang`
  MODIFY `donhang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT cho bảng `tbl_giaodich`
--
ALTER TABLE `tbl_giaodich`
  MODIFY `giaodich_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  MODIFY `giohang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `tbl_khachhang`
--
ALTER TABLE `tbl_khachhang`
  MODIFY `khachhang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `sanpham_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
