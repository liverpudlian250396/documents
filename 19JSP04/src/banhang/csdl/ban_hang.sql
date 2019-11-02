-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2019 at 12:48 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ban_hang`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `hinh` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `rong` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `cao` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `hinh`, `rong`, `cao`) VALUES
(1, '75572048_1477402632415095_7539523571517751296_n.jpg', '990px', '150px');

-- --------------------------------------------------------

--
-- Table structure for table `footer`
--

CREATE TABLE `footer` (
  `id` int(11) NOT NULL,
  `html` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `footer`
--

INSERT INTO `footer` (`id`, `html`) VALUES
(1, '<p>&nbsp;</p>\r\n<table style=\"margin-left: auto; margin-right: auto;\" width=\"990px\">\r\n<tbody>\r\n<tr style=\"height: 13px;\">\r\n<td style=\"height: 13px;\" align=\"right\" width=\"495px\"><span style=\"color: #000000;\"><strong>Cửa h&agrave;ng :</strong></span></td>\r\n<td style=\"height: 13px;\" width=\"495px\"><span style=\"color: #000000;\"><strong>Shop&nbsp;Expression Fiber Arts</strong></span></td>\r\n</tr>\r\n<tr style=\"height: 13px;\">\r\n<td style=\"height: 13px;\" align=\"right\"><span style=\"color: #000000;\"><strong>Điện thoại :</strong></span></td>\r\n<td style=\"height: 13px;\"><span style=\"color: #000000;\"><strong>Hotline 0911554393</strong></span></td>\r\n</tr>\r\n<tr style=\"height: 13px;\">\r\n<td style=\"height: 13px;\" align=\"right\"><span style=\"color: #000000;\"><strong>Địa chỉ :</strong></span></td>\r\n<td style=\"height: 13px;\"><span style=\"color: #000000;\"><strong>48 - Cao Thắng - Hải Ch&acirc;u - Đ&agrave; Nẵng</strong></span></td>\r\n</tr>\r\n</tbody>\r\n</table>');

-- --------------------------------------------------------

--
-- Table structure for table `hoa_don`
--

CREATE TABLE `hoa_don` (
  `id` int(11) NOT NULL,
  `ten_nguoi_mua` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `dia_chi` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `dien_thoai` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `hang_duoc_mua` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `ngaytaohd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hoa_don`
--

INSERT INTO `hoa_don` (`id`, `ten_nguoi_mua`, `email`, `dia_chi`, `dien_thoai`, `noi_dung`, `hang_duoc_mua`, `ngaytaohd`) VALUES
(4, 'Thành Cang', 'cang.spkt@gmail.com', 'Đại Lộc', '0932423996', 'chưa duyệt', '43[|||]1[|||||]50[|||]1[|||||]32[|||]1[|||||]', '2019-11-02 06:44:27'),
(5, 'Thành Cang', 'cang.spkt@gmail.com', 'Đại Lộc', '0932423996', 'chưa duyệt', '40[|||]1[|||||]', '2019-11-02 06:44:35');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `username` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `URLS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Birthday` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `admin` int(1) NOT NULL DEFAULT '0',
  `dienthoai` varchar(12) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `username`, `password`, `email`, `URLS`, `Name`, `Birthday`, `admin`, `dienthoai`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'ngolequanit@gmail.com', '08 Núi thành, Đà Nẵng', 'le quan', '29/09/1990', 1, '0905710047'),
(2, 'quan', '0cc175b9c0f1b6a831c399e269772661', 'a@gmail.com', '01 Phan Bội Châu, Đà Nẵng', 'le the', '1/1/1990', 0, '0905798321'),
(3, 'b', '92eb5ffee6ae2fec3ad71c777531578f', 'b@gmail.com', 'nui thanh', 'Nguyễn Văn', '1/1/1990', 0, '0905112233'),
(4, 'c', '4a8a08f09d37b73795649038408b5f33', 'c@gmail.com', '09 Dương khuê', 'Bùi Như Lạc', '1/1/1890', 0, '05113232323'),
(5, 'd', '8277e0910d750195b448797616e091ad', 'dd@gmail.com', 'Núi thành, đà nẵng', 'cao thị thấp', '20/2/2001', 0, '0905235313'),
(6, 'ntc2503', 'e10adc3949ba59abbe56e057f20f883e', 'cang.spkt@gmail.com', 'Đại Lộc', 'Thành Cang', '25/03/1996', 0, '0932423996');

-- --------------------------------------------------------

--
-- Table structure for table `menu_doc`
--

CREATE TABLE `menu_doc` (
  `id` int(11) NOT NULL,
  `ten` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu_doc`
--

INSERT INTO `menu_doc` (`id`, `ten`) VALUES
(1, 'Áo len nữ'),
(2, 'Áo len nam'),
(3, 'Mũ len'),
(4, 'Khăn quằng cổ');

-- --------------------------------------------------------

--
-- Table structure for table `menu_ngang`
--

CREATE TABLE `menu_ngang` (
  `id` int(11) NOT NULL,
  `ten` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `loai_menu` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu_ngang`
--

INSERT INTO `menu_ngang` (`id`, `ten`, `noi_dung`, `loai_menu`) VALUES
(1, 'Giới thiệu', '<h1><a href=\"https://www.expressionfiberarts.com/\"><span style=\"font-weight: 400;\">expressionfiberarts.com</span></a><span style=\"font-weight: 400;\"> l&agrave; một website kh&aacute; nổi tiếng kinh doanh về c&aacute;c mặt h&agrave;ng may mặc. Tất cả c&aacute;c mặt h&agrave;ng n&agrave;y đều l&agrave; đồ sợi len, được l&agrave;m thủ c&ocirc;ng rất tinh xảo v&agrave; đẹp mắt. B&ecirc;n cạnh những chiếc &aacute;o ch&uacute;ng ta hay thấy hằng ng&agrave;y th&igrave; ở đ&acirc;y người ta c&oacute; độc quyền về thiết kế, những mẫu m&atilde; n&oacute;i l&ecirc;n sự s&aacute;ng tạo kh&ocirc;ng ngừng nghĩ, t&acirc;m huyết với nghề của những nh&agrave; thiết kế. Họ muốn mang đến cho tất cả mọi người c&oacute; c&aacute;i nh&igrave;n kh&aacute;c về c&aacute;c mặt h&agrave;ng len, sợi. Nh&igrave;n những mẫu thiết kế về quần &aacute;o, những phụ kiện đi k&egrave;m, ta c&oacute; thể hiểu đ&acirc;y l&agrave; một website mang đến cho tất cả mọi người, kh&ocirc;ng chỉ c&aacute;c mặt h&agrave;ng, c&aacute;c nhu cầu cần thiết, m&agrave; đ&acirc;y l&agrave; nơi thể hiện của những t&aacute;c phẩm nghệ thuật về len, sợi.</span></h1>', ''),
(2, 'Sản phẩm', '', 'san_pham'),
(3, 'Hướng dẫn mua hàng', '<p><strong>Hướng dẫn mua h&agrave;ng</strong></p>\r\n<p>Qu&yacute; kh&aacute;ch c&oacute; thể đặt h&agrave;ng theo một trong c&aacute;c c&aacute;ch sau:</p>\r\n<p><strong>Đặt h&agrave;ng trực tiếp:</strong>&nbsp;th&ocirc;ng qua chức năng B&aacute;n h&agrave;ng online tr&ecirc;n website.</p>\r\n<p><strong>Đặt h&agrave;ng th&ocirc;ng qua Facebook:</strong>&nbsp;Qu&yacute; kh&aacute;ch c&oacute; thể đặt h&agrave;ng trực tiếp th&ocirc;ng qua nick chat facebook tr&ecirc;n website. Qu&yacute; kh&aacute;ch h&atilde;y để lại th&ocirc;ng tin li&ecirc;n hệ! Nh&acirc;n vi&ecirc;n kinh doanh sẽ li&ecirc;n hệ với Qu&yacute; kh&aacute;ch ngay khi c&oacute; thể v&agrave; chuyển h&agrave;ng đến cho Qu&yacute; kh&aacute;ch.</p>\r\n<p><strong>Điện thoại trực tiếp:</strong>&nbsp;- Mr. Hiệu 0966 710 265</p>\r\n<p><strong>Mua h&agrave;ng trực tiếp:</strong>&nbsp;Qu&yacute; kh&aacute;ch h&agrave;ng c&oacute; thể đến địa chỉ sau để mua h&agrave;ng trực tiếp</p>\r\n<p>Giao h&agrave;ng nhanh ch&oacute;ng v&agrave; đảm bảo</p>\r\n<p>&nbsp;</p>\r\n<p>Trong c&aacute;c quận nội th&agrave;nh Th&agrave;nh phố Hồ Ch&iacute; Minh: Đối với qu&yacute; kh&aacute;ch trong c&aacute;c quận nội th&agrave;nh Th&agrave;nh phố Hồ Ch&iacute; Minh khi mua h&agrave;ng xin vui l&ograve;ng li&ecirc;n hệ đặt h&agrave;ng trước tối thiểu 02 ng&agrave;y , ch&uacute;ng t&ocirc;i sẽ giao h&agrave;ng đến tận nơi kh&ocirc;ng t&iacute;nh chi ph&iacute; vận chuyển trong nội th&agrave;nh đối với đơn h&agrave;ng &ge; 700.000 VNĐ (địa điểm cho ph&eacute;p xe 1,5 tấn lưu th&ocirc;ng)</p>\r\n<p>&nbsp;</p>\r\n<p>C&aacute;c tỉnh th&agrave;nh kh&aacute;c Đối với c&aacute;c địa chỉ ngo&agrave;i địa phận Th&agrave;nh phố Hồ Ch&iacute; Minh. H&agrave;ng h&oacute;a được gởi th&ocirc;ng qua &ldquo;ch&agrave;nh&rdquo; do kh&aacute;ch h&agrave;ng chỉ định, c&ocirc;ng ty c&oacute; chế độ hỗ trợ chi ph&iacute; vận chuyển cho kh&aacute;ch h&agrave;ng ở c&aacute;c tỉnh xa (vui l&ograve;ng li&ecirc;n hệ với bộ phận chăm s&oacute;c kh&aacute;ch h&agrave;ng để biết th&ecirc;m chi tiết). Thời gian qu&yacute; kh&aacute;ch nhận được h&agrave;ng trong khoảng từ 1 đến 3 ng&agrave;y khi ch&uacute;ng t&ocirc;i nhận được đơn h&agrave;ng của Qu&yacute; kh&aacute;ch h&agrave;ng. H&igrave;nh thức thanh to&aacute;n: Sau khi mua h&agrave;ng, trong qu&aacute; tr&igrave;nh thực hiện thanh to&aacute;n, qu&yacute; kh&aacute;ch c&oacute; thể thanh to&aacute;n bằng những c&aacute;ch sau:</p>\r\n<p>&nbsp;</p>\r\n<p>1. Thanh to&aacute;n trực tiếp với nh&acirc;n vi&ecirc;n giao h&agrave;ng đối với kh&aacute;ch h&agrave;ng trong nội th&agrave;nh Th&agrave;nh phố Hồ Ch&iacute; Minh</p>\r\n<p>2. Nh&acirc;n vi&ecirc;n của c&ocirc;ng ty sẽ thu tiền tại ch&agrave;nh</p>\r\n<p>3. Chuyển khoản qua t&agrave;i khoản ng&acirc;n h&agrave;ng (vui l&ograve;ng th&ocirc;ng b&aacute;o sau khi chuyển tiền th&agrave;nh c&ocirc;ng)</p>', ''),
(4, 'Cách mua hàng', 'Nội dung cách mua hàng <br><br>\r\nNội dung cách mua hàng <br><br>\r\nNội dung cách mua hàng <br><br>\r\nNội dung cách mua hàng <br><br>\r\nNội dung cách mua hàng <br><br>\r\nNội dung cách mua hàng <br><br>\r\nNội dung cách mua hàng <br><br>', ''),
(5, 'Liên hệ', 'Nội dung liên hệ<br><br>\r\nNội dung liên hệ<br><br>\r\nNội dung liên hệ<br><br>\r\nNội dung liên hệ<br><br>\r\nNội dung liên hệ<br><br>\r\nNội dung liên hệ<br><br>\r\nNội dung liên hệ<br><br>', '');

-- --------------------------------------------------------

--
-- Table structure for table `quang_cao`
--

CREATE TABLE `quang_cao` (
  `id` int(11) NOT NULL,
  `html` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `vi_tri` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `quang_cao`
--

INSERT INTO `quang_cao` (`id`, `html`, `vi_tri`) VALUES
(1, '<p><img src=\"/banhang/hinh_anh/tinymce/images.jpg\" alt=\"\" /><img src=\"/banhang/hinh_anh/tinymce/tải_xuống.png\" alt=\"\" /></p>', 'trai'),
(2, '<p><a href=\"#\"><img src=\"/banhang/hinh_anh/tinymce/tải_xuống.jpg\" alt=\"\" /><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/ban_hang/hinh_anh/tinymce/qc_t_1.png\" alt=\"\" /></a></p>\r\n<p style=\"text-align: center;\"><a href=\"#\"><img src=\"/ban_hang/hinh_anh/tinymce/qc_t_2.png\" alt=\"\" /></a></p>\r\n<p><a href=\"#\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/ban_hang/hinh_anh/tinymce/qc_t_3.png\" alt=\"\" /></a></p>', 'phai');

-- --------------------------------------------------------

--
-- Table structure for table `san_pham`
--

CREATE TABLE `san_pham` (
  `id` int(11) NOT NULL,
  `ten` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `gia` int(255) NOT NULL,
  `hinh_anh` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `thuoc_menu` int(255) NOT NULL,
  `noi_bat` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `trang_chu` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `sap_xep_trang_chu` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `san_pham`
--

INSERT INTO `san_pham` (`id`, `ten`, `gia`, `hinh_anh`, `noi_dung`, `thuoc_menu`, `noi_bat`, `trang_chu`, `sap_xep_trang_chu`) VALUES
(5, '1114', 42000, 'tải xuống (13).jpg', '<h1>H&agrave;ng nhập khẩu trực tiếp ch&iacute;nh h&atilde;ng từ H&agrave;n Quốc.<br />&nbsp;Kiểu d&aacute;ng thời trang, trẻ trung, năng động, s&agrave;nh điệu.<br />&nbsp;Chất liệu cao cấp, bền đẹp, đường may chắc chắn, tỉ mỉ</h1>', 1, '', '', 0),
(6, '1115', 100000, 'tải xuống (12).jpg', '<h1>H&agrave;ng nhập khẩu trực tiếp ch&iacute;nh h&atilde;ng từ H&agrave;n Quốc.<br />&nbsp;Kiểu d&aacute;ng thời trang, trẻ trung, năng động, s&agrave;nh điệu.<br />&nbsp;Chất liệu cao cấp, bền đẹp, đường may chắc chắn, tỉ mỉ</h1>', 1, '', 'co', 0),
(7, '1116', 120000, 'tải xuống (11).jpg', '<h1>H&agrave;ng nhập khẩu trực tiếp ch&iacute;nh h&atilde;ng từ H&agrave;n Quốc.<br />Kiểu d&aacute;ng thời trang, trẻ trung, năng động, s&agrave;nh điệu&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Chất liệu cao cấp, bền đẹp, đường may chắc chắn, tỉ mỉ</h1>', 1, 'co', '', 2),
(30, '3310', 110000, 'images.jpg', '<h1>Mũ len phong c&aacute;ch H&agrave;n đẹp chuẩn mốt v&agrave; s&agrave;nh điệu d&agrave;nh cho bạn. Thế giới mũ len của Baza đa dạng về m&agrave;u sắc v&agrave; thiết kế bắt kịp với xu hướng thời trang như: Mũ len beret, mũ len quả tr&aacute;m, mũ len họa tiết</h1>', 3, '', '', 7),
(31, '3311', 120000, '32e8696b9495cba9012037e76f1b3d89e0e15558.jpg', '<h1>Mũ len phong c&aacute;ch H&agrave;n đẹp chuẩn mốt v&agrave; s&agrave;nh điệu d&agrave;nh cho bạn. Thế giới mũ len của Baza đa dạng về m&agrave;u sắc v&agrave; thiết kế bắt kịp với xu hướng thời trang như: Mũ len beret, mũ len quả tr&aacute;m, mũ len họa tiết</h1>', 3, '', '', 9),
(32, '3312', 50000, 'tải xuống (10).jpg', '<h1>Kiểu mũ len quả tr&aacute;m của shop ph&ugrave; hợp với c&aacute;c n&agrave;ng c&oacute; khu&ocirc;n mặt tr&aacute;i xoan hoặc tr&ograve;n v&agrave; nước da trắng hồng. Khi diện mũ len quả tr&aacute;m thế n&agrave;y sẽ hợp với c&aacute;c kiểu t&oacute;c bob hoặc t&oacute;c uốn ngang vai</h1>', 3, 'co', '', 12),
(33, '3313', 60000, 'tải xuống (2).jpg', '<h1>&nbsp;Mũ len tươi trẻ nhiều m&agrave;u sắc đậm chất H&agrave;n Quốc. Mũ len của Angle Lam c&oacute; kiểu d&aacute;ng kh&aacute; đơn giản</h1>', 3, '', '', 1),
(34, '3314', 70000, 'tải xuống.jpg', '<h1>Mũ len kh&ocirc;ng đơn thuần l&agrave; m&oacute;n đồ gi&uacute;p bạn giữ ấm v&ugrave;ng đầu hiệu quả m&agrave; c&ograve;n h&ocirc; biến c&aacute;c n&agrave;ng trở th&agrave;nh c&ocirc; g&aacute;i c&aacute; t&iacute;nh v&agrave; quyến rũ hơn</h1>', 3, '', '', 11),
(35, '3315', 80000, 'tải xuống (1).jpg', '<p>Để trở th&agrave;nh c&ocirc; n&agrave;ng m&ugrave;a đ&ocirc;ng ch&iacute;nh hiệu th&igrave; ngo&agrave;i c&aacute;c set đồ đ&ocirc;ng cực chất c&aacute;c n&agrave;ng phải sắm th&ecirc;m v&agrave;i phụ kiện như: Boots, khăn cho&agrave;ng, găng tay,...đặc biệt kh&ocirc;ng thể thiếu những item n&oacute;n len&nbsp;dễ thương</p>', 3, '', '', 0),
(36, '3316', 90000, 'tải xuống (8).jpg', '<p>Mũ len lu&ocirc;n l&agrave; m&oacute;n phụ kiện điệu đ&agrave; của c&aacute;c bạn g&aacute;i. C&oacute; rất nhiều kiểu mũ len để c&aacute;c n&agrave;ng thoải m&aacute;i diện cho ph&ugrave; hợp với thời tiết, tuy nhi&ecirc;n thời gian gần đ&acirc;y kiểu mũ len H&agrave;n Quốc c&oacute; t&ecirc;n gọi đ&aacute;ng y&ecirc;u - \"mũ Helsinki\" đang khiến nhiều c&ocirc; n&agrave;ng sốt x&igrave;nh xịch. Chiếc mũ len nữ n&agrave;y đang nổi l&ecirc;n như một hiện tượng v&agrave; được c&aacute;c bạn trẻ thi nhau khoe ảnh tr&ecirc;n Instagram.</p>', 3, '', 'co', 16),
(37, '3317', 170000, 'tải xuống (5).jpg', '<h4>Chiếc mũ len Helsinki được l&agrave;m từ loại len sợi to ngộ nghĩnh đang l&agrave; m&oacute;n đồ được nhiều bạn trẻ y&ecirc;u th&iacute;ch. Với kiểu mũ len đẹp n&agrave;y c&aacute;c n&agrave;ng c&oacute; thể dễ d&agrave;ng mix đồ, cũng như tạo kiểu t&oacute;c để tự tin xuống phố.</h4>', 3, '', '', 15),
(38, '3318', 180000, 'tải xuống (4).jpg', '<p>M&atilde; sản phẩm:mũ len h&agrave;n quốc X68</p>\r\n<p>M&agrave;u sắc: Đen, Đỏ, Trắng, Hồng, Xanh c&ocirc; ban.</p>\r\n<p>Chất liệu: len, b&ecirc;n trong c&oacute; l&oacute;t l&ocirc;ng</p>\r\n<p>Xuất xứ: Việt Nam</p>\r\n<p>Giao h&agrave;ng to&agrave;n quốc, thanh to&aacute;n khi nhận h&agrave;ng.</p>\r\n<p>Cam kết sản phẩm chuẩn hỉnh, chất lượng tốt. Được ph&eacute;p kiểm tra h&agrave;ng trước khi thanh to&aacute;n, nếu kh&ocirc;ng đ&uacute;ng mẫu, ho&agrave;n lại shop m&agrave; kh&ocirc;ng mất bất k&igrave; khoản chi ph&iacute; n&agrave;o.</p>\r\n<p>Mũ len&nbsp;l&agrave; phụ kiện giữ ấm cần thiết cho bất kỳ ai. N&oacute; g&oacute;p phần t&ocirc;n l&ecirc;n vẻ đẹp trang phục cũng như giữ ấm cơ thể. Một chiếc&nbsp;mũ&nbsp;đẹp lu&ocirc;n khiến bạn nổi bật giữa đ&aacute;m đ&ocirc;ng v&agrave; c&oacute; những bức h&igrave;nh selfie si&ecirc;u đỉnh. Xen lu&ocirc;n cập nhật những mẫu mới nhất v&agrave; hợp thời trang nhất. Mẫu đẹp, duy nhất chỉ c&oacute; tại Xen boutique.</p>\r\n<p>Độ bền sản phẩm của ch&uacute;ng t&ocirc;i l&ecirc;n tới 5 năm.&nbsp;Cam kết sản phẩm chuẩn hỉnh, chất lượng tốt. Được ph&eacute;p kiểm tra h&agrave;ng trước khi thanh to&aacute;n, nếu kh&ocirc;ng đ&uacute;ng mẫu, ho&agrave;n lại shop m&agrave; kh&ocirc;ng mất bất k&igrave; khoản chi ph&iacute; n&agrave;o.</p>', 3, '', '', 0),
(40, '3319', 79000, 'tải xuống (6).jpg', '<p>&nbsp; &nbsp; &nbsp; &nbsp; Chất liệu len được sử dụng để tạo n&ecirc;n chiếc mũ Helsinki n&agrave;y l&agrave; những sợi l&ocirc;ng cừu mềm mại, một loại len với gi&aacute; th&agrave;nh cao nhưng chất lượng th&igrave; l&agrave; tuyệt đối. Sợi len của mũ n&agrave;y rất to. Ch&iacute;nh v&igrave; điểm độc đ&aacute;o n&agrave;y m&agrave; em mũ len n&agrave;y được l&ograve;ng rất nhiều c&ocirc; n&agrave;ng. So với c&aacute;c loại mũ len kh&aacute;c tr&ecirc;n thị trường, vừa nh&igrave;n v&agrave;o đ&atilde; thấy được vẻ độc lạ của loại mũ n&agrave;y . Khi đội n&oacute;, chắc chắn ch&uacute;ng ta sẽ kh&ocirc;ng lo bị đụng h&agrave;ng, sẽ c&oacute; rất nhiều sự trầm trồ cho vẻ đẹp của loại mũ n&agrave;y đấy. H&atilde;y thử sắm cho m&igrave;nh một chiếc mũ chất lượng như vậy để y&ecirc;u chiều bản th&acirc;n hơn, hoặc tự thiết kế cho m&igrave;nh hay bạn b&egrave;. Những chiếc mũ xinh xắn như vậy cũng c&oacute; thể l&agrave;m qu&agrave; tặng cho bạn b&egrave;.</p>', 3, '', 'co', 2),
(41, '2204', 299000, 'tải xuống (7).jpg', '<h1>&nbsp; &nbsp; &nbsp;Vừa che chăn cơ thể lại vừa đủ th&ocirc;ng tho&aacute;ng để kh&ocirc;ng khiến bạn kh&oacute; chịu. Th&igrave; h&atilde;y đặt niềm tin v&agrave;o &aacute;o len của ch&uacute;ng t&ocirc;i, chắc chắn bạn sẽ h&agrave;i l&ograve;ng.</h1>\r\n<h1>&nbsp; &nbsp; &nbsp;Với những chiếc &aacute;o t&ocirc;n vinh được vẻ đẹp cũng như phong c&aacute;ch thời trang của ch&agrave;ng. Chiếc &aacute;o len nam sẽ tạo cho người mặc phong c&aacute;ch lịch thiệp, cuốn h&uacute;t. Chiếc &aacute;o len nam đa dạng về kiểu d&aacute;ng ti&ecirc;u biểu như &aacute;o len cổ tr&ograve;n, &aacute;o len cổ lọ, &aacute;o len cổ tim,&hellip;được c&aacute;c nh&agrave; thiết kế kh&ocirc;ng ngừng trau dồi kiến thức, cập nhật xu hướng mới của thời đại c&ugrave;ng sự s&aacute;ng tạo th&ocirc;ng minh l&agrave;m cho những chiếc &aacute;o đẹp hơn bao giờ hết. C&aacute;c ch&agrave;ng sẽ thực sự bất ngờ trước sự nổi bật của chiếc &aacute;o. Kh&ocirc;ng dừng lại ở đ&oacute;, chiếc &aacute;o len nam c&oacute; nhiều m&agrave;u sắc phong ph&uacute;, những đường len mềm mại, ấm &aacute;p c&ugrave;ng những đường may tinh tế l&agrave;m cho chiếc &aacute;o c&agrave;ng đẹp hơn trong mắt những người nh&igrave;n.<br /><br /></h1>', 2, 'co', 'co', 17),
(43, '4405', 59000, 'tải xuống (9).jpg', '<p>&nbsp;</p>\r\n<h1>&nbsp; &nbsp; &nbsp; &nbsp; Khăn qu&agrave;ng cổ nữ thời trang, kiểu d&aacute;ng đơn giản, phong c&aacute;ch H&agrave;n Quốc</h1>', 4, 'co', 'co', 18),
(44, '2201', 199000, 'images (1).jpg', '<h1>H&agrave;ng nhập khẩu trực tiếp ch&iacute;nh h&atilde;ng từ H&agrave;n Quốc.<br />&nbsp;Kiểu d&aacute;ng thời trang, trẻ trung, năng động, s&agrave;nh điệu.<br />&nbsp;Chất liệu cao cấp, bền đẹp, đường may chắc chắn, tỉ mỉ</h1>', 2, '', '', 19),
(45, '2202', 299000, 'images (2).jpg', '<h1>H&agrave;ng nhập khẩu trực tiếp ch&iacute;nh h&atilde;ng từ H&agrave;n Quốc.<br />&nbsp;Kiểu d&aacute;ng thời trang, trẻ trung, năng động, s&agrave;nh điệu.<br />&nbsp;Chất liệu cao cấp, bền đẹp, đường may chắc chắn, tỉ mỉ</h1>', 2, '', '', 20),
(46, '2203', 100000, 'images (3).jpg', '<h1>H&agrave;ng nhập khẩu trực tiếp ch&iacute;nh h&atilde;ng từ H&agrave;n Quốc.<br />&nbsp;Kiểu d&aacute;ng thời trang, trẻ trung, năng động, s&agrave;nh điệu.<br />&nbsp;Chất liệu cao cấp, bền đẹp, đường may chắc chắn, tỉ mỉ</h1>', 2, '', '', 21),
(47, '4401', 79000, 'images (5).jpg', '<h1>H&agrave;ng nhập khẩu trực tiếp ch&iacute;nh h&atilde;ng từ H&agrave;n Quốc.<br />&nbsp;Kiểu d&aacute;ng thời trang, trẻ trung, năng động, s&agrave;nh điệu.<br />&nbsp;Chất liệu cao cấp, bền đẹp, đường may chắc chắn, tỉ mỉ</h1>', 4, '', '', 22),
(48, '4402', 89000, '1212121212.jpg', '<h1>H&agrave;ng nhập khẩu trực tiếp ch&iacute;nh h&atilde;ng từ H&agrave;n Quốc.<br />&nbsp;Kiểu d&aacute;ng thời trang, trẻ trung, năng động, s&agrave;nh điệu.<br />&nbsp;Chất liệu cao cấp, bền đẹp, đường may chắc chắn, tỉ mỉ</h1>', 4, '', '', 23),
(49, '4403', 89000, 'images (7).jpg', '<h1>H&agrave;ng nhập khẩu trực tiếp ch&iacute;nh h&atilde;ng từ H&agrave;n Quốc.<br />&nbsp;Kiểu d&aacute;ng thời trang, trẻ trung, năng động, s&agrave;nh điệu.<br />&nbsp;Chất liệu cao cấp, bền đẹp, đường may chắc chắn, tỉ mỉ</h1>', 4, '', '', 24),
(50, '4404', 59000, 'images (4).jpg', '<h1>H&agrave;ng nhập khẩu trực tiếp ch&iacute;nh h&atilde;ng từ H&agrave;n Quốc.<br />&nbsp;Kiểu d&aacute;ng thời trang, trẻ trung, năng động, s&agrave;nh điệu.<br />&nbsp;Chất liệu cao cấp, bền đẹp, đường may chắc chắn, tỉ mỉ</h1>', 4, '', '', 25),
(51, '1110', 0, 'a.jpg', '<h1>H&agrave;ng nhập khẩu trực tiếp ch&iacute;nh h&atilde;ng từ H&agrave;n Quốc.<br />&nbsp;Kiểu d&aacute;ng thời trang, trẻ trung, năng động, s&agrave;nh điệu.<br />&nbsp;Chất liệu cao cấp, bền đẹp, đường may chắc chắn, tỉ mỉ</h1>', 1, '', '', 26);

-- --------------------------------------------------------

--
-- Table structure for table `slideshow`
--

CREATE TABLE `slideshow` (
  `id` int(11) NOT NULL,
  `hinh` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `lien_ket` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slideshow`
--

INSERT INTO `slideshow` (`id`, `hinh`, `lien_ket`) VALUES
(1, 'instagram-for-business.gif', '#'),
(2, 'Landscape-Launch-Animation-Blog-Alt-Loop.gif', '#'),
(3, 'MealyOrangeAgouti-size_restricted.gif', '#'),
(4, 'PeskyDependentFulmar-size_restricted.gif', '#');

-- --------------------------------------------------------

--
-- Table structure for table `thong_tin_quan_tri`
--

CREATE TABLE `thong_tin_quan_tri` (
  `id` int(11) NOT NULL,
  `ky_danh` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `mat_khau` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thong_tin_quan_tri`
--

INSERT INTO `thong_tin_quan_tri` (`id`, `ky_danh`, `mat_khau`) VALUES
(1, 'admin', 'c3284d0f94606de1fd2af172aba15bf3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_doc`
--
ALTER TABLE `menu_doc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_ngang`
--
ALTER TABLE `menu_ngang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quang_cao`
--
ALTER TABLE `quang_cao`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slideshow`
--
ALTER TABLE `slideshow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thong_tin_quan_tri`
--
ALTER TABLE `thong_tin_quan_tri`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `footer`
--
ALTER TABLE `footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hoa_don`
--
ALTER TABLE `hoa_don`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `menu_doc`
--
ALTER TABLE `menu_doc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menu_ngang`
--
ALTER TABLE `menu_ngang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `quang_cao`
--
ALTER TABLE `quang_cao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `san_pham`
--
ALTER TABLE `san_pham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `slideshow`
--
ALTER TABLE `slideshow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `thong_tin_quan_tri`
--
ALTER TABLE `thong_tin_quan_tri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
