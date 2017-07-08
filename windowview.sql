-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2017 at 03:13 PM
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
(1, 1, 'Giới thiệu website Hotta', 'gioi-thieu', 'Website lớn chuyên về xu hướng thời trang mới nhất. Chúng tôi ra đời cách đây hơn 5 năm về trước và đã có những uy tín nhất định trong thị trường thời trang tại Việt Nam.  Đặt mình vào vị trí khách hàng giữa muôn vàn website ra đời ăn theo nhờ công nghệ thông tin để chọn cho mình một nơi tin tưởng mua hàng quả là không dễ dàng gì. Bởi vì chất lượng và giá cả đúng là có sự khác nhau. Vậy mua ở đâu và tiện lợi nhất để đảm bảo được những yêu cầu của chị em mỗi lần bước chân ra đường đến chốn đông người: ăn uống hội họp, du lịch, đi làm … vừa thật sang trọng, sành điệu bền đẹp mà giá cả phải chăng nhất. Thời trang xinh ra đời để làm điều đó. Xuyên suốt thị trường mua bán online từ thuở còn sơ khai chúng tôi hơn ai hết hiểu rõ điều đó.  Khi mua hàng tại thời trang xinh chúng tôi luôn có những đảm bảo sau đây. Những đảm bảo này để quý khách so sánh và lựa chọn khi mua hàng:  1, Vải là yếu tố quan trọng quyết định 80% sản phẩm đẹp hay xấu vì vậy chọn lọc chất liệu là yếu tố chúng tôi luôn quan tâm hàng đầu. 80% là loại vải nhập có độ đàn hồi và dễ mặc, êm form và thuận tiện không cần phải ủi quá nhiều. Chúng tôi luôn sản xuất từ các loại vải thời trang với giá thành tương đối không pha tạp vải may hàng chợ.  2, Toàn bộ sản phẩm của Hotta đều sản xuất tại xưởng may của Hotta , chúng tôi luôn sản xuất với thái độ cẩn trọng và chắc chắn dưới dạng may gia đình: đường may luôn thẳng và dày chỉ, dây kéo và màu chỉ luôn cùng tông màu với váy đầm, không may theo dạng vắt sổ (cách may này rất nhanh nhưng mũi chỉ thường thưa không có đường nới tiết kiệm vải thường sử dụng cho hàng chợ), may mũi 1 kim và cách lai 2 cm để có đường nới cho chị em.  3, Một mẫu váy đẹp không phải ai cũng tạo được chiêc váy ưng mắt, trước tiên người thiết kế phải có mắt thẩm mỹ và tính cẩn thận để lên một form và chấp nhận thất bại để chỉnh sửa cho hoàn chỉnh chúng tôi luôn tuyển chọn những người như thế để đem đến sản phẩm tốt nhất đến với quý khách và Vì vậy Hotta luôn duyệt form một cách cẩn trọng để tạo ra form hoàn hảo nhất. Form vấy tại Hotta đã được thiết kế theo form dáng của người Việt Nam dễ mặc, chiều dài đảm bảo cho thị hiếu của người Việt Nam. Có nhiều size để chị em lựa chọn ( Hàng có size luôn vào form đẹp và chuẩn hơn hàng không size, nếu hàng ko có size dễ thừa chỗ nọ thiếu chỗ kia nếu là người biết cách mặc đẹp thì rất ít khi người ta chọn hàng ít size hoặc không có size).  4, Khoảng 5000 hàng mỗi tháng là con số nhỏ nhất của Hotta đối với mật độ tiêu dùng và mức độ tin tưởng của khách hàng việt nam giành cho thời trang xinh.  Với những tiêu chí trên chúng tôi chúc quý khách sẽ chọn lựa được nơi mua hàng tin cậy. Quý khách có thể đặt câu hỏi với người bán hàng để kiểm tra tính chuyên nghiệp của họ khi chào bán sản phẩm thời trang may mặc tới bạn. Chúc quý khách luôn như ý với những gì mình lựa chọn !  Trân Trọng  Phong Cách Thời Trang  Địa Chỉ: 168/25 Chế Lan Viên F Tây Thạnh Tân Phú, HCM', 'default.png', 1, 1, 1, '', '', '2015-02-15 09:04:35', 0, '2015-02-15 09:04:35', 0),
(4, 4, 'Phương pháp lập trình web php 2', 'phuong-phap-lap-trinh-php-2', '<p>K&iacute;nh ch&agrave;o qu&yacute; kh&aacute;ch, t&ocirc;i l&agrave; Phạm Trường Đăng Khoa, hiện đang l&agrave; giảng vi&ecirc;n tại khoa CNTT Đại Học S&agrave;i G&ograve;n, v&agrave; Trung T&acirc;m Đ&agrave;o Tạo CNTT Nhất Nghệ - bộ m&ocirc;n Lập tr&igrave;nh ứng dụng. L&agrave; một Web Developer, t&ocirc;i hiểu được tầm quan trọng của một website đối với qu&yacute; kh&aacute;ch như thế n&agrave;o. V&agrave; c&agrave;ng thấu hiểu c&aacute;c rủi ro khi qu&yacute; kh&aacute;ch t&igrave;m người thiết kế website, đặc biệt l&agrave; c&aacute;c website &quot;gi&aacute; cực rẻ&quot;.</p>\r\n', 'default.png', 1, 1, 1, '', '', '2015-02-15 09:05:22', 0, '2015-02-15 09:05:22', 0),
(5, 4, 'Phương pháp lập trình web php 3', 'phuong-phap-lap-trinh-php-3', '<p>K&iacute;nh ch&agrave;o qu&yacute; kh&aacute;ch, t&ocirc;i l&agrave; Phạm Trường Đăng Khoa, hiện đang l&agrave; giảng vi&ecirc;n tại khoa CNTT Đại Học S&agrave;i G&ograve;n, v&agrave; Trung T&acirc;m Đ&agrave;o Tạo CNTT Nhất Nghệ - bộ m&ocirc;n Lập tr&igrave;nh ứng dụng. L&agrave; một Web Developer, t&ocirc;i hiểu được tầm quan trọng của một website đối với qu&yacute; kh&aacute;ch như thế n&agrave;o. V&agrave; c&agrave;ng thấu hiểu c&aacute;c rủi ro khi qu&yacute; kh&aacute;ch t&igrave;m người thiết kế website, đặc biệt l&agrave; c&aacute;c website &quot;gi&aacute; cực rẻ&quot;.</p>\r\n', 'default.png', 1, 1, 1, '', '', '2015-02-15 09:05:25', 0, '2015-02-15 09:05:25', 0),
(6, 4, 'Phương pháp lập trình web php 4', 'phuong-phap-lap-trinh-php-4', '<p>K&iacute;nh ch&agrave;o qu&yacute; kh&aacute;ch, t&ocirc;i l&agrave; Phạm Trường Đăng Khoa, hiện đang l&agrave; giảng vi&ecirc;n tại khoa CNTT Đại Học S&agrave;i G&ograve;n, v&agrave; Trung T&acirc;m Đ&agrave;o Tạo CNTT Nhất Nghệ - bộ m&ocirc;n Lập tr&igrave;nh ứng dụng. L&agrave; một Web Developer, t&ocirc;i hiểu được tầm quan trọng của một website đối với qu&yacute; kh&aacute;ch như thế n&agrave;o. V&agrave; c&agrave;ng thấu hiểu c&aacute;c rủi ro khi qu&yacute; kh&aacute;ch t&igrave;m người thiết kế website, đặc biệt l&agrave; c&aacute;c website &quot;gi&aacute; cực rẻ&quot;.</p>\r\n', 'default.png', 1, 1, 1, '', '', '2015-02-15 09:05:27', 0, '2015-02-15 09:05:27', 0),
(7, 4, 'Phương pháp lập trình web php 5', 'phuong-phap-lap-trinh-php-5', '<p>K&iacute;nh ch&agrave;o qu&yacute; kh&aacute;ch, t&ocirc;i l&agrave; Phạm Trường Đăng Khoa, hiện đang l&agrave; giảng vi&ecirc;n tại khoa CNTT Đại Học S&agrave;i G&ograve;n, v&agrave; Trung T&acirc;m Đ&agrave;o Tạo CNTT Nhất Nghệ - bộ m&ocirc;n Lập tr&igrave;nh ứng dụng. L&agrave; một Web Developer, t&ocirc;i hiểu được tầm quan trọng của một website đối với qu&yacute; kh&aacute;ch như thế n&agrave;o. V&agrave; c&agrave;ng thấu hiểu c&aacute;c rủi ro khi qu&yacute; kh&aacute;ch t&igrave;m người thiết kế website, đặc biệt l&agrave; c&aacute;c website &quot;gi&aacute; cực rẻ&quot;.</p>\r\n', 'default.png', 1, 1, 1, '', '', '2015-02-15 09:05:31', 0, '2015-02-15 09:05:31', 0),
(8, 4, 'Phương pháp lập trình web php 6', 'phuong-phap-lap-trinh-php-6', '<p>K&iacute;nh ch&agrave;o qu&yacute; kh&aacute;ch, t&ocirc;i l&agrave; Phạm Trường Đăng Khoa, hiện đang l&agrave; giảng vi&ecirc;n tại khoa CNTT Đại Học S&agrave;i G&ograve;n, v&agrave; Trung T&acirc;m Đ&agrave;o Tạo CNTT Nhất Nghệ - bộ m&ocirc;n Lập tr&igrave;nh ứng dụng. L&agrave; một Web Developer, t&ocirc;i hiểu được tầm quan trọng của một website đối với qu&yacute; kh&aacute;ch như thế n&agrave;o. V&agrave; c&agrave;ng thấu hiểu c&aacute;c rủi ro khi qu&yacute; kh&aacute;ch t&igrave;m người thiết kế website, đặc biệt l&agrave; c&aacute;c website &quot;gi&aacute; cực rẻ&quot;.</p>\r\n', 'default.png', 1, 1, 1, '', '', '2015-02-15 09:05:34', 0, '2015-02-15 09:05:34', 0),
(9, 4, 'Phương pháp lập trình web php 7', 'phuong-phap-lap-trinh-php-7', '<p>K&iacute;nh ch&agrave;o qu&yacute; kh&aacute;ch, t&ocirc;i l&agrave; Phạm Trường Đăng Khoa, hiện đang l&agrave; giảng vi&ecirc;n tại khoa CNTT Đại Học S&agrave;i G&ograve;n, v&agrave; Trung T&acirc;m Đ&agrave;o Tạo CNTT Nhất Nghệ - bộ m&ocirc;n Lập tr&igrave;nh ứng dụng. L&agrave; một Web Developer, t&ocirc;i hiểu được tầm quan trọng của một website đối với qu&yacute; kh&aacute;ch như thế n&agrave;o. V&agrave; c&agrave;ng thấu hiểu c&aacute;c rủi ro khi qu&yacute; kh&aacute;ch t&igrave;m người thiết kế website, đặc biệt l&agrave; c&aacute;c website &quot;gi&aacute; cực rẻ&quot;.</p>\r\n', 'default.png', 1, 1, 1, '', '', '2015-02-15 09:05:44', 0, '2015-02-15 09:05:44', 0),
(10, 4, 'Phương pháp lập trình web php 8', 'phuong-phap-lap-trinh-php-8', '<p>K&iacute;nh ch&agrave;o qu&yacute; kh&aacute;ch, t&ocirc;i l&agrave; Phạm Trường Đăng Khoa, hiện đang l&agrave; giảng vi&ecirc;n tại khoa CNTT Đại Học S&agrave;i G&ograve;n, v&agrave; Trung T&acirc;m Đ&agrave;o Tạo CNTT Nhất Nghệ - bộ m&ocirc;n Lập tr&igrave;nh ứng dụng. L&agrave; một Web Developer, t&ocirc;i hiểu được tầm quan trọng của một website đối với qu&yacute; kh&aacute;ch như thế n&agrave;o. V&agrave; c&agrave;ng thấu hiểu c&aacute;c rủi ro khi qu&yacute; kh&aacute;ch t&igrave;m người thiết kế website, đặc biệt l&agrave; c&aacute;c website &quot;gi&aacute; cực rẻ&quot;.</p>\r\n', 'default.png', 1, 1, 1, '', '', '2015-02-15 09:05:46', 0, '2015-02-15 09:05:46', 0),
(11, 4, 'Phương pháp lập trình web php 9', 'phuong-phap-lap-trinh-php-9', '<p>K&iacute;nh ch&agrave;o qu&yacute; kh&aacute;ch, t&ocirc;i l&agrave; Phạm Trường Đăng Khoa, hiện đang l&agrave; giảng vi&ecirc;n tại khoa CNTT Đại Học S&agrave;i G&ograve;n, v&agrave; Trung T&acirc;m Đ&agrave;o Tạo CNTT Nhất Nghệ - bộ m&ocirc;n Lập tr&igrave;nh ứng dụng. L&agrave; một Web Developer, t&ocirc;i hiểu được tầm quan trọng của một website đối với qu&yacute; kh&aacute;ch như thế n&agrave;o. V&agrave; c&agrave;ng thấu hiểu c&aacute;c rủi ro khi qu&yacute; kh&aacute;ch t&igrave;m người thiết kế website, đặc biệt l&agrave; c&aacute;c website &quot;gi&aacute; cực rẻ&quot;.</p>\r\n', 'default.png', 1, 1, 1, '', '', '2015-02-15 09:06:04', 0, '2015-02-15 09:06:04', 0),
(12, 3, 'Phương pháp lập trình web php 10', 'phuong-phap-lap-trinh-web-php-10', '<p>K&iacute;nh ch&agrave;o qu&yacute; kh&aacute;ch, t&ocirc;i l&agrave; Phạm Trường Đăng Khoa, hiện đang l&agrave; giảng vi&ecirc;n tại khoa CNTT Đại Học S&agrave;i G&ograve;n, v&agrave; Trung T&acirc;m Đ&agrave;o Tạo CNTT Nhất Nghệ - bộ m&ocirc;n Lập tr&igrave;nh ứng dụng. L&agrave; một Web Developer, t&ocirc;i hiểu được tầm quan trọng của một website đối với qu&yacute; kh&aacute;ch như thế n&agrave;o. V&agrave; c&agrave;ng thấu hiểu c&aacute;c rủi ro khi qu&yacute; kh&aacute;ch t&igrave;m người thiết kế website, đặc biệt l&agrave; c&aacute;c website &quot;gi&aacute; cực rẻ&quot;.</p>\r\n', 'default.png', 1, 1, 0, '', '', '2015-02-15 09:05:55', 0, '2016-09-27 13:22:19', 1),
(13, 5, 'Phương pháp lập trình web php 11', 'phuong-phap-lap-trinh-php-11', '<p>K&iacute;nh ch&agrave;o qu&yacute; kh&aacute;ch, t&ocirc;i l&agrave; Phạm Trường Đăng Khoa, hiện đang l&agrave; giảng vi&ecirc;n tại khoa CNTT Đại Học S&agrave;i G&ograve;n, v&agrave; Trung T&acirc;m Đ&agrave;o Tạo CNTT Nhất Nghệ - bộ m&ocirc;n Lập tr&igrave;nh ứng dụng. L&agrave; một Web Developer, t&ocirc;i hiểu được tầm quan trọng của một website đối với qu&yacute; kh&aacute;ch như thế n&agrave;o. V&agrave; c&agrave;ng thấu hiểu c&aacute;c rủi ro khi qu&yacute; kh&aacute;ch t&igrave;m người thiết kế website, đặc biệt l&agrave; c&aacute;c website &quot;gi&aacute; cực rẻ&quot;.</p>\r\n', 'default.png', 1, 1, 1, '', '', '2015-02-15 09:05:53', 0, '2015-02-15 09:05:53', 0),
(14, 5, 'Phương pháp lập trình web php 12', 'phuong-phap-lap-trinh-php-12', '<p>K&iacute;nh ch&agrave;o qu&yacute; kh&aacute;ch, t&ocirc;i l&agrave; Phạm Trường Đăng Khoa, hiện đang l&agrave; giảng vi&ecirc;n tại khoa CNTT Đại Học S&agrave;i G&ograve;n, v&agrave; Trung T&acirc;m Đ&agrave;o Tạo CNTT Nhất Nghệ - bộ m&ocirc;n Lập tr&igrave;nh ứng dụng. L&agrave; một Web Developer, t&ocirc;i hiểu được tầm quan trọng của một website đối với qu&yacute; kh&aacute;ch như thế n&agrave;o. V&agrave; c&agrave;ng thấu hiểu c&aacute;c rủi ro khi qu&yacute; kh&aacute;ch t&igrave;m người thiết kế website, đặc biệt l&agrave; c&aacute;c website &quot;gi&aacute; cực rẻ&quot;.</p>\r\n', 'default.png', 1, 1, 1, '', '', '2015-02-15 09:06:00', 0, '2015-02-15 09:06:00', 0),
(15, 6, 'Phương pháp lập trình web php 13', 'phuong-phap-lap-trinh-php-13', '<p>K&iacute;nh ch&agrave;o qu&yacute; kh&aacute;ch, t&ocirc;i l&agrave; Phạm Trường Đăng Khoa, hiện đang l&agrave; giảng vi&ecirc;n tại khoa CNTT Đại Học S&agrave;i G&ograve;n, v&agrave; Trung T&acirc;m Đ&agrave;o Tạo CNTT Nhất Nghệ - bộ m&ocirc;n Lập tr&igrave;nh ứng dụng. L&agrave; một Web Developer, t&ocirc;i hiểu được tầm quan trọng của một website đối với qu&yacute; kh&aacute;ch như thế n&agrave;o. V&agrave; c&agrave;ng thấu hiểu c&aacute;c rủi ro khi qu&yacute; kh&aacute;ch t&igrave;m người thiết kế website, đặc biệt l&agrave; c&aacute;c website &quot;gi&aacute; cực rẻ&quot;.</p>\r\n', 'default.png', 1, 1, 1, '', '', '2015-02-15 09:06:11', 0, '2015-02-15 09:06:11', 0),
(16, 6, 'Phương pháp lập trình web php 14', 'phuong-phap-lap-trinh-php-13', '<p>K&iacute;nh ch&agrave;o qu&yacute; kh&aacute;ch, t&ocirc;i l&agrave; Phạm Trường Đăng Khoa, hiện đang l&agrave; giảng vi&ecirc;n tại khoa CNTT Đại Học S&agrave;i G&ograve;n, v&agrave; Trung T&acirc;m Đ&agrave;o Tạo CNTT Nhất Nghệ - bộ m&ocirc;n Lập tr&igrave;nh ứng dụng. L&agrave; một Web Developer, t&ocirc;i hiểu được tầm quan trọng của một website đối với qu&yacute; kh&aacute;ch như thế n&agrave;o. V&agrave; c&agrave;ng thấu hiểu c&aacute;c rủi ro khi qu&yacute; kh&aacute;ch t&igrave;m người thiết kế website, đặc biệt l&agrave; c&aacute;c website &quot;gi&aacute; cực rẻ&quot;.</p>\r\n', 'default.png', 1, 1, 1, '', '', '2015-02-15 09:06:14', 0, '2015-02-15 09:06:14', 0),
(17, 5, 'Phương pháp lập trình web php 15', 'phuong-phap-lap-trinh-php-15', '<p>K&iacute;nh ch&agrave;o qu&yacute; kh&aacute;ch, t&ocirc;i l&agrave; Phạm Trường Đăng Khoa, hiện đang l&agrave; giảng vi&ecirc;n tại khoa CNTT Đại Học S&agrave;i G&ograve;n, v&agrave; Trung T&acirc;m Đ&agrave;o Tạo CNTT Nhất Nghệ - bộ m&ocirc;n Lập tr&igrave;nh ứng dụng. L&agrave; một Web Developer, t&ocirc;i hiểu được tầm quan trọng của một website đối với qu&yacute; kh&aacute;ch như thế n&agrave;o. V&agrave; c&agrave;ng thấu hiểu c&aacute;c rủi ro khi qu&yacute; kh&aacute;ch t&igrave;m người thiết kế website, đặc biệt l&agrave; c&aacute;c website &quot;gi&aacute; cực rẻ&quot;.</p>\r\n', 'default.png', 0, 1, 1, '', '', '2015-02-15 09:06:18', 0, '2015-02-15 09:06:18', 0),
(18, 6, 'Phương pháp lập trình web php 16', 'phuong-phap-lap-trinh-php-16', '<p>K&iacute;nh ch&agrave;o qu&yacute; kh&aacute;ch, t&ocirc;i l&agrave; Phạm Trường Đăng Khoa, hiện đang l&agrave; giảng vi&ecirc;n tại khoa CNTT Đại Học S&agrave;i G&ograve;n, v&agrave; Trung T&acirc;m Đ&agrave;o Tạo CNTT Nhất Nghệ - bộ m&ocirc;n Lập tr&igrave;nh ứng dụng. L&agrave; một Web Developer, t&ocirc;i hiểu được tầm quan trọng của một website đối với qu&yacute; kh&aacute;ch như thế n&agrave;o. V&agrave; c&agrave;ng thấu hiểu c&aacute;c rủi ro khi qu&yacute; kh&aacute;ch t&igrave;m người thiết kế website, đặc biệt l&agrave; c&aacute;c website &quot;gi&aacute; cực rẻ&quot;.</p>\r\n', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '2015-02-15 08:36:18', 0),
(19, 6, 'Phương pháp lập trình web php 17', 'phuong-phap-lap-trinh-php-1', '<p>K&iacute;nh ch&agrave;o qu&yacute; kh&aacute;ch, t&ocirc;i l&agrave; Phạm Trường Đăng Khoa, hiện đang l&agrave; giảng vi&ecirc;n tại khoa CNTT Đại Học S&agrave;i G&ograve;n, v&agrave; Trung T&acirc;m Đ&agrave;o Tạo CNTT Nhất Nghệ - bộ m&ocirc;n Lập tr&igrave;nh ứng dụng. L&agrave; một Web Developer, t&ocirc;i hiểu được tầm quan trọng của một website đối với qu&yacute; kh&aacute;ch như thế n&agrave;o. V&agrave; c&agrave;ng thấu hiểu c&aacute;c rủi ro khi qu&yacute; kh&aacute;ch t&igrave;m người thiết kế website, đặc biệt l&agrave; c&aacute;c website &quot;gi&aacute; cực rẻ&quot;.</p>\r\n', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '2015-02-15 08:38:03', 0),
(20, 7, 'Phương pháp lập trình web php 18', 'phuong-phap-lap-trinh-php-1', '<p>K&iacute;nh ch&agrave;o qu&yacute; kh&aacute;ch, t&ocirc;i l&agrave; Phạm Trường Đăng Khoa, hiện đang l&agrave; giảng vi&ecirc;n tại khoa CNTT Đại Học S&agrave;i G&ograve;n, v&agrave; Trung T&acirc;m Đ&agrave;o Tạo CNTT Nhất Nghệ - bộ m&ocirc;n Lập tr&igrave;nh ứng dụng. L&agrave; một Web Developer, t&ocirc;i hiểu được tầm quan trọng của một website đối với qu&yacute; kh&aacute;ch như thế n&agrave;o. V&agrave; c&agrave;ng thấu hiểu c&aacute;c rủi ro khi qu&yacute; kh&aacute;ch t&igrave;m người thiết kế website, đặc biệt l&agrave; c&aacute;c website &quot;gi&aacute; cực rẻ&quot;.</p>\r\n', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '2015-02-15 08:38:04', 0),
(21, 7, 'Phương pháp lập trình web php 19', 'phuong-phap-lap-trinh-php-1', '<p>K&iacute;nh ch&agrave;o qu&yacute; kh&aacute;ch, t&ocirc;i l&agrave; Phạm Trường Đăng Khoa, hiện đang l&agrave; giảng vi&ecirc;n tại khoa CNTT Đại Học S&agrave;i G&ograve;n, v&agrave; Trung T&acirc;m Đ&agrave;o Tạo CNTT Nhất Nghệ - bộ m&ocirc;n Lập tr&igrave;nh ứng dụng. L&agrave; một Web Developer, t&ocirc;i hiểu được tầm quan trọng của một website đối với qu&yacute; kh&aacute;ch như thế n&agrave;o. V&agrave; c&agrave;ng thấu hiểu c&aacute;c rủi ro khi qu&yacute; kh&aacute;ch t&igrave;m người thiết kế website, đặc biệt l&agrave; c&aacute;c website &quot;gi&aacute; cực rẻ&quot;.</p>\r\n', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '2015-02-15 08:38:05', 0),
(22, 7, 'Phương pháp lập trình web php 20', 'phuong-phap-lap-trinh-php-1', '<p>K&iacute;nh ch&agrave;o qu&yacute; kh&aacute;ch, t&ocirc;i l&agrave; Phạm Trường Đăng Khoa, hiện đang l&agrave; giảng vi&ecirc;n tại khoa CNTT Đại Học S&agrave;i G&ograve;n, v&agrave; Trung T&acirc;m Đ&agrave;o Tạo CNTT Nhất Nghệ - bộ m&ocirc;n Lập tr&igrave;nh ứng dụng. L&agrave; một Web Developer, t&ocirc;i hiểu được tầm quan trọng của một website đối với qu&yacute; kh&aacute;ch như thế n&agrave;o. V&agrave; c&agrave;ng thấu hiểu c&aacute;c rủi ro khi qu&yacute; kh&aacute;ch t&igrave;m người thiết kế website, đặc biệt l&agrave; c&aacute;c website &quot;gi&aacute; cực rẻ&quot;.</p>\r\n', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '2015-02-15 08:38:05', 0),
(23, 7, 'Phương pháp lập trình web php 21', 'phuong-phap-lap-trinh-php-1', '<p>K&iacute;nh ch&agrave;o qu&yacute; kh&aacute;ch, t&ocirc;i l&agrave; Phạm Trường Đăng Khoa, hiện đang l&agrave; giảng vi&ecirc;n tại khoa CNTT Đại Học S&agrave;i G&ograve;n, v&agrave; Trung T&acirc;m Đ&agrave;o Tạo CNTT Nhất Nghệ - bộ m&ocirc;n Lập tr&igrave;nh ứng dụng. L&agrave; một Web Developer, t&ocirc;i hiểu được tầm quan trọng của một website đối với qu&yacute; kh&aacute;ch như thế n&agrave;o. V&agrave; c&agrave;ng thấu hiểu c&aacute;c rủi ro khi qu&yacute; kh&aacute;ch t&igrave;m người thiết kế website, đặc biệt l&agrave; c&aacute;c website &quot;gi&aacute; cực rẻ&quot;.</p>\r\n', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '2015-02-15 08:38:06', 0),
(24, 7, 'Phương pháp lập trình web php 1', 'phuong-phap-lap-trinh-php-1', '<p>K&iacute;nh ch&agrave;o qu&yacute; kh&aacute;ch, t&ocirc;i l&agrave; Phạm Trường Đăng Khoa, hiện đang l&agrave; giảng vi&ecirc;n tại khoa CNTT Đại Học S&agrave;i G&ograve;n, v&agrave; Trung T&acirc;m Đ&agrave;o Tạo CNTT Nhất Nghệ - bộ m&ocirc;n Lập tr&igrave;nh ứng dụng. L&agrave; một Web Developer, t&ocirc;i hiểu được tầm quan trọng của một website đối với qu&yacute; kh&aacute;ch như thế n&agrave;o. V&agrave; c&agrave;ng thấu hiểu c&aacute;c rủi ro khi qu&yacute; kh&aacute;ch t&igrave;m người thiết kế website, đặc biệt l&agrave; c&aacute;c website &quot;gi&aacute; cực rẻ&quot;.</p>\r\n', 'default.png', 1, 0, 1, '', '', '2015-02-15 09:06:55', 0, '2015-02-15 09:06:55', 0),
(25, 7, 'Phương pháp lập trình web php 1', 'phuong-phap-lap-trinh-php-1', '<p>K&iacute;nh ch&agrave;o qu&yacute; kh&aacute;ch, t&ocirc;i l&agrave; Phạm Trường Đăng Khoa, hiện đang l&agrave; giảng vi&ecirc;n tại khoa CNTT Đại Học S&agrave;i G&ograve;n, v&agrave; Trung T&acirc;m Đ&agrave;o Tạo CNTT Nhất Nghệ - bộ m&ocirc;n Lập tr&igrave;nh ứng dụng. L&agrave; một Web Developer, t&ocirc;i hiểu được tầm quan trọng của một website đối với qu&yacute; kh&aacute;ch như thế n&agrave;o. V&agrave; c&agrave;ng thấu hiểu c&aacute;c rủi ro khi qu&yacute; kh&aacute;ch t&igrave;m người thiết kế website, đặc biệt l&agrave; c&aacute;c website &quot;gi&aacute; cực rẻ&quot;.</p>\r\n', 'default.png', 1, 0, 1, '', '', '2015-02-15 09:06:52', 0, '2015-02-15 09:06:52', 0),
(26, 7, 'Phương pháp lập trình web php 1', 'phuong-phap-lap-trinh-php-1', '<p>K&iacute;nh ch&agrave;o qu&yacute; kh&aacute;ch, t&ocirc;i l&agrave; Phạm Trường Đăng Khoa, hiện đang l&agrave; giảng vi&ecirc;n tại khoa CNTT Đại Học S&agrave;i G&ograve;n, v&agrave; Trung T&acirc;m Đ&agrave;o Tạo CNTT Nhất Nghệ - bộ m&ocirc;n Lập tr&igrave;nh ứng dụng. L&agrave; một Web Developer, t&ocirc;i hiểu được tầm quan trọng của một website đối với qu&yacute; kh&aacute;ch như thế n&agrave;o. V&agrave; c&agrave;ng thấu hiểu c&aacute;c rủi ro khi qu&yacute; kh&aacute;ch t&igrave;m người thiết kế website, đặc biệt l&agrave; c&aacute;c website &quot;gi&aacute; cực rẻ&quot;.</p>\r\n', 'default.png', 1, 0, 1, '', '', '2015-02-15 09:06:48', 0, '2015-02-15 09:06:48', 0),
(27, 7, 'Phương pháp lập trình web php 27', 'phuong-phap-lap-trinh-php-1', '<p>K&iacute;nh ch&agrave;o qu&yacute; kh&aacute;ch, t&ocirc;i l&agrave; Phạm Trường Đăng Khoa, hiện đang l&agrave; giảng vi&ecirc;n tại khoa CNTT Đại Học S&agrave;i G&ograve;n, v&agrave; Trung T&acirc;m Đ&agrave;o Tạo CNTT Nhất Nghệ - bộ m&ocirc;n Lập tr&igrave;nh ứng dụng. L&agrave; một Web Developer, t&ocirc;i hiểu được tầm quan trọng của một website đối với qu&yacute; kh&aacute;ch như thế n&agrave;o. V&agrave; c&agrave;ng thấu hiểu c&aacute;c rủi ro khi qu&yacute; kh&aacute;ch t&igrave;m người thiết kế website, đặc biệt l&agrave; c&aacute;c website &quot;gi&aacute; cực rẻ&quot;.</p>\r\n', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '2015-02-15 08:52:13', 0),
(28, 8, 'Phương pháp lập trình web php 28', 'phuong-phap-lap-trinh-php-1', '<p>K&iacute;nh ch&agrave;o qu&yacute; kh&aacute;ch, t&ocirc;i l&agrave; Phạm Trường Đăng Khoa, hiện đang l&agrave; giảng vi&ecirc;n tại khoa CNTT Đại Học S&agrave;i G&ograve;n, v&agrave; Trung T&acirc;m Đ&agrave;o Tạo CNTT Nhất Nghệ - bộ m&ocirc;n Lập tr&igrave;nh ứng dụng. L&agrave; một Web Developer, t&ocirc;i hiểu được tầm quan trọng của một website đối với qu&yacute; kh&aacute;ch như thế n&agrave;o. V&agrave; c&agrave;ng thấu hiểu c&aacute;c rủi ro khi qu&yacute; kh&aacute;ch t&igrave;m người thiết kế website, đặc biệt l&agrave; c&aacute;c website &quot;gi&aacute; cực rẻ&quot;.</p>\r\n', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '2015-02-15 09:01:29', 0),
(29, 8, 'Phương pháp lập trình web php 1', 'phuong-phap-lap-trinh-php-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(30, 8, 'Phương pháp lập trình web php 1', 'phuong-phap-lap-trinh-php-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(31, 8, 'Phương pháp lập trình web php 1', 'phuong-phap-lap-trinh-php-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(32, 8, 'Phương pháp lập trình web php 1', 'phuong-phap-lap-trinh-php-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(33, 8, 'Phương pháp lập trình web php 1', 'phuong-phap-lap-trinh-php-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(34, 8, 'Phương pháp lập trình web php 1', 'phuong-phap-lap-trinh-php-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(35, 8, 'Phương pháp lập trình web php 1', 'phuong-phap-lap-trinh-php-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(37, 8, 'Phương pháp lập trình web php 1', 'phuong-phap-lap-trinh-php-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(38, 8, 'Phương pháp lập trình web php 1', 'phuong-phap-lap-trinh-php-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(39, 8, 'Phương pháp lập trình web php 1', 'phuong-phap-lap-trinh-php-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(40, 8, 'Phương pháp lập trình web php 40', 'phuong-phap-lap-trinh-php-1', '<p>K&iacute;nh ch&agrave;o qu&yacute; kh&aacute;ch, t&ocirc;i l&agrave; Phạm Trường Đăng Khoa, hiện đang l&agrave; giảng vi&ecirc;n tại khoa CNTT Đại Học S&agrave;i G&ograve;n, v&agrave; Trung T&acirc;m Đ&agrave;o Tạo CNTT Nhất Nghệ - bộ m&ocirc;n Lập tr&igrave;nh ứng dụng. L&agrave; một Web Developer, t&ocirc;i hiểu được tầm quan trọng của một website đối với qu&yacute; kh&aacute;ch như thế n&agrave;o. V&agrave; c&agrave;ng thấu hiểu c&aacute;c rủi ro khi qu&yacute; kh&aacute;ch t&igrave;m người thiết kế website, đặc biệt l&agrave; c&aacute;c website &quot;gi&aacute; cực rẻ&quot;.</p>\r\n', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '2015-02-15 09:02:30', 0),
(41, 8, 'Phương pháp lập trình web php 41', 'phuong-phap-lap-trinh-php-1', '<p>K&iacute;nh ch&agrave;o qu&yacute; kh&aacute;ch, t&ocirc;i l&agrave; Phạm Trường Đăng Khoa, hiện đang l&agrave; giảng vi&ecirc;n tại khoa CNTT Đại Học S&agrave;i G&ograve;n, v&agrave; Trung T&acirc;m Đ&agrave;o Tạo CNTT Nhất Nghệ - bộ m&ocirc;n Lập tr&igrave;nh ứng dụng. L&agrave; một Web Developer, t&ocirc;i hiểu được tầm quan trọng của một website đối với qu&yacute; kh&aacute;ch như thế n&agrave;o. V&agrave; c&agrave;ng thấu hiểu c&aacute;c rủi ro khi qu&yacute; kh&aacute;ch t&igrave;m người thiết kế website, đặc biệt l&agrave; c&aacute;c website &quot;gi&aacute; cực rẻ&quot;.</p>\r\n', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '2015-02-15 09:02:39', 0),
(42, 9, 'Phương pháp lập trình web php 1', 'phuong-phap-lap-trinh-php-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(43, 9, 'Phương pháp lập trình web php 1', 'phuong-phap-lap-trinh-php-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(44, 9, 'Phương pháp lập trình web php 1', 'phuong-phap-lap-trinh-php-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(45, 9, 'Phương pháp lập trình web php 1', 'phuong-phap-lap-trinh-php-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(46, 9, 'Phương pháp lập trình web php 1', 'phuong-phap-lap-trinh-php-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(47, 9, 'Phương pháp lập trình web php 1', 'phuong-phap-lap-trinh-php-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(48, 9, 'Phương pháp lập trình web php 1', 'phuong-phap-lap-trinh-php-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(49, 9, 'Phương pháp lập trình web php 1', 'phuong-phap-lap-trinh-php-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(50, 9, 'Phương pháp lập trình web php 1', 'phuong-phap-lap-trinh-php-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(51, 9, 'Phương pháp lập trình web php 1', 'phuong-phap-lap-trinh-php-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(52, 9, 'Phương pháp lập trình web php 1', 'phuong-phap-lap-trinh-php-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(53, 9, 'Phương pháp lập trình web php 1', 'phuong-phap-lap-trinh-php-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(54, 10, 'Phương pháp lập trình web php 1', 'phuong-phap-lap-trinh-php-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(55, 10, 'Phương pháp lập trình web php 1', 'phuong-phap-lap-trinh-php-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(56, 10, 'Phương pháp lập trình web php 1', 'phuong-phap-lap-trinh-php-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(57, 10, 'Phương pháp lập trình web php 1', 'phuong-phap-lap-trinh-php-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(58, 10, 'Phương pháp lập trình web php 1', 'phuong-phap-lap-trinh-php-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(59, 10, 'Phương pháp lập trình web asp 59', 'phuong-phap-lap-trinh-asp-1', '<p>K&iacute;nh ch&agrave;o qu&yacute; kh&aacute;ch, t&ocirc;i l&agrave; Phạm Trường Đăng Khoa, hiện đang l&agrave; giảng vi&ecirc;n tại khoa CNTT Đại Học S&agrave;i G&ograve;n, v&agrave; Trung T&acirc;m Đ&agrave;o Tạo CNTT Nhất Nghệ - bộ m&ocirc;n Lập tr&igrave;nh ứng dụng. L&agrave; một Web Developer, t&ocirc;i hiểu được tầm quan trọng của một website đối với qu&yacute; kh&aacute;ch như thế n&agrave;o. V&agrave; c&agrave;ng thấu hiểu c&aacute;c rủi ro khi qu&yacute; kh&aacute;ch t&igrave;m người thiết kế website, đặc biệt l&agrave; c&aacute;c website &quot;gi&aacute; cực rẻ&quot;.</p>\r\n', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '2015-02-15 09:03:11', 0),
(60, 10, 'Phương pháp lập trình web asp 2', 'phuong-phap-lap-trinh-asp-1', '<p>K&iacute;nh ch&agrave;o qu&yacute; kh&aacute;ch, t&ocirc;i l&agrave; Phạm Trường Đăng Khoa, hiện đang l&agrave; giảng vi&ecirc;n tại khoa CNTT Đại Học S&agrave;i G&ograve;n, v&agrave; Trung T&acirc;m Đ&agrave;o Tạo CNTT Nhất Nghệ - bộ m&ocirc;n Lập tr&igrave;nh ứng dụng. L&agrave; một Web Developer, t&ocirc;i hiểu được tầm quan trọng của một website đối với qu&yacute; kh&aacute;ch như thế n&agrave;o. V&agrave; c&agrave;ng thấu hiểu c&aacute;c rủi ro khi qu&yacute; kh&aacute;ch t&igrave;m người thiết kế website, đặc biệt l&agrave; c&aacute;c website &quot;gi&aacute; cực rẻ&quot;.</p>\r\n', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '2015-02-15 08:44:07', 0),
(61, 10, 'Phương pháp lập trình web asp 1', 'phuong-phap-lap-trinh-asp-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(62, 10, 'Phương pháp lập trình web asp 1', 'phuong-phap-lap-trinh-asp-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(63, 10, 'Phương pháp lập trình web asp 1', 'phuong-phap-lap-trinh-asp-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(64, 10, 'Phương pháp lập trình web asp 1', 'phuong-phap-lap-trinh-asp-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(65, 10, 'Phương pháp lập trình web asp 1', 'phuong-phap-lap-trinh-asp-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(66, 10, 'Phương pháp lập trình web asp 1', 'phuong-phap-lap-trinh-asp-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(67, 10, 'Phương pháp lập trình web asp 1', 'phuong-phap-lap-trinh-asp-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(68, 11, 'Phương pháp lập trình web asp 1', 'phuong-phap-lap-trinh-asp-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(69, 11, 'Phương pháp lập trình web asp 1', 'phuong-phap-lap-trinh-asp-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(70, 11, 'Phương pháp lập trình web asp 1', 'phuong-phap-lap-trinh-asp-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(71, 11, 'Phương pháp lập trình web asp 1', 'phuong-phap-lap-trinh-asp-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(72, 11, 'Phương pháp lập trình web asp 1', 'phuong-phap-lap-trinh-asp-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(73, 11, 'Phương pháp lập trình web asp 1', 'phuong-phap-lap-trinh-asp-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(74, 11, 'Phương pháp lập trình web asp 1', 'phuong-phap-lap-trinh-asp-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(75, 11, 'Phương pháp lập trình web asp 1', 'phuong-phap-lap-trinh-asp-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(76, 11, 'Phương pháp lập trình web asp 1', 'phuong-phap-lap-trinh-asp-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(77, 11, 'Phương pháp lập trình web asp 1', 'phuong-phap-lap-trinh-asp-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(78, 11, 'Phương pháp lập trình web asp 1', 'phuong-phap-lap-trinh-asp-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `db_content` (`id`, `catid`, `title`, `alias`, `detail`, `img`, `status`, `trash`, `access`, `metakey`, `metadesc`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(79, 11, 'Phương pháp lập trình web asp 1', 'phuong-phap-lap-trinh-asp-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(80, 11, 'Phương pháp lập trình web asp 1', 'phuong-phap-lap-trinh-asp-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(81, 11, 'Phương pháp lập trình web asp 1', 'phuong-phap-lap-trinh-asp-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(82, 11, 'Phương pháp lập trình web asp 1', 'phuong-phap-lap-trinh-asp-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(83, 11, 'Phương pháp lập trình web asp 1', 'phuong-phap-lap-trinh-asp-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(84, 11, 'Phương pháp lập trình web asp 1', 'phuong-phap-lap-trinh-asp-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(85, 11, 'Phương pháp lập trình web asp 1', 'phuong-phap-lap-trinh-asp-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(86, 12, 'Phương pháp lập trình web asp 1', 'phuong-phap-lap-trinh-asp-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(87, 12, 'Phương pháp lập trình web asp 1', 'phuong-phap-lap-trinh-asp-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(88, 12, 'Phương pháp lập trình web asp 1', 'phuong-phap-lap-trinh-asp-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(89, 12, 'Phương pháp lập trình web asp 1', 'phuong-phap-lap-trinh-asp-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(90, 12, 'Phương pháp lập trình web asp 1', 'phuong-phap-lap-trinh-asp-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(91, 12, 'Phương pháp lập trình web asp 1', 'phuong-phap-lap-trinh-asp-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(92, 12, 'Phương pháp lập trình web asp 1', 'phuong-phap-lap-trinh-asp-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(93, 12, 'Phương pháp lập trình web asp 1', 'phuong-phap-lap-trinh-asp-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(94, 12, 'Phương pháp lập trình web asp 1', 'phuong-phap-lap-trinh-asp-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(95, 12, 'Phương pháp lập trình web asp 1', 'phuong-phap-lap-trinh-asp-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(96, 12, 'Phương pháp lập trình web asp 1', 'phuong-phap-lap-trinh-asp-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(97, 12, 'Phương pháp lập trình web asp 1', 'phuong-phap-lap-trinh-asp-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(98, 12, 'Phương pháp lập trình web asp 1', 'phuong-phap-lap-trinh-asp-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(99, 12, 'Phương pháp lập trình web asp 1', 'phuong-phap-lap-trinh-asp-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(100, 12, 'Phương pháp lập trình web asp 1', 'phuong-phap-lap-trinh-asp-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(101, 12, 'Phương pháp lập trình web asp 1', 'phuong-phap-lap-trinh-asp-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(102, 12, 'Phương pháp lập trình web asp 1', 'phuong-phap-lap-trinh-asp-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(103, 12, 'Phương pháp lập trình web asp 1', 'phuong-phap-lap-trinh-asp-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(104, 4, 'Phương pháp lập trình web asp 1', 'phuong-phap-lap-trinh-asp-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(105, 4, 'Phương pháp lập trình web asp 1', 'phuong-phap-lap-trinh-asp-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(106, 4, 'Phương pháp lập trình web asp 1', 'phuong-phap-lap-trinh-asp-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(107, 6, 'Phương pháp lập trình web asp 1', 'phuong-phap-lap-trinh-asp-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(108, 6, 'Phương pháp lập trình web asp 1', 'phuong-phap-lap-trinh-asp-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(109, 6, 'Phương pháp lập trình web asp 1', 'phuong-phap-lap-trinh-asp-1', 'Kính chào quý khách, tôi là Phạm Trường Đăng Khoa, hiện đang là giảng viên tại khoa CNTT Đại Học Sài Gòn, và Trung Tâm Đào Tạo CNTT Nhất Nghệ - bộ môn Lập trình ứng dụng.\r\n\r\nLà một Web Developer, tôi hiểu được tầm quan trọng của một website đối với quý khách như thế nào. Và càng thấu hiểu các rủi ro khi quý khách tìm người thiết kế website, đặc biệt là các website "giá cực rẻ".', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(110, 6, 'Phương pháp lập trình web asp 110', 'phuong-phap-lap-trinh-asp-1', '<p>K&iacute;nh ch&agrave;o qu&yacute; kh&aacute;ch, t&ocirc;i l&agrave; Phạm Trường Đăng Khoa, hiện đang l&agrave; giảng vi&ecirc;n tại khoa CNTT Đại Học S&agrave;i G&ograve;n, v&agrave; Trung T&acirc;m Đ&agrave;o Tạo CNTT Nhất Nghệ - bộ m&ocirc;n Lập tr&igrave;nh ứng dụng. L&agrave; một Web Developer, t&ocirc;i hiểu được tầm quan trọng của một website đối với qu&yacute; kh&aacute;ch như thế n&agrave;o. V&agrave; c&agrave;ng thấu hiểu c&aacute;c rủi ro khi qu&yacute; kh&aacute;ch t&igrave;m người thiết kế website, đặc biệt l&agrave; c&aacute;c website &quot;gi&aacute; cực rẻ&quot;.</p>\r\n', 'default.png', 1, 1, 1, '', '', '0000-00-00 00:00:00', 0, '2015-02-15 08:59:58', 0),
(111, 4, 'phuong-phap-lap-trinh-php-111', 'phuong-phap-lap-trinh-php-111', '<p>The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.</p>\r\n', '92.JPG', 1, 1, 0, '', '', '2015-10-26 16:19:00', 0, '2016-09-27 13:23:47', 1),
(112, 4, 'phuong-phap-lap-trinh-php-112', 'phuong-phap-lap-trinh-php-112', '<p>The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.</p>\r\n', '91.JPG', 1, 1, 0, '', '', '2015-10-26 16:35:00', 0, '2016-09-27 13:23:30', 1),
(113, 4, 'phuong-phap-lap-trinh-php-2fdfd', 'phuong-phap-lap-trinh-php-2fdfd', '<p>The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.The Ti&ecirc;u đề field is required.</p>\r\n', '14009988_618403198328189_399477260_n.jpg', 1, 1, 1, '', '', '2015-10-26 16:35:34', 0, '2016-08-19 18:08:43', 1),
(114, 4, 'Phương pháp lập trình web php 3432432', 'phuong-phap-lap-trinh-web-php-3432432', '<p>K&iacute;nh ch&agrave;o qu&yacute; kh&aacute;ch, t&ocirc;i l&agrave; Phạm Trường Đăng Khoa, hiện đang l&agrave; giảng vi&ecirc;n tại khoa CNTT Đại Học S&agrave;i G&ograve;n, v&agrave; Trung T&acirc;m Đ&agrave;o Tạo CNTT Nhất Nghệ - bộ m&ocirc;n Lập tr&igrave;nh ứng dụng. L&agrave; một Web Developer, t&ocirc;i hiểu được tầm quan trọng của một website đối với qu&yacute; kh&aacute;ch như thế n&agrave;o. V&agrave; c&agrave;ng thấu hiểu c&aacute;c rủi ro khi qu&yacute; kh&aacute;ch t&igrave;m người thiết kế website, đặc biệt l&agrave; c&aacute;c website &quot;gi&aacute; cực rẻ&quot;.</p>\r\n', '2552e8beb5da64f4d8e78184c2fb2d15_(1).jpg', 1, 1, 1, '', '', '2015-10-26 17:20:10', 0, '2016-08-19 18:05:13', 1),
(119, 3, 'Hotta', 'hotta', '<p>Website lớn chuy&ecirc;n về xu hướng thời trang mới nhất. Ch&uacute;ng t&ocirc;i ra đời c&aacute;ch đ&acirc;y hơn 5 năm về trước v&agrave; đ&atilde; c&oacute; những uy t&iacute;n nhất định trong thị trường thời trang tại Việt Nam.</p>\r\n', '551.jpg', 1, 1, 1, '', '', '2016-12-18 11:14:48', 1, '2016-12-18 11:14:48', 1),
(120, 1, 'Hotta', 'hotta', '<p>hotta xinh đẹphotta xinh đẹphotta xinh đẹphotta xinh đẹphotta xinh đẹphotta xinh đẹphotta xinh đẹphotta xinh đẹphotta xinh đẹp</p>\r\n', 'images.jpg', 1, 1, 1, '', '', '2016-12-22 02:07:41', 1, '2016-12-22 02:07:41', 1);

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
(1, 'Huỳnh Thị Trúc Phương', 'admin', 'admin', 'huynhthitrucphuong69@gmail.com', 1, '0987654321', 'phuong.png', 1, 1, 1, '2016-08-19 07:21:36', 0, '0000-00-00 00:00:00', 0),
(2, 'Huỳnh Thị Trúc Phương', 'admin', '123', 'huynhthitrucphuong69@gmail.com', 1, '0987654321', 'phuong.png', 1, 1, 1, '2016-08-19 07:21:36', 0, '0000-00-00 00:00:00', 0),
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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;
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
