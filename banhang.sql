-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 04, 2021 lúc 06:11 AM
-- Phiên bản máy phục vụ: 10.4.10-MariaDB
-- Phiên bản PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `banhang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `idbinhluan` int(11) NOT NULL,
  `idsach` int(11) NOT NULL,
  `noidung` varchar(2000) NOT NULL,
  `iduser` int(20) NOT NULL,
  `ten` varchar(50) NOT NULL,
  `ngay` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`idbinhluan`, `idsach`, `noidung`, `iduser`, `ten`, `ngay`) VALUES
(1, 5, 'test lần n x 3.14', 10, 'admin', '2021-01-15'),
(2, 5, 'ok, ngon', 10, 'admin', '2021-01-15'),
(3, 5, 'Khổ vcl :(', 23, 'anhTu', '2021-01-15'),
(5, 5, '', 23, 'anhTu', '2021-04-23'),
(6, 5, '', 23, 'anhTu', '2021-04-23'),
(7, 5, '', 23, 'anhTu', '2021-04-23'),
(8, 5, '', 23, 'anhTu', '2021-04-23'),
(9, 5, '', 23, 'anhTu', '2021-04-23'),
(10, 5, '', 23, 'anhTu', '2021-04-23'),
(11, 5, '', 23, 'anhTu', '2021-04-23'),
(12, 5, '', 23, 'anhTu', '2021-04-23'),
(13, 5, 'ok', 23, 'anhTu', '2021-04-23'),
(14, 5, 'a', 23, 'anhTu', '2021-04-23'),
(15, 5, 'm', 23, 'anhTu', '2021-04-23'),
(16, 5, '', 23, 'anhTu', '2021-04-23'),
(17, 5, '', 23, 'anhTu', '2021-04-23'),
(18, 5, '', 23, 'anhTu', '2021-04-23'),
(19, 5, '', 23, 'anhTu', '2021-04-23'),
(20, 5, '', 23, 'anhTu', '2021-04-23'),
(21, 5, '', 23, 'anhTu', '2021-04-23'),
(22, 5, '', 23, 'anhTu', '2021-04-23'),
(23, 9, '', 10, 'admin', '2021-04-23'),
(24, 9, '', 10, 'admin', '2021-04-23'),
(25, 9, '', 10, 'admin', '2021-04-23'),
(26, 0, '<p>d</p>\r\n', 23, 'anhTu', '2021-04-23'),
(27, 0, '<p>d</p>\r\n', 23, 'anhTu', '2021-04-23'),
(28, 0, '<p>d</p>\r\n', 23, 'anhTu', '2021-04-23'),
(29, 0, '<p>d</p>\r\n', 23, 'anhTu', '2021-04-23'),
(30, 0, '<p>d</p>\r\n', 23, 'anhTu', '2021-04-23'),
(31, 0, '<p>d</p>\r\n', 23, 'anhTu', '2021-04-23'),
(32, 0, '<p>ds</p>\r\n', 23, 'anhTu', '2021-04-23'),
(33, 0, '<p>ds</p>\r\n', 23, 'anhTu', '2021-04-23'),
(34, 5, '<p>dsc</p>\r\n', 23, 'anhTu', '2021-04-23'),
(35, 5, '<p>dsc5</p>\r\n', 23, 'anhTu', '2021-04-23'),
(36, 5, '<p>dsc5</p>\r\n', 23, 'anhTu', '2021-04-23'),
(37, 0, '', 10, 'admin', '2021-04-23'),
(38, 9, '<p>ok</p>\r\n', 10, 'admin', '2021-04-23'),
(39, 0, '<p>ok</p>\r\n', 10, 'admin', '2021-04-23'),
(40, 0, '<p>ok</p>\r\n', 10, 'admin', '2021-04-23'),
(41, 5, '', 23, 'anhTu', '2021-04-23'),
(42, 5, '<p>d</p>\r\n', 23, 'anhTu', '2021-04-23'),
(43, 5, '<p>t</p>\r\n', 23, 'anhTu', '2021-04-23'),
(44, 5, '<p>q</p>\r\n', 23, 'anhTu', '2021-04-23'),
(45, 4, '<p>d</p>\r\n', 23, 'anhTu', '2021-04-23'),
(46, 8, '<p>f</p>\r\n', 23, 'anhTu', '2021-04-23'),
(47, 8, '<p>fdv</p>\r\n', 23, 'anhTu', '2021-04-23'),
(48, 8, '<p>f</p>\r\n', 23, 'anhTu', '2021-04-23'),
(49, 8, '', 23, 'anhTu', '2021-04-23'),
(50, 8, '', 23, 'anhTu', '2021-04-23'),
(51, 8, '', 23, 'anhTu', '2021-04-23'),
(52, 8, '<p>t</p>\r\n', 23, 'anhTu', '2021-04-23'),
(53, 8, '<p>t</p>\r\n', 23, 'anhTu', '2021-04-23'),
(54, 8, '<p>t</p>\r\n', 23, 'anhTu', '2021-04-23'),
(55, 5, 'hello\n', 23, 'anhTu', '2021-04-23'),
(56, 5, 'jjj', 23, 'anhTu', '2021-04-23'),
(57, 6, 'd', 23, 'anhTu', '2021-04-23'),
(58, 6, 'd', 23, 'anhTu', '2021-04-23'),
(59, 6, 'df', 23, 'anhTu', '2021-04-23'),
(60, 6, 'dfd', 23, 'anhTu', '2021-04-23'),
(61, 6, '', 23, 'anhTu', '2021-04-23'),
(62, 6, '', 23, 'anhTu', '2021-04-23'),
(63, 11, '', 10, 'admin', '2021-04-23'),
(64, 11, '', 10, 'admin', '2021-04-23'),
(65, 11, '', 10, 'admin', '2021-04-23'),
(66, 6, '', 23, 'anhTu', '2021-04-23'),
(67, 6, '', 23, 'anhTu', '2021-04-23'),
(68, 6, '', 23, 'anhTu', '2021-04-23'),
(69, 6, '', 23, 'anhTu', '2021-04-23'),
(70, 11, '', 10, 'admin', '2021-05-11'),
(71, 11, '', 10, 'admin', '2021-05-11'),
(72, 11, '', 10, 'admin', '2021-05-11'),
(73, 11, '', 10, 'admin', '2021-05-11'),
(74, 11, '', 10, 'admin', '2021-05-11'),
(75, 11, '', 10, 'admin', '2021-05-11'),
(76, 10, '', 23, 'anhTu', '2021-05-29'),
(77, 16, '', 10, 'admin', '2021-06-04'),
(78, 16, '', 39, 'anga', '2021-06-05'),
(79, 16, '', 41, 'ok123', '2021-06-05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `idhd` int(11) NOT NULL,
  `idsanpham` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `dongia` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`idhd`, `idsanpham`, `soluong`, `dongia`) VALUES
(19, 11, 1, 87000),
(20, 5, 1, 50000),
(21, 5, 1, 50000),
(21, 13, 1, 20000),
(22, 8, 1, 20000),
(26, 7, 1, 20000),
(26, 11, 1, 87000),
(26, 16, 10, 450000),
(29, 9, 1, 39000),
(29, 11, 10, 870000),
(30, 5, 1, 50000),
(30, 11, 10, 870000),
(31, 5, 1, 50000),
(31, 16, 1, 45000),
(32, 5, 10, 500000),
(33, 10, 1, 30000),
(34, 5, 10, 500000),
(35, 8, 2, 40000),
(36, 12, 1, 20000),
(37, 8, 1, 20000),
(38, 10, 1, 30000),
(39, 18, 3, 102000),
(40, 16, 2, 14000000),
(41, 31, 2, 20000000),
(41, 39, 1, 230000),
(42, 16, 2, 14000000),
(42, 17, 1, 4500000),
(43, 16, 3, 21000000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(11) NOT NULL,
  `tendanhmuc` varchar(200) NOT NULL,
  `anh` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `tendanhmuc`, `anh`) VALUES
(8, 'dog', 'image/bg-images/doggo.png'),
(10, 'cat', 'image/bg-images/meo.jpg'),
(11, 'Food for dog', 'image/bg-images/fooddog.jpg'),
(12, 'Food for cat', 'image/bg-images/foodcat.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `idhoadon` int(20) NOT NULL,
  `idkhachhang` int(50) NOT NULL,
  `ngay` date NOT NULL,
  `ten` varchar(50) NOT NULL,
  `sdt` int(50) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `ghichu` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`idhoadon`, `idkhachhang`, `ngay`, `ten`, `sdt`, `diachi`, `ghichu`) VALUES
(31, 23, '2021-01-16', 'Dangquocvinh', 909090909, 'tây thiên', 'nice'),
(36, 23, '2021-04-22', '', 0, '', ''),
(40, 23, '2021-06-04', 'nice', 123, '111', ''),
(41, 39, '2021-06-05', 'QuocVinh', 2147483647, 'VKU', ''),
(42, 41, '2021-06-05', 'QuocvinhVKU', 987654321, 'VKU', 'ok Shop'),
(43, 10, '2021-10-20', 's', 0, 's', 's');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `idkhachhang` int(20) NOT NULL,
  `idhanghoa` int(11) NOT NULL,
  `anh` mediumtext NOT NULL,
  `tenhang` varchar(50) NOT NULL,
  `dongia` int(50) NOT NULL,
  `soluong` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `giohang`
--

INSERT INTO `giohang` (`idkhachhang`, `idhanghoa`, `anh`, `tenhang`, `dongia`, `soluong`) VALUES
(1, 2, '3', '4', 5, 6),
(1, 2, '3', '4', 5, 6),
(1, 2, '3', '4', 5, 6),
(1, 2, '3', '4', 5, 6),
(1, 2, '3', '4', 5, 6),
(1, 2, '3', '4', 5, 6),
(10, 3, '3', '3', 3, 10),
(10, 5, 'image/bg-images/klee6.png', 'Klee  Chap 1', 40000, 0),
(10, 5, 'image/bg-images/klee6.png', 'Klee  Chap 1', 40000, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hanghoa`
--

CREATE TABLE `hanghoa` (
  `id` int(11) NOT NULL,
  `tenhang` varchar(200) NOT NULL,
  `soluong` int(11) NOT NULL,
  `dongia` int(11) NOT NULL,
  `iddanhmuc` int(11) NOT NULL,
  `anh` mediumtext NOT NULL,
  `mota` varchar(2000) NOT NULL,
  `giamgia` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hanghoa`
--

INSERT INTO `hanghoa` (`id`, `tenhang`, `soluong`, `dongia`, `iddanhmuc`, `anh`, `mota`, `giamgia`) VALUES
(5, 'shiba inu', 545, 25000000, 8, 'image/bg-images/down.jfif', '<p>T&ecirc;n đầy đủ của ch&oacute; Shiba l&agrave; Shiba Inu, c&oacute; nguồn gốc từ Nhật Bản. Nếu so với Kai Dog, Akita, Shikoku, Kishu, Hokkaido th&igrave; Shiba l&agrave; giống ch&oacute; nguy&ecirc;n thủy nhỏ nhất tại xứ sở hoa anh đ&agrave;o. Trong tiếng Nhật, Shiba c&oacute; nghĩa l&agrave; c&acirc;y cọ, c&ograve;n Inu l&agrave; con ch&oacute;.</p>\r\n\r\n<p>Theo c&aacute;c nghi&ecirc;n cứu khoa học, Shiba l&agrave; giống ch&oacute; cổ xuất hiện v&agrave;o thế kỷ 3 trước C&ocirc;ng Nguy&ecirc;n. V&agrave;o thời chiến tranh thế giới thứ hai, Shiba đ&atilde; c&oacute; nguy cơ bị tuyệt chủng nhưng sau chiến tranh ch&uacute;ng được nh&acirc;n giống v&agrave; lai tạo để cho ra đời giống ch&oacute; Shiba ng&agrave;y nay.</p>\r\n', 0.2),
(6, ' corgi Chân dài', 11, 9990000, 8, 'image/bg-images/images (1).jfif', '<p>Giống ch&oacute; <strong>Corgi </strong>vốn dĩ được sử dụng v&agrave;o hoạt động chăn gia s&uacute;c d&ugrave; cho d&aacute;ng vẻ của ch&uacute;ng nhỏ nhắn v&agrave; c&oacute; vẻ kh&ocirc;ng-hợp-cho-lắm. Tuy nhi&ecirc;n, trong trường hợp n&agrave;y, bốn ch&acirc;n ngắn v&agrave; thấp b&eacute; lại l&agrave; lợi thế bởi Corgi sẽ kh&oacute; l&ograve;ng &ldquo;d&iacute;nh&rdquo; những c&uacute; đ&aacute; hậu nguy hiểm của c&aacute;c lo&agrave;i gia s&uacute;c lớn. Khi đi chăn, nếu c&oacute; con gia s&uacute;c n&agrave;o đi lạc, Corgi sẽ nhanh ch&oacute;ng cắn v&agrave;o ch&acirc;n để k&eacute;o ch&uacute;ng quay lại đ&agrave;n.&nbsp;</p>\r\n\r\n<p>Về sau, hoạt động chăn nu&ocirc;i gia s&uacute;c ở ch&acirc;u &Acirc;u kh&ocirc;ng c&ograve;n phổ biến như trước n&ecirc;n Corgi cũng &iacute;t được sử dụng để chăn s&uacute;c. Tuy nhi&ecirc;n, bởi sự th&ocirc;ng minh v&agrave; ngoại h&igrave;nh đ&aacute;ng y&ecirc;u m&agrave; nhiều gia đ&igrave;nh đ&atilde; nu&ocirc;i Corgi như một người bạn trong nh&agrave;. Tại Việt Nam, ch&oacute; Corgi chỉ được đưa về từ khoảng năm 2010 nhưng đ&atilde; nhanh ch&oacute;ng g&acirc;y l&ecirc;n một &ldquo;cơn sốt&rdquo; trong thế giới th&uacute; cưng khiến c&aacute;c bạn trẻ cực k&igrave; hứng th&uacute;.&nbsp;</p>\r\n', 0.1),
(8, 'alaska ', 5, 48000000, 8, 'image/bg-images/images (2.jfif', '<p><strong>Ch&oacute; Alaska</strong>&nbsp;hay c&ograve;n gọi l&agrave; ch&oacute; Alaska Malamute l&agrave; tổ ti&ecirc;n giống ch&oacute; s&oacute;i tuyết hoang, được thuần ho&aacute; bởi tộc Malamute để trở th&agrave;nh vật nu&ocirc;i. Tuy nhi&ecirc;n, trước khi trở th&agrave;nh th&uacute; nu&ocirc;i phổ biến trong nh&agrave;, ch&oacute; Alaska cũng đ&atilde; phải trải qua một qu&aacute; tr&igrave;nh đầy gian nan, thử th&aacute;ch.</p>\r\n\r\n<p>Nhiều tư liệu cho rằng ch&iacute;nh những người Eskimo du mục đ&atilde; ph&aacute;t hiện ra thể chất dẻo dai v&agrave; bền bỉ của giống ch&oacute; n&agrave;y để lai tạo ch&uacute;ng với một số giống ch&oacute; kh&aacute;c v&agrave; cho ra đời thế hệ ch&oacute; Alaska to lớn, khỏe mạnh nhằm phục vụ mục đ&iacute;ch ch&iacute;nh l&agrave; k&eacute;o xe tr&ecirc;n tuyết.</p>\r\n\r\n<p>Về sau, giống ch&oacute; n&agrave;y được những người d&acirc;n Alaska nu&ocirc;i dưỡng v&agrave; huấn luyện v&agrave; dần trở n&ecirc;n phổ biến tr&ecirc;n to&agrave;n nước Mỹ. Năm 1935, ch&oacute; Alaska được AKC - Hiệp hội ch&oacute; Hoa Kỳ c&ocirc;ng nhận l&agrave; một giống ch&oacute; ch&iacute;nh thức tr&ecirc;n to&agrave;n thế giới.&nbsp;</p>\r\n', 0.13),
(9, 'Husky', 8, 8000000, 8, 'image/bg-images/down1.jfif', '<p>Ch&oacute;&nbsp;<strong>Husky</strong>&nbsp;Sibir (Tiếng Nga: сибирский хаски, &quot;Sibirsky hasky&quot;, Phi&ecirc;n &acirc;m: &quot;hất-s-ki&quot;) l&agrave; một giống ch&oacute; cỡ trung thuộc n&ograve;i ch&oacute; k&eacute;o xe c&oacute; nguồn gốc từ v&ugrave;ng Đ&ocirc;ng Bắc Sibir, Nga. ... Giống ch&oacute; n&agrave;y được đưa tới Alaska trong thời k&igrave; khai th&aacute;c v&agrave;ng ở Nome rồi sau đ&oacute; trở n&ecirc;n phổ biến ở Hoa Kỳ v&agrave; Canada.</p>\r\n\r\n<p><em><strong>N&Oacute; CỰC K&Igrave; NG&Aacute;O</strong></em></p>\r\n', 0.11),
(10, 'pug', 83, 8000000, 8, 'image/bg-images/pug.jpg', '', 0.11),
(11, 'Corgi đột biến', 66, 870000000, 8, 'image/bg-images/images (1).jfif', '<p>L&agrave; loại ch&oacute; với k&iacute;ch cỡ cơ thể trung b&igrave;nh, th&acirc;n d&agrave;i v&agrave; ch&acirc;n thấp ngắn r&otilde; rệt. <strong>Tầm v&oacute;c ch&uacute;ng khoảng 30,5&nbsp;cm</strong>, <strong>Trọng lượng đạt 12&nbsp;kg</strong>. Giống Corgi c&oacute; truyền thống được d&ugrave;ng l&agrave;m ch&oacute; săn, chăn dắt gia s&uacute;c lớn bằng c&aacute;ch chạy theo đ&agrave;n gia s&uacute;c v&agrave; cắn v&agrave;o g&oacute;t ch&acirc;n con vật n&agrave;o kh&ocirc;ng chịu theo đ&agrave;n, đ&ocirc;i l&uacute;c loại n&agrave;y cũng đớp chủ m&igrave;nh. Th&acirc;n thể thấp l&ugrave;n của ch&uacute;ng, gi&uacute;p ch&uacute;ng tr&aacute;nh bị gia s&uacute;c đ&aacute; hậu. C&oacute; m&agrave;u n&acirc;u đỏ, đen, titan, c&oacute; yếm trắng hoặc kh&ocirc;ng.</p>\r\n\r\n<p>H&agrave;ng ng&agrave;y ch&uacute;ng cần chạy nhảy nhiều. Tuổi thọ khoảng 15 năm. Welsh Corgi Pembroke th&iacute;ch chặn c&aacute;c con chuột d&aacute;m x&acirc;m nhập l&atilde;nh địa để chơi tr&ograve; đuổi bắt v&agrave; hay đặt vấn đề thứ bậc. Nu&ocirc;i giống ch&oacute; n&agrave;y cần &aacute;p dụng một chế độ dinh dưỡng nghi&ecirc;m ngặt v&igrave; ch&uacute;ng rất dễ tăng trọng, cũng cần cho tập luyện tối đa, v&agrave; kh&ocirc;ng cần phải dẫn chạy bộ đường d&agrave;i, ch&uacute;ng cần hoạt động v&agrave; tập luyện thường xuy&ecirc;n để tr&aacute;nh nguy cơ b&eacute;o ph&igrave;.</p>\r\n', 0),
(12, 'Phốc sóc mini', 563, 15000000, 8, 'image/bg-images/6.jfif', '<p>Đặc điểm ngoại h&igrave;nh ch&oacute; phốc s&oacute;c K&iacute;ch thước: Ch&oacute; Phốc S&oacute;c được xếp v&agrave;o k&iacute;ch thước toy (giống ch&oacute; nhỏ cao dưới 25cm) với chiều cao từ 15 &ndash; 25cm, nặng khoảng từ 2 &ndash; 4kg. Một số c&aacute; thể Pomeranian c&oacute; thể cao 35cm v&agrave; nặng 8kg nhưng d&ograve;ng n&agrave;y &iacute;t được y&ecirc;u th&iacute;ch v&agrave; chỉ xuất hiện ở ch&acirc;u &Acirc;u. L&ocirc;ng: Bộ l&ocirc;ng của ch&oacute; Pom d&agrave;i v&agrave; mềm mượt được chia th&agrave;nh 2 lớp giống như ch&oacute; Alaska, Samoyed hay Husky. Ban đầu Pomeranian chỉ c&oacute; m&agrave;u trắng nhưng qu&aacute; tr&igrave;nh cải tạo giống đ&atilde; l&agrave;m l&ocirc;ng của ch&oacute; Phốc đa dạng m&agrave;u sắc hơn như: X&aacute;m kh&oacute;i, v&agrave;ng lửa, b&ograve; sữa, x&aacute;m xanh&hellip; Đầu: Khu&ocirc;n mặt của giống ch&oacute; Pomeranian rất giống c&aacute;o với m&otilde;m nhỏ, d&agrave;i, đ&ocirc;i mắt to v&agrave; s&aacute;ng, thể hiện sự tinh kh&ocirc;n. V&agrave;o năm 2000 c&ograve;n c&oacute; ch&oacute; Ph&oacute;c S&oacute;c mặt tr&ograve;n, m&otilde;m ngắn xuất hiện tại Mỹ v&agrave; được gọi l&agrave; Pom mặt gấu. Đặc điểm t&iacute;nh c&aacute;ch ch&oacute; phốc s&oacute;c Th&ocirc;ng minh, s&ocirc;i nổi v&agrave; sống động. Trung th&agrave;nh, ham học hỏi. Tinh nghịch nhưng rất nghe lời chủ. C&oacute; t&agrave;i xiếc kh&eacute;o l&eacute;o. Vui vẻ, c&oacute; thể tự chơi một m&igrave;nh. Cảnh gi&aacute;c cao với c&aacute;c thay đổi xung quanh. C&oacute; th&oacute;i quen ph&acirc;n chia l&atilde;nh thổ. Th&iacute;ch được vuốt ve, nằm trong l&ograve;ng chủ nh&acirc;n.</p>\r\n', 0.12),
(13, 'Pomeranian', 53, 20000000, 8, 'image/bg-images/6-removebg-preview.png', '', 0.18),
(16, 'ALN Meow', 16, 7000000, 10, 'image/bg-images/meoanhlongngan.jpg', 'Mèo Anh lông ngắn thường gọi tắt là mèo ALN là dòng mèo đã có từ rất lâu đời ở nước Anh. Là sự kết hợp của giống mèo Ai Cập cổ và những chú mèo đường phố ở Anh. Chúng được công nhận là một giống chuyên biệt và thuần chủng bởi CFA từ năm 1980.\r\n\r\nMèo British Shorthairs từng có một thời kỳ bị thất sủng tới mức gần như tuyệt chủng do làn sóng nhập cư các loài mèo độc, lạ khác. Người ta đã lai giống với nhiều loài mèo khác nên trước những năm 60 việc tìm một con mèo Anh lông ngắn thuần chủng khá khó khăn.\r\n\r\nNgày nay, các nhà sinh học đã lai tạo thành công và phát triển lại giống mèo aln thuần chủng này. Và được hiệp hội TICA và CFA công nhận.\r\nMèo Anh lông ngắn có tính cách rất ổn định, chúng phù hợp là thú cưng nuôi trong nhà. Giống mèo này rất thích được vuốt ve, thích ngồi cạnh chủ hơn ngồi một mình. Các bạn sẽ để ý thấy thi thoảng chúng gọi chủ để chơi đùa cùng.\r\nĐây là giống mèo khá dễ tính, gần gũi với con người với bản tính hiền lành. Ngoài ra, mèo anh lông ngắn rất thích chơi đùa với trẻ nhỏ và tuyệt đối an toàn bởi giống mèo này có khả năng chịu đựng va chạm rất tốt, ưu điểm nữa là rất ít khi cào hay nổi cáu.\r\nMèo aln cũng là thú cưng biết vâng lời, vui vẻ, hoà đồng, không gây ồn và rất ngoan ngoãn. Chúng được đánh giá là giống mèo dễ huấn luyện, thông mình và ham học hỏi.', 0.09),
(17, 'ALD Meow', 434, 4500000, 10, 'image/bg-images/photo-1570435944324-5e52f98ab6b5-removebg-preview.png', '<p>T&ecirc;n Tiếng Anh của giống m&egrave;o n&agrave;y l&agrave; British Longhair n&ecirc;n tất nhi&ecirc;n ch&uacute;ng c&oacute; nguồn gốc từ nước Anh. Kh&aacute;c với c&aacute;c giống m&egrave;o c&oacute; nguồn gốc từ động vật được thuần ho&aacute;, m&egrave;o Anh l&ocirc;ng d&agrave;i l&agrave; kết quả của sự lại tạo giữa m&egrave;o Anh l&ocirc;ng ngắn c&ugrave;ng với m&egrave;o Ba Tư v&agrave; được hiệp hội m&egrave;o Quốc tế TICA c&ocirc;ng nhận l&agrave; một giống m&egrave;o độc lập.</p>\r\n\r\n<p>Tuy nhi&ecirc;n do số lượng của lo&agrave;i m&egrave;o n&agrave;y ở Anh Quốc lại kh&aacute; khi&ecirc;m tốn n&ecirc;n hiệp hội m&egrave;o Anh GCCF chỉ c&ocirc;ng nhận ch&uacute;ng như l&agrave; một nh&aacute;nh của lo&agrave;i m&egrave;o Anh l&ocirc;ng ngắn.</p>\r\n\r\n<p>Tr&aacute;i lại lo&agrave;i m&egrave;o n&agrave;y lại phổ biến nhất ở những nước c&ograve;n lại của ch&acirc;u &Acirc;u v&agrave; Mỹ. Năm 2009, ch&uacute;ng bắt đầu xuất hiện ở Việt Nam v&agrave; nhanh ch&oacute;ng chiếm được cảm t&igrave;nh của những người h&acirc;m mộ.</p>\r\n', 0.12),
(18, 'Sphynx cat', 51, 34000000, 10, 'image/bg-images/meoaicap-removebg-preview.png', '', 0.22),
(19, 'Munchkin cat', 94, 7600000, 10, 'image/bg-images/photo-1609665558965-8e4c789cd7c5-removebg-preview.png', '', 0.21),
(30, 'Corgi', 10, 1200000, 8, 'image/bg-images/images (1).jfif', '', 0.1),
(31, 'tokinese', 8, 10000000, 10, 'image/bg-images/tonkinese-removebg-preview.png', '', 0.13),
(40, 'Corgi mặt đần', 20, 15000000, 8, 'image/bg-images/images (1).jfif', '', 0.32);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oder`
--

CREATE TABLE `oder` (
  `iduser` int(11) NOT NULL,
  `ngay` date NOT NULL,
  `stt` int(11) NOT NULL,
  `totalprice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderdetail`
--

CREATE TABLE `orderdetail` (
  `idoder` int(11) NOT NULL,
  `idproduct` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(11) NOT NULL,
  `tendn` varchar(50) NOT NULL,
  `matkhau` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `vaitro` varchar(20) NOT NULL COMMENT '1: admin, 0: member'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `tendn`, `matkhau`, `email`, `vaitro`) VALUES
(10, 'admin', '202cb962ac59075b964b07152d234b70', 'Đặng Quốc Vinh', 'admin'),
(23, 'anhtu', '202cb962ac59075b964b07152d234b70', 'kuroblackshirowhile@gmail.com', 'khach'),
(24, 'tranquoctu', '202cb962ac59075b964b07152d234b70', 'tqtu.19it2@vku.udn.vn', 'khach'),
(34, 'ad1', 'c51e9d44a659ecf9512e1a2844416d9b', 'gallade099@gmail.com', 'khach'),
(38, 'ok3', '202cb962ac59075b964b07152d234b70', '1234@gmail.com', 'khach'),
(39, 'anga', '202cb962ac59075b964b07152d234b70', 'ok@gmail.com', 'khach'),
(40, 'quocvinh', '202cb962ac59075b964b07152d234b70', '123', 'khach'),
(41, 'ok123', '202cb962ac59075b964b07152d234b70', '123@gmail.com', 'khach');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` int(15) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`idbinhluan`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`idhoadon`);

--
-- Chỉ mục cho bảng `hanghoa`
--
ALTER TABLE `hanghoa`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `idbinhluan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `idhoadon` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `hanghoa`
--
ALTER TABLE `hanghoa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
