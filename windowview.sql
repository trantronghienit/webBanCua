-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2017 at 08:35 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `windowview`
--

-- --------------------------------------------------------

--
-- Table structure for table `db_category`
--

CREATE TABLE `db_category` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `parentid` int(11) UNSIGNED NOT NULL,
  `metakey` varchar(150) NOT NULL,
  `metadesc` varchar(150) NOT NULL,
  `orders` int(11) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `trash` tinyint(1) NOT NULL DEFAULT '1',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_by` int(11) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_category`
--

INSERT INTO `db_category` (`id`, `name`, `link`, `parentid`, `metakey`, `metadesc`, `orders`, `status`, `trash`, `access`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(59, 'Cửa nhựa', 'cua-nhua', 0, '', '', 2, 1, 1, 1, '2017-03-29 10:26:46', 1, '2017-03-29 10:26:46', 1),
(60, 'Cửa Nhôm', 'cua-nhom', 0, '', '', 2, 1, 1, 1, '2017-03-29 10:32:36', 1, '2017-03-29 10:32:36', 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_config`
--

CREATE TABLE `db_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_keyword` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `map` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `yahoo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `skype` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `trash` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_config`
--

INSERT INTO `db_config` (`id`, `title`, `logo`, `icon`, `url`, `meta_author`, `meta_keyword`, `meta_description`, `address`, `map`, `phone`, `email`, `fax`, `facebook`, `yahoo`, `skype`, `trash`) VALUES
(1, 'KIM HỒNG PHÁT', 'banner.png', 'favicon.ico', 'http://kimhongphat.com', 'CÔNG TY TNHH TM CƠ KHÍ XÂY DỰNG KIM HỒNG PHÁT', 'CÔNG TY TNHH TM CƠ KHÍ XÂY DỰNG KIM HỒNG PHÁT, Địa chỉ: 26/2 Tổ 2, Khu 10, Phường Phú Hòa, TP Thủ Dầu Một, Bình Dương, Điện thoại: 0967 43 45 89, Email: hochinh1974@gmail.com - Website: www.kimhongphat.com', 'CÔNG TY TNHH TM CƠ KHÍ XÂY DỰNG KIM HỒNG PHÁT, Địa chỉ: 26/2 Tổ 2, Khu 10, Phường Phú Hòa, TP Thủ Dầu Một, Bình Dương, Điện thoại: 0967 43 45 89, Email: hochinh1974@gmail.com - Website: www.kimhongphat.com', '26/2 Tổ 2, Khu 10, Phường Phú Hòa, TP Thủ Dầu Một, Bình Dương', '51.508742,-0.120850', '0967 43 45 89', 'hochinh1974@gmail.com', '0967 43 45 89', 'https://www.facebook.com/maybaythuanloi', 'hodienloi', 'hodienloi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_contact`
--

CREATE TABLE `db_contact` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `title` varchar(255) NOT NULL,
  `detail` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `trash` tinyint(1) NOT NULL DEFAULT '1',
  `access` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_by` int(11) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_contact`
--

INSERT INTO `db_contact` (`id`, `fullname`, `email`, `phone`, `title`, `detail`, `status`, `trash`, `access`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'Nguyễn Văn A', 'nguyenvan@yahoo.com', '0987654322', 'HHHH', 'DHkjkdsfds', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(2, 'Nguyễn Văn B', 'nguyenvan@yahoo.com', '098765', 'hhhh', 'hhhhhh', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(3, 'Nguyễn Văn B', 'nguyenvan@yahoo.com', '098765', 'hhhh', 'hhhhhh', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(4, 'sadsd', 'ádas', 'đâs', 'dsadsad', 'ádsa', 0, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `db_content`
--

CREATE TABLE `db_content` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `detail` longtext NOT NULL,
  `img` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `trash` tinyint(1) NOT NULL DEFAULT '1',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `metakey` varchar(150) NOT NULL,
  `metadesc` varchar(150) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_by` int(11) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_content`
--

INSERT INTO `db_content` (`id`, `catid`, `title`, `alias`, `detail`, `img`, `status`, `trash`, `access`, `metakey`, `metadesc`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(122, 1, 'Báo Giá', 'bao-gia', '<p>Để thuận tiện hơn cho qu&yacute; kh&aacute;ch h&agrave;ng khi t&igrave;m hiểu th&ocirc;ng tin về gi&aacute; của sản phẩm, ch&uacute;ng t&ocirc;i xin gửi tới qu&yacute; kh&aacute;ch h&agrave;ng bảng&nbsp;<strong><a href="http://www.vietwindow.com.vn/bao-gia-cua-nhua-loi-thep-2015.tml" onclick="removepreview()" target="_blank">b&aacute;o gi&aacute; cửa nhựa l&otilde;i th&eacute;p</a>&nbsp;</strong>sử dụng thanh Sparlee tại khu vực th&agrave;nh phố Hồ Ch&iacute; Minh v&agrave; c&aacute;c tỉnh th&agrave;nh l&acirc;n cận.&nbsp;Trong bảng b&aacute;o gi&aacute; ch&uacute;ng t&ocirc;i c&oacute; ghi chi tiết đầy đủ về th&ocirc;ng tin sản phẩm để qu&yacute; kh&aacute;ch tham khảo v&agrave; nắm r&otilde; hơn về chất lượng sản phẩm cửa ch&uacute;ng t&ocirc;i.</p>\r\n\r\n<p><strong>Cam kết sản phẩm:<a href="http://www.vietwindow.com.vn/bao-gia-cua-nhua-loi-thep-2015.tml" onclick="removepreview()" tabindex="-1" target="_blank">vietwindow.com.vn/bao-gia-cua-nhua-loi-thep-2015.tml</a></strong></p>\r\n\r\n<p>Với ti&ecirc;u ch&iacute;&nbsp;<em><strong>&ldquo;Uy t&iacute;n &ndash; chất lượng&rdquo;&nbsp;</strong></em>ch&uacute;ng t&ocirc;i cam kết cung cấp d&ograve;ng sản phẩm&nbsp;<a href="http://www.vietwindow.com.vn/bao-gia-cua-nhua-loi-thep-2015.tml" onclick="removepreview()"><strong>cửa nhựa l&otilde;i th&eacute;p</strong></a>&nbsp;chất lượng cao,&nbsp;đảm bảo nguồn gốc nguy&ecirc;n vật liệu ch&iacute;nh h&atilde;ng. Sản phẩm&nbsp;đảm bảo về kỹ thuật, mỹ thuật. Chế&nbsp;độ bảo h&agrave;nh bảo tr&igrave; chu&nbsp;đ&aacute;o&nbsp;đ&aacute;p&nbsp;ứng nhanh nhất cho qu&yacute; kh&aacute;ch h&agrave;ng</p>\r\n\r\n<h6>TH&Ocirc;NG TIN NGUY&Ecirc;N LIỆU SẢN XUẤT</h6>\r\n\r\n<ul>\r\n	<li>Sản phẩm&nbsp;được sản xuất ho&agrave;n to&agrave;n 100% bằng thanh nhựa Sparlee nhập khẩu của tập&nbsp;đo&agrave;n Dalian</li>\r\n	<li>K&iacute;nh Chu Lai &ndash; Việt Nhật</li>\r\n	<li><a href="http://www.vietwindow.com.vn/phu-kien-cua-nhua-loi-thep/phu-kien-gq">Phụ kiện GQ</a>&nbsp;&ndash;&nbsp;ASSA ABLOY ch&iacute;nh h&atilde;ng</li>\r\n	<li>L&otilde;i th&eacute;p mạ kẽm ti&ecirc;u chuẩn&nbsp;độ dầy từ 1,2 &ndash; 1,6 mm</li>\r\n</ul>\r\n\r\n<p>Để&nbsp;được tư vấn v&agrave; nhận th&ocirc;ng tin chi tiết về&nbsp;<strong>gi&aacute; cửa nhựa l&otilde;i th&eacute;p</strong>&nbsp;qu&yacute; kh&aacute;ch vui l&ograve;ng&nbsp;li&ecirc;n hệ :</p>\r\n\r\n<p><strong>Trần Hải</strong>:<em>0916.30.94.49 gmail:tranhai.vietwindow@gmail.com</em></p>\r\n\r\n<p><strong>Tiến Dũng</strong>:<em>0918.41.40.45 gmail:tiendung.vietwindow@gmail.com</em></p>\r\n\r\n<p>Đơn gi&aacute; trong b&aacute;o gi&aacute;&nbsp;&aacute;p dụng cho&nbsp;đơn h&agrave;ng c&oacute; tổng khối lượng &gt;= 15m2 v&agrave;&nbsp;&aacute;p dụng cho c&aacute;c&nbsp;<a href="http://www.vietwindow.com.vn/cong-trinh">c&ocirc;ng tr&igrave;nh</a>&nbsp;tại Tp.HCM.</p>\r\n\r\n<p>C&aacute;ch t&iacute;nh gi&aacute; th&agrave;nh phẩm:</p>\r\n\r\n<p><strong>Gi&aacute; th&agrave;nh phẩm = diện t&iacute;ch cửa x&nbsp;đơn gi&aacute;/m2 + bộ phụ kiện</strong></p>\r\n\r\n<p><strong>Tham khảo th&ecirc;m:&nbsp;</strong><a href="http://www.vietwindow.com.vn/bao-gia-cua-nhom-xingfa-nhap-khau-guangdong-quang-dong.tml" onclick="removepreview()"><strong>B&aacute;o gi&aacute; cửa nh&ocirc;m xingfa</strong></a></p>\r\n\r\n<p><a href="http://www.vietwindow.com.vn/wp-content/uploads/2016/10/bao-gia-cua-nhua-loi-thep-sparlee-2017.jpg" onclick="removepreview()" rel="lightbox[1092]"><img alt="" src="http://www.vietwindow.com.vn/wp-content/uploads/2016/10/bao-gia-cua-nhua-loi-thep-sparlee-2017.jpg" style="height:4766px; width:1111px" /></a></p>\r\n\r\n<p><strong>NGO&Agrave;I RA QU&Yacute; KH&Aacute;CH C&Oacute; THỂ THAM KHẢO TH&Ecirc;M C&Aacute;C LOẠI SẢN PHẨM KH&Aacute;C NHƯ:</strong></p>\r\n\r\n<ul>\r\n	<li><em><strong><a href="http://www.vietwindow.com.vn/bao-gia-cua-nhom-xingfa-nhap-khau-guangdong-quang-dong.tml" onclick="removepreview()">B&Aacute;O GI&Aacute; CỬA&nbsp;NH&Ocirc;M XINGFA 2017.</a></strong></em></li>\r\n	<li><em><strong><a href="http://www.vietwindow.com.vn/bao-gia-cua-nhua-abs-han-quoc.tml" onclick="removepreview()">B&Aacute;O GI&Aacute; CỬA NHỰA ABS H&Agrave;N QUỐC.</a></strong></em></li>\r\n	<li><em><strong><a href="http://www.vietwindow.com.vn/bao-gia-cua-cuon-titadoor.tml" onclick="removepreview()">B&Aacute;O GI&Aacute; CỬA CUỐN CN ĐỨC.</a></strong></em></li>\r\n	<li><em><strong><a href="http://www.vietwindow.com.vn/bao-gia-cau-lan-can-cau-thang-kinh.tml" onclick="removepreview()">B&Aacute;O GI&Aacute; CỬA K&Iacute;NH, LAN CAN CẦU THANG K&Iacute;NH CƯỜNG LỰC.</a></strong></em></li>\r\n</ul>\r\n', 'mazzola.jpg', 1, 1, 1, '', '', '2017-06-23 04:50:36', 1, '2017-06-23 04:50:36', 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_customer`
--

CREATE TABLE `db_customer` (
  `id` int(11) UNSIGNED NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(64) NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `birthday` date NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `email` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `trash` tinyint(1) NOT NULL DEFAULT '1',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_by` int(11) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_customer`
--

INSERT INTO `db_customer` (`id`, `fullname`, `username`, `password`, `gender`, `birthday`, `address`, `city`, `phone`, `email`, `status`, `trash`, `access`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'Lê Quang Teo', 'LeQuangTeo', 'da646d13e4fcf0b6ad77d8ac50e72feebe8225a9', 1, '2015-06-17', 'HCM', 'HCM', '', 'huynhthitrucphuong@gmail.com', 1, 1, 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_help`
--

CREATE TABLE `db_help` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `detail` longtext NOT NULL,
  `orders` int(11) UNSIGNED NOT NULL,
  `img` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `trash` tinyint(1) NOT NULL DEFAULT '1',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) UNSIGNED NOT NULL DEFAULT '1',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_by` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_help`
--

INSERT INTO `db_help` (`id`, `title`, `alias`, `detail`, `orders`, `img`, `status`, `trash`, `access`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'Tạo menu', 'tao-menu', 'Tao menu', 1, 'hinh.jpg', 1, 0, 1, '2015-06-03 17:00:00', 0, '2015-06-03 17:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `db_orderdetail`
--

CREATE TABLE `db_orderdetail` (
  `id` int(11) UNSIGNED NOT NULL,
  `orderid` int(11) UNSIGNED NOT NULL,
  `productid` int(11) UNSIGNED NOT NULL,
  `price_buy` float(12,0) NOT NULL,
  `amount` int(11) UNSIGNED NOT NULL,
  `total` float(12,0) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `trash` tinyint(1) NOT NULL DEFAULT '1',
  `access` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `db_orders`
--

CREATE TABLE `db_orders` (
  `id` int(11) UNSIGNED NOT NULL,
  `customerid` int(11) UNSIGNED NOT NULL,
  `orderdate` date NOT NULL,
  `requireddate` date NOT NULL,
  `shipperdate` date NOT NULL,
  `total` float(12,0) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT '1',
  `access` tinyint(4) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_orders`
--

INSERT INTO `db_orders` (`id`, `customerid`, `orderdate`, `requireddate`, `shipperdate`, `total`, `address`, `city`, `country`, `trash`, `access`, `status`) VALUES
(1, 1, '2015-07-10', '2015-07-31', '2015-07-16', 232343536, 'HCM', 'HCM', 'VN', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_product`
--

CREATE TABLE `db_product` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `img` varchar(100) NOT NULL,
  `detail` longtext NOT NULL,
  `number` int(11) UNSIGNED NOT NULL,
  `number_buy` int(11) UNSIGNED NOT NULL,
  `price_root` float(12,0) NOT NULL,
  `price_buy` float(12,0) NOT NULL,
  `price_sale` float(12,0) NOT NULL,
  `show_price` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `trash` tinyint(1) NOT NULL DEFAULT '1',
  `access` tinyint(1) NOT NULL DEFAULT '1',
  `metakey` varchar(150) NOT NULL,
  `metadesc` varchar(150) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_by` int(11) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_product`
--

INSERT INTO `db_product` (`id`, `catid`, `name`, `alias`, `img`, `detail`, `number`, `number_buy`, `price_root`, `price_buy`, `price_sale`, `show_price`, `status`, `trash`, `access`, `metakey`, `metadesc`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(332, 59, 'cửa nhựa pitaco', 'cua-nhua-pitaco', 'DSC_0149.JPG', '<p>cửa nhựa pitaco l&agrave; loại cửa nhưa cao cấp&nbsp;</p>\r\n', 1, 0, 0, 10000, 10000, 1, 1, 1, 1, '', '', '2017-03-29 10:37:21', 1, '2017-03-29 10:37:21', 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_sliders`
--

CREATE TABLE `db_sliders` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `position` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT '1',
  `access` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '1',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_by` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_sliders`
--

INSERT INTO `db_sliders` (`id`, `name`, `link`, `position`, `img`, `trash`, `access`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'slideshow', 'http://link.com/1', 'slidshow', '4a084b43.jpg', 0, 1, 1, '2015-07-08 17:00:00', 0, '2015-07-15 01:07:35', 0),
(2, 'slideshow', 'http://link.com/1', 'slidshow', '01_girl_23.jpg', 0, 1, 1, '2015-07-08 17:00:00', 0, '2015-07-15 01:07:07', 0),
(3, 'slideshow', 'http://link.com/1', 'slidshow', 'mango6[1].jpg', 0, 1, 1, '2015-07-08 17:00:00', 0, '2015-07-15 01:07:12', 0),
(4, 'slideshow', 'http://link.com/1', 'slidshow', 'images01.jpg', 0, 1, 1, '2015-07-08 17:00:00', 0, '2015-07-08 17:00:00', 0),
(6, 'đasadas', 'http://thuanloi.net/', '', '0111.jpg', 1, 1, 1, '2015-07-14 20:07:20', 0, '2016-09-01 17:00:50', 1),
(7, 'sdfsdfsdfs', 'http://thuanloi.net/', 'slideshow', 'banner4fn1.png', 1, 1, 1, '2015-07-14 20:07:03', 0, '2016-09-01 17:01:27', 1),
(9, 'áấdasd', 'http://thuanloi.net/', '', '011.jpg', 1, 1, 1, '2015-07-14 20:07:22', 0, '2016-09-01 17:00:19', 1),
(16, 'Ten', 'http://thuanloi.net/', '', 'banner4fn.png', 1, 0, 1, '2015-07-15 01:07:32', 0, '2016-09-01 17:00:38', 1),
(17, 'dfdsf', 'http://xinchao.com', '', '01_girl_53.jpg', 1, 0, 1, '2016-08-27 16:08:11', 2, '2016-09-05 04:00:50', 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_topic`
--

CREATE TABLE `db_topic` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `parentid` int(11) UNSIGNED NOT NULL,
  `orders` int(11) UNSIGNED NOT NULL,
  `metakey` varchar(150) NOT NULL,
  `metadesc` varchar(150) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `trash` tinyint(1) NOT NULL DEFAULT '1',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_by` int(11) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_topic`
--

INSERT INTO `db_topic` (`id`, `name`, `link`, `parentid`, `orders`, `metakey`, `metadesc`, `status`, `trash`, `access`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'Giới thiệu', 'gioithieu', 0, 0, '', '', 1, 1, 1, '2015-10-25 17:00:00', 0, '2015-10-25 17:00:00', 0),
(4, 'Tin tức', 'tin-tuc', 0, 0, '', '', 1, 1, 1, '2015-07-23 17:00:00', 0, '2015-07-23 17:00:00', 0),
(5, 'Dịch vụ', 'dich-vu', 0, 0, '', '', 1, 1, 1, '2015-10-02 05:09:18', 0, '2015-10-02 05:09:18', 0);

-- --------------------------------------------------------

--
-- Table structure for table `db_usergroup`
--

CREATE TABLE `db_usergroup` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `trash` tinyint(1) NOT NULL DEFAULT '1',
  `access` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_by` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_usergroup`
--

INSERT INTO `db_usergroup` (`id`, `name`, `status`, `trash`, `access`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'Quản trị hệ thống', 1, 1, 0, '2015-07-08 17:00:00', 0, '2016-08-28 17:42:39', 1),
(2, 'Quản trị', 1, 1, 0, '2016-08-28 17:54:28', 1, '2016-08-28 17:55:13', 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_users`
--

CREATE TABLE `db_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `username` varchar(225) NOT NULL,
  `password` varchar(64) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `img` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `trash` tinyint(1) NOT NULL DEFAULT '1',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_by` int(11) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_users`
--

INSERT INTO `db_users` (`id`, `fullname`, `username`, `password`, `email`, `gender`, `phone`, `img`, `status`, `trash`, `access`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'Huỳnh Thị Trúc Phương', 'admin', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'huynhthitrucphuong69@gmail.com', 1, '0987654321', 'phuong.png', 1, 1, 1, '2016-08-19 07:21:36', 0, '0000-00-00 00:00:00', 0),
(2, 'Huỳnh Thị Trúc Phương', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'huynhthitrucphuong69@gmail.com', 1, '0987654321', 'phuong.png', 1, 1, 1, '2016-08-19 07:21:36', 0, '0000-00-00 00:00:00', 0),
(7, 'Huỳnh thị trúc phương', 'Phuong', 'e0a4844916492626d0e34c6bd9fa7cce554781f4', 'huynhthitrucphuong@gmail.com', 2, '0988136860', 'images.jpg', 1, 1, 1, '2016-12-12 02:25:06', 4, '2016-12-12 02:25:06', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `db_category`
--
ALTER TABLE `db_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_config`
--
ALTER TABLE `db_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_contact`
--
ALTER TABLE `db_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_content`
--
ALTER TABLE `db_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_customer`
--
ALTER TABLE `db_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_help`
--
ALTER TABLE `db_help`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_orders`
--
ALTER TABLE `db_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_product`
--
ALTER TABLE `db_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_sliders`
--
ALTER TABLE `db_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_topic`
--
ALTER TABLE `db_topic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_usergroup`
--
ALTER TABLE `db_usergroup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_users`
--
ALTER TABLE `db_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `db_category`
--
ALTER TABLE `db_category`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `db_config`
--
ALTER TABLE `db_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `db_contact`
--
ALTER TABLE `db_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `db_content`
--
ALTER TABLE `db_content`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;
--
-- AUTO_INCREMENT for table `db_customer`
--
ALTER TABLE `db_customer`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `db_help`
--
ALTER TABLE `db_help`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `db_orders`
--
ALTER TABLE `db_orders`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `db_product`
--
ALTER TABLE `db_product`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=333;
--
-- AUTO_INCREMENT for table `db_sliders`
--
ALTER TABLE `db_sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `db_topic`
--
ALTER TABLE `db_topic`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `db_usergroup`
--
ALTER TABLE `db_usergroup`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `db_users`
--
ALTER TABLE `db_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
