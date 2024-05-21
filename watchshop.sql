-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 21, 2024 lúc 05:30 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `watchshop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `addresscustomer`
--

CREATE TABLE `addresscustomer` (
  `idAddress` int(10) UNSIGNED NOT NULL,
  `idCustomer` int(11) UNSIGNED NOT NULL,
  `Address` varchar(255) NOT NULL,
  `PhoneNumber` varchar(20) NOT NULL,
  `CustomerName` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `addresscustomer`
--

INSERT INTO `addresscustomer` (`idAddress`, `idCustomer`, `Address`, `PhoneNumber`, `CustomerName`, `created_at`, `updated_at`) VALUES
(6, 5, '330 XXX, XXX XXXX, XXXX', '0924818410', 'Customer', '2023-08-07 10:51:25', '2023-08-07 10:51:25'),
(7, 5, 'XXXXXXXXXXXXXXXXXXXXXXx', '03920391022', '2323123', '2023-08-07 12:29:56', '2023-08-07 12:29:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `idAdmin` int(10) UNSIGNED NOT NULL,
  `AdminName` varchar(50) NOT NULL,
  `AdminUser` varchar(50) NOT NULL,
  `AdminPass` varchar(255) NOT NULL,
  `Position` varchar(50) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `NumberPhone` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Avatar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`idAdmin`, `AdminName`, `AdminUser`, `AdminPass`, `Position`, `Address`, `NumberPhone`, `Email`, `Avatar`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'a66abb5684c45962d887564f08346e8d', 'Quản lý', 'Việt Nam', '09440224114', 'project@gmail.com', 'a547.png', NULL, '2023-09-05 05:38:35'),
(2, 'nv123', 'nv123', 'a66abb5684c45962d887564f08346e8d', 'Nhân Viên', 'HN,Viet Nam', '0924345678', 'a@gmail.com', NULL, '2022-07-31 10:15:28', '2022-07-31 10:15:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attribute`
--

CREATE TABLE `attribute` (
  `idAttribute` int(10) UNSIGNED NOT NULL,
  `AttributeName` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `attribute`
--

INSERT INTO `attribute` (`idAttribute`, `AttributeName`, `created_at`, `updated_at`) VALUES
(1, 'Size', '2022-07-30 09:51:59', '2022-07-30 09:51:59'),
(2, 'Màu sắc', '2022-07-30 09:52:01', '2022-07-30 09:52:01'),
(3, 'Màu - Size', '2022-07-30 09:52:04', '2022-07-30 09:52:04'),
(4, 'Cân Nặng', '2022-08-28 08:10:48', '2022-08-28 08:10:48'),
(5, 'test', '2024-05-20 18:11:15', '2024-05-20 18:11:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attribute_value`
--

CREATE TABLE `attribute_value` (
  `idAttrValue` int(10) UNSIGNED NOT NULL,
  `idAttribute` int(11) UNSIGNED NOT NULL,
  `AttrValName` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `attribute_value`
--

INSERT INTO `attribute_value` (`idAttrValue`, `idAttribute`, `AttrValName`, `created_at`, `updated_at`) VALUES
(4, 1, '8-9Y', '2022-07-30 09:54:34', '2022-07-30 09:54:34'),
(5, 1, '10-11Y', '2022-07-30 09:54:44', '2022-07-30 09:54:44'),
(6, 1, '12Y', '2022-07-30 09:54:48', '2022-07-30 09:54:48'),
(7, 3, 'Cam - S', '2022-07-30 09:57:11', '2022-07-30 09:57:35'),
(8, 3, 'Cam - M', '2022-07-30 09:57:50', '2022-07-30 09:57:50'),
(9, 3, 'Nâu - S', '2022-07-30 09:58:02', '2022-07-30 09:58:02'),
(10, 3, 'Nâu - M', '2022-07-30 09:58:08', '2022-07-30 09:58:08'),
(11, 1, 'NOSIZE', '2022-07-30 11:55:03', '2022-07-30 11:55:03'),
(12, 4, '11-12kg', '2022-08-28 08:11:47', '2022-08-28 08:11:47'),
(13, 4, '14-16kg', '2022-08-28 08:11:57', '2022-08-28 08:11:57'),
(14, 4, '19-22kg', '2022-08-28 08:12:16', '2022-08-28 08:12:16'),
(15, 4, '23-25kg', '2022-08-28 08:12:26', '2022-08-28 08:12:26'),
(16, 2, 'Kem nơ', '2022-10-04 14:36:52', '2022-10-04 14:36:52'),
(17, 2, 'Kem hoa', '2022-10-04 14:37:00', '2022-10-04 14:37:00'),
(18, 2, 'Đen', '2022-10-04 14:46:57', '2022-10-04 14:46:57'),
(19, 2, 'Be', '2022-10-04 14:47:02', '2022-10-04 14:47:02'),
(20, 1, '6-7Y', '2022-10-04 14:58:07', '2022-10-04 14:58:07'),
(21, 1, '5-6Y', '2022-10-04 14:58:41', '2022-10-04 14:58:41'),
(22, 1, '26', '2022-11-14 10:12:20', '2022-11-14 10:12:20'),
(23, 1, '27', '2022-11-14 10:12:24', '2022-11-14 10:12:24'),
(24, 1, '29', '2022-11-14 10:12:30', '2022-11-14 10:12:30'),
(25, 1, '30', '2022-11-14 10:12:34', '2022-11-14 10:12:34'),
(26, 1, '31', '2022-11-14 10:12:38', '2022-11-14 10:12:38'),
(27, 1, '32', '2022-11-14 10:12:42', '2022-11-14 10:12:42'),
(28, 1, '28', '2022-11-14 10:13:12', '2022-11-14 10:13:12'),
(29, 2, 'Vàng', '2022-11-14 10:19:24', '2022-11-14 10:19:24'),
(30, 2, 'Xanh Lam', '2022-11-14 10:19:30', '2022-11-14 10:19:30'),
(31, 2, 'Hồng', '2022-11-14 10:19:37', '2022-11-14 10:19:37'),
(32, 2, 'Đỏ', '2022-11-20 12:26:52', '2022-11-20 12:26:52'),
(33, 2, 'Trắng', '2022-11-20 12:27:00', '2022-11-20 12:27:00'),
(34, 1, 'test', '2024-05-20 18:10:55', '2024-05-20 18:10:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `idBill` int(10) UNSIGNED NOT NULL,
  `idCustomer` int(11) UNSIGNED NOT NULL,
  `Payment` varchar(50) NOT NULL DEFAULT 'cash',
  `Voucher` varchar(50) DEFAULT NULL,
  `Address` varchar(255) NOT NULL,
  `PhoneNumber` varchar(20) NOT NULL,
  `CustomerName` varchar(50) NOT NULL,
  `ReceiveDate` datetime DEFAULT NULL,
  `Status` tinyint(4) NOT NULL DEFAULT 0,
  `TotalBill` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bill`
--

INSERT INTO `bill` (`idBill`, `idCustomer`, `Payment`, `Voucher`, `Address`, `PhoneNumber`, `CustomerName`, `ReceiveDate`, `Status`, `TotalBill`, `created_at`, `updated_at`) VALUES
(22, 5, 'vnpay', '', '330 XXX, XXX XXXX, XXXX', '0924818410', 'Customer', '2024-05-20 19:58:42', 2, 2164000, '2023-08-07 11:27:14', '2024-05-20 12:58:42'),
(23, 5, 'cash', NULL, 'XXXXXXXXXXXXXXXXXXXXXXx', '03920391022', '2323123', NULL, 0, 1195000, '2023-08-07 12:30:36', '2023-08-07 12:30:36'),
(24, 5, 'cash', NULL, 'XXXXXXXXXXXXXXXXXXXXXXx', '03920391022', '2323123', NULL, 0, 2700000, '2024-05-19 08:25:41', '2024-05-19 08:25:41'),
(25, 5, 'cash', NULL, 'XXXXXXXXXXXXXXXXXXXXXXx', '03920391022', '2323123', NULL, 0, 3400000, '2024-05-20 12:56:39', '2024-05-20 12:56:39'),
(26, 5, 'cash', NULL, 'XXXXXXXXXXXXXXXXXXXXXXx', '03920391022', '2323123', NULL, 1, 3400000, '2024-05-20 12:57:06', '2024-05-20 12:58:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `billhistory`
--

CREATE TABLE `billhistory` (
  `idBill` int(11) UNSIGNED NOT NULL,
  `AdminName` varchar(50) NOT NULL,
  `Status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `billhistory`
--

INSERT INTO `billhistory` (`idBill`, `AdminName`, `Status`, `created_at`, `updated_at`) VALUES
(22, 'System', 1, '2023-08-07 11:27:14', '2023-08-07 11:27:14'),
(26, 'admin', 1, '2024-05-20 12:58:06', '2024-05-20 12:58:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `billinfo`
--

CREATE TABLE `billinfo` (
  `idBill` int(11) UNSIGNED NOT NULL,
  `idProduct` int(11) UNSIGNED NOT NULL,
  `AttributeProduct` varchar(50) NOT NULL,
  `Price` int(11) NOT NULL,
  `QuantityBuy` int(11) NOT NULL,
  `idProAttr` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `billinfo`
--

INSERT INTO `billinfo` (`idBill`, `idProduct`, `AttributeProduct`, `Price`, `QuantityBuy`, `idProAttr`, `created_at`, `updated_at`) VALUES
(22, 3, 'Size: 8-9Y', 356000, 3, 14, '2023-08-07 11:27:14', '2023-08-07 11:27:14'),
(24, 2, 'Màu - Size: Cam - S', 2700000, 1, 214, '2024-05-19 08:25:41', '2024-05-19 08:25:41'),
(25, 3, 'Size: 8-9Y', 3400000, 1, 221, '2024-05-20 12:56:39', '2024-05-20 12:56:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog`
--

CREATE TABLE `blog` (
  `idBlog` int(10) UNSIGNED NOT NULL,
  `BlogContent` longtext NOT NULL,
  `Status` tinyint(4) NOT NULL DEFAULT 1,
  `BlogDesc` text NOT NULL,
  `BlogTitle` varchar(255) NOT NULL,
  `BlogSlug` varchar(255) NOT NULL,
  `BlogImage` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `blog`
--

INSERT INTO `blog` (`idBlog`, `BlogContent`, `Status`, `BlogDesc`, `BlogTitle`, `BlogSlug`, `BlogImage`, `created_at`, `updated_at`) VALUES
(5, '<p><strong>Huawei Watch GT4 (từ 5,5 triệu đồng)</strong></p>\r\n\r\n<p>Đồng hồ của Huawei c&oacute; thiết kế mới ho&agrave;n to&agrave;n so với thế hệ trước, với hai tuỳ chọn k&iacute;ch thước 46 v&agrave; 41 mm. Sản phẩm ngo&agrave;i đo sức khoẻ giống thế hệ trước như nhịp tim, nhiệt độ da, giấc ngủ, mức độ căng thẳng c&ograve;n c&oacute; th&ecirc;m t&iacute;nh năng Stay Fit theo d&otilde;i lượng calo nạp v&agrave; ti&ecirc;u thụ trong ng&agrave;y. Model n&agrave;y hỗ trợ hơn 100 chế độ luyện tập, hơn 200 kho&aacute; luyện tập miễn ph&iacute; tr&ecirc;n ứng dụng Huawei Health.</p>\r\n\r\n<p>Đồng hồ chạy hệ điều h&agrave;nh HarmonyOS, tương th&iacute;ch Android 8.0 hoặc iOS 13.0 trở l&ecirc;n. Watch GT4 bản 46 mm c&oacute; thể sử dụng li&ecirc;n tục trong 14 ng&agrave;y. Nếu mở GPS li&ecirc;n tục, model n&agrave;y hoạt động được khoảng 30 tiếng. Phi&ecirc;n bản 41 mm cho thời gian sử dụng li&ecirc;n tục 7 ng&agrave;y.</p>\r\n\r\n<p><img alt=\"\" src=\"https://i1-sohoa.vnecdn.net/2023/12/24/DSC4103-1697997492-1703401095.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=wGjlp2LNxT88gP1e6uIBow\" /></p>\r\n\r\n<p><strong>Samsung Galaxy Watch6 (từ 6,9 triệu đồng)</strong></p>\r\n\r\n<p>Đồng hồ mới của Samsung c&oacute; hai phi&ecirc;n bản với cấu h&igrave;nh tương đương nhưng kh&aacute;c biệt ở thiết kế. Galaxy Watch6 ti&ecirc;u chuẩn c&oacute; k&iacute;ch cỡ 40 v&agrave; 44 mm, c&ograve;n Watch 6 Classic lớn hơn với 43 v&agrave; 47 mm.</p>\r\n\r\n<p>So với thế hệ trước, smartwatch mới của samsung c&oacute; viền m&agrave;n h&igrave;nh mỏng hơn, tăng diện t&iacute;ch hiển thị. C&aacute;c t&iacute;nh năng đo sức khoẻ kh&ocirc;ng kh&aacute;c biệt so với trước như đo nhịp tim, nồng độ oxy trong m&aacute;u, hỗ trợ tập thể dục, cảm biến BIA đo chỉ số cơ thể, theo d&otilde;i chất lượng giấc ngủ. Galaxy Watch6 c&oacute; th&ecirc;m t&iacute;nh năng C&aacute; nh&acirc;n h&oacute;a v&ugrave;ng nhịp tim gi&uacute;p ph&acirc;n t&iacute;ch khả năng thể chất của từng người. Sản phẩm chạy WearOS mới v&agrave; chỉ tương th&iacute;ch với smartphone Android. Thời lượng pin của Watch6 series khoảng 40 tiếng.</p>\r\n\r\n<p><img alt=\"\" src=\"https://i1-sohoa.vnecdn.net/2023/12/24/DSCF1048-1694592842-1697997512-1703401095.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=aHUolnVxti7L1MFiS2I_5Q\" /></p>\r\n\r\n<p><strong>Apple Watch Series 9 (từ 10,4 triệu đồng)</strong></p>\r\n\r\n<p>Watch Series 9 vẫn giữ kiểu d&aacute;ng, k&iacute;ch thước v&agrave; độ ph&acirc;n giải như bản cũ nhưng m&agrave;n h&igrave;nh c&oacute; độ s&aacute;ng tối đa gấp đ&ocirc;i, l&ecirc;n mức 2.000 nit. Đồng hồ cũng n&acirc;ng cấp về phần cứng với chip Apple S9, Neural Engine bốn l&otilde;i gi&uacute;p xử l&yacute; c&aacute;c t&aacute;c vụ sử dụng c&ocirc;ng nghệ m&aacute;y học nhanh gấp hai lần so với Watch Series 8. Đ&acirc;y cũng l&agrave; lần đầu đồng hồ th&ocirc;ng minh của Apple c&oacute; thể xử l&yacute; trực tiếp c&aacute;c y&ecirc;u cầu Siri tr&ecirc;n thiết bị m&agrave; kh&ocirc;ng phụ thuộc kết nối Wi-Fi hay mạng di động.</p>\r\n\r\n<p>Ngo&agrave;i t&iacute;nh năng hỗ trợ sức khoẻ như theo d&otilde;i giấc ngủ, đo nhịp tim, đo lượng oxy trong m&aacute;u v&agrave; ph&aacute;t hiện ng&atilde;, một t&iacute;nh năng đ&aacute;ng ch&uacute; &yacute; kh&aacute;c tr&ecirc;n Watch Series 9 l&agrave; Double Tap. Trong đ&oacute;, người d&ugrave;ng c&oacute; thể sử dụng ng&oacute;n trỏ v&agrave; ng&oacute;n c&aacute;i chạm nhau để ra lệnh cho đồng hồ. Apple cho biết thời lượng pin của m&aacute;y được n&acirc;ng cấp, cho ph&eacute;p sử dụng 18 tiếng li&ecirc;n tục.</p>\r\n\r\n<p><img alt=\"\" src=\"https://i1-sohoa.vnecdn.net/2023/12/24/DSC0706-1703401096.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=FCvMGwVFrmwYobiTWqWjpQ\" /></p>\r\n\r\n<p><strong>Coros Pace 3 (6,18 triệu đồng)</strong></p>\r\n\r\n<p>Pace 3 kh&ocirc;ng thay đổi nhiều về thiết kế so với thế hệ trước ngo&agrave;i việc thay đổi d&acirc;y đeo từ 20 sang 22 mm, n&uacute;t bấm to hơn. Sản phẩm c&oacute; trọng lượng nhẹ chỉ 30 gram do sử dụng vỏ nhựa. M&aacute;y vẫn trang bị m&agrave;n h&igrave;nh MIP thay v&igrave; AMOLED k&iacute;ch thước 1,2 inch.</p>\r\n\r\n<p>Cảm biến sức khoẻ thế hệ mới gi&uacute;p đo nhịp tim, SpO2&hellip; ch&iacute;nh x&aacute;c hơn. Ngo&agrave;i c&aacute;c chế độ luyện tập quen thuộc, m&aacute;y c&oacute; th&ecirc;m c&aacute;c hoạt động mới như chạy địa h&igrave;nh, trượt tuyết&hellip; v&agrave; bộ nhớ trong 4 GB để ph&aacute;t nhạc. Chip GPS băng tần k&eacute;p cũng gi&uacute;p định vị ch&iacute;nh x&aacute;c hơn. Coros cho biết Pace 3 c&oacute; thể hoạt động li&ecirc;n tục 38 tiếng nếu bật GPS v&agrave; 24 ng&agrave;y sử dụng h&agrave;ng ng&agrave;y.&nbsp;<em>Ảnh: Gear Junkie</em></p>\r\n\r\n<p><img alt=\"\" src=\"https://i1-sohoa.vnecdn.net/2023/12/24/clip-image00140-1703401097.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=56VFQK6gNlEF7ai3L1arEQ\" /></p>\r\n\r\n<p><strong>Amazfit Cheetah Pro (6,89 triệu đồng)</strong></p>\r\n\r\n<p>Model cao cấp nhất trong d&ograve;ng Cheetah của Amazfit c&oacute; thiết kế nhỏ gọn v&agrave; thể thao hơn, viền titan gi&uacute;p bảo vệ m&agrave;n h&igrave;nh v&agrave; nặng 34 gram. M&aacute;y c&oacute; m&agrave;n h&igrave;nh AMOLED 1,45 inch. Sản phẩm hỗ trợ 150 chế độ tập luyện thể thao kh&aacute;c nhau c&ugrave;ng c&aacute;c t&iacute;nh năng đo sức khoẻ như nhịp tim, SpO2, theo d&otilde;i giấc ngủ&hellip; Cheetah Pro c&ograve;n hỗ trợ huấn luyện vi&ecirc;n ảo AI gi&uacute;p x&acirc;y dựng chế độ luyện tập ph&ugrave; hợp với từng c&aacute; nh&acirc;n.</p>\r\n\r\n<p>Cheetah Pro cho thời lượng sử dụng 14 ng&agrave;y th&ocirc;ng thường, khi mở GPS li&ecirc;n tục l&agrave; 36 tiếng v&agrave; l&ecirc;n đến 54 tiếng với chế độ GPS tiết kiệm năng lượng.&nbsp;<em>Ảnh: DC Rain Maker</em></p>\r\n\r\n<p><img alt=\"\" src=\"https://i1-sohoa.vnecdn.net/2023/12/24/DSC7533-1694709548-1697997511-1703401097.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=5DsrQz8hhSHu4_BfCN1nkw\" /></p>\r\n\r\n<p><strong>Garmin Venu 3 (12,3 triệu đồng)</strong></p>\r\n\r\n<p>Thế hệ thứ ba của d&ograve;ng đồng hồ Venu được Garmin định hướng cạnh tranh với c&aacute;c đối thủ Apple, Samsung v&agrave; Huawei. M&aacute;y c&oacute; thiết kế mặt tr&ograve;n với hai phi&ecirc;n bản: Venu 3 cỡ 45 mm v&agrave; Venu 3S cỡ 40 mm. Sản phẩm c&oacute; thế mạnh về t&iacute;nh năng GPS, hỗ trợ nhiều loại vận động thể thao n&ecirc;n c&oacute; th&acirc;n bằng nhựa, viền bằng th&eacute;p kh&ocirc;ng gỉ, gi&uacute;p thiết bị nhẹ nhưng đảm bảo độ chắc chắn v&agrave; chống va đập tốt.</p>\r\n\r\n<p>Ngo&agrave;i t&iacute;nh năng đo sức khoẻ, Venu 3 tập trung theo d&otilde;i về mặt tinh thần của người đeo, như đo mức độ căng thẳng, theo d&otilde;i giấc ngủ, c&oacute; thể ph&aacute;t hiện giấc ngủ ngắn v&agrave; cảnh b&aacute;o về mức ảnh hưởng của những hoạt động đ&oacute; đến chỉ số Body Battery. Sản phẩm hỗ trợ 30 m&ocirc;n thể thao. Garmin c&ograve;n trang bị chế độ theo d&otilde;i số liệu ri&ecirc;ng cho người sử dụng xe lăn, như số lần đẩy mỗi ng&agrave;y thay cho số bước ch&acirc;n. Thời lượng pin l&agrave; điểm n&acirc;ng cấp lớn khi Venu 3 c&oacute; thời gian sử dụng tối đa 14 ng&agrave;y c&ograve;n 3S l&agrave; 10 ng&agrave;y.</p>\r\n\r\n<p><img alt=\"\" src=\"https://i1-sohoa.vnecdn.net/2023/12/24/xiaomi-watch-2-pro-twist-crown-1703401098.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=iheCOoYVfU7Wrd-4DU8LKg\" /></p>\r\n\r\n<p><strong>Xiaomi Watch 2 Pro (6,29 triệu đồng)</strong></p>\r\n\r\n<p>Smartwatch của Xiaomi c&oacute; thiết kế tr&ograve;n cổ điển với vỏ bằng th&eacute;p kh&ocirc;ng rỉ. Sản phẩm chỉ c&oacute; một k&iacute;ch thước 46 mm với m&agrave;n h&igrave;nh AMOLED 1,43 inch n&ecirc;n ph&ugrave; hợp với người d&ugrave;ng c&oacute; cổ tay to.</p>\r\n\r\n<p>Thiết bị chạy WearOS với nhiều t&iacute;nh năng th&ocirc;ng minh nhưng chỉ hỗ trợ cho smartphone Android. Ngo&agrave;i chế độ đo sức khoẻ v&agrave; tập luyện quen thuộc, Watch 2 Pro c&oacute; th&ecirc;m t&iacute;nh năng đo chỉ số cơ thể giống Watch6 của Samsung. Thời lượng pin của model n&agrave;y l&agrave; 55 tiếng, mức pin tốt với d&ograve;ng đồng hồ th&ocirc;ng minh chạy WearOS.&nbsp;<em>Ảnh: Digital Trends.</em></p>', 1, '<p>C&aacute;c martwatch được ưa chuộng trong năm 2023 của Apple, Samsung, Huawei... c&oacute; thiết kế đẹp, trọng lượng nhẹ, nhiều t&iacute;nh năng th&ocirc;ng minh, c&ugrave;ng thời lượng pin tốt.</p>', '7 smartwatch nổi bật 2023', '7-smartwatch-noi-bat-2023', 'DSCF3852-1696392427-170340109416.jpg', '2024-05-21 02:45:59', '2024-05-21 02:45:59'),
(6, '<p>Watch GT 4 đạt 6.000 đơn đặt trước tr&ecirc;n k&ecirc;nh online v&agrave; cửa h&agrave;ng truyền thống chỉ sau 6 ng&agrave;y nhờ thiết kế mặt số cổ điển, nhiều t&iacute;nh năng hỗ trợ sức khỏe.</p>\r\n\r\n<p>H&atilde;ng cũng b&aacute;n hết bản 46 mm với d&acirc;y compsite m&agrave;u xanh. Sự ra mắt của mẫu Watch GT 4 gi&uacute;p Huawei đứng đầu doanh số thiết bị đeo th&ocirc;ng minh trong sự kiện ưu đ&atilde;i ng&agrave;y 10/10 tr&ecirc;n Shopee.</p>\r\n\r\n<p>&Ocirc;ng Li Fan - Gi&aacute;m đốc nh&oacute;m Kinh doanh Ti&ecirc;u d&ugrave;ng Huawei Việt Nam n&oacute;i đ&acirc;y l&agrave; con số kỷ lục tr&ecirc;n c&aacute;c thế hệ smartwatch. &Ocirc;ng vui mừng khi d&ograve;ng sản phẩm n&agrave;y nhận nhiều sự quan t&acirc;m tại Việt Nam.</p>\r\n\r\n<p>&quot;Sự tin tưởng của người d&ugrave;ng tạo động lực để ch&uacute;ng t&ocirc;i tiếp tục ph&aacute;t triển sản phẩm tối ưu về thiết kế v&agrave; t&iacute;nh năng, đ&uacute;ng với cam kết lấy người d&ugrave;ng l&agrave;m trọng t&acirc;m&quot;, &ocirc;ng nhấn mạnh.</p>\r\n\r\n<p><img alt=\"Đồng hồ mang thiết kế mặt số, nhiều dây đeo. Ảnh: Huawei\" src=\"https://i1-sohoa.vnecdn.net/2023/10/20/image001-3300-1697784265.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=YsG-SbKFmM4NtaUuv8l0ww\" /></p>\r\n\r\n<p>Đồng hồ mang thiết kế mặt số, nhiều d&acirc;y đeo. Ảnh:&nbsp;<em>Huawei</em></p>\r\n\r\n<p>Watch GT 4 kết hợp giữa c&ocirc;ng nghệ v&agrave; thời trang, gi&uacute;p người d&ugrave;ng thể hiện phong c&aacute;ch đồng thời c&aacute; nh&acirc;n h&oacute;a h&agrave;nh tr&igrave;nh chăm s&oacute;c sức khỏe. H&atilde;ng cung cấp 7 t&ugrave;y chọn thiết kế tương ứng với c&aacute;c loại d&acirc;y đeo kh&aacute;c nhau, gi&uacute;p người d&ugrave;ng t&ugrave;y biến đa phong c&aacute;ch. Bản 46mm thiết kế mặt số h&igrave;nh b&aacute;t gi&aacute;c g&oacute;c cạnh c&ograve;n bản 41 mm d&aacute;ng ngọc trai.</p>\r\n\r\n<p>B&ecirc;n cạnh thiết kế, đồng hồ đ&oacute;ng vai tr&ograve; như một c&ocirc;ng cụ theo d&otilde;i sức khỏe v&agrave; hỗ trợ tập luyện. C&ocirc;ng nghệ TruSeen 5.5+ được n&acirc;ng cấp để đọc ch&iacute;nh x&aacute;c c&aacute;c chỉ số sức khỏe tim mạch trong c&aacute;c hoạt động như chạy, nhảy d&acirc;y hoặc thời tiết lạnh. Chế độ Nhận biết hơi thở khi ngủ ở c&ocirc;ng nghệ TruSleep 3.0 c&oacute; khả năng ph&aacute;t hiện bất thường khi ngủ c&ugrave;ng những thay đổi về dấu hiệu sinh l&yacute; như nồng độ oxy trong m&aacute;u, thay đổi nhịp tim.</p>\r\n\r\n<p>T&iacute;nh năng Lịch chu kỳ th&ocirc;ng minh được cải tiến, ph&acirc;n t&iacute;ch c&aacute;c chỉ số sinh l&yacute; như nhịp tim khi ngủ, nhiệt độ cơ thể v&agrave; nhịp thở để dự đo&aacute;n chu kỳ kinh nguyệt.</p>\r\n\r\n<p><img alt=\"Công nghệ TruSleep 3.0 giúp người dùng hiểu rõ hơn về giấc ngủ.\" src=\"https://i1-sohoa.vnecdn.net/2023/10/20/Image-ExtractWord-3-Out-6135-1697784265.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=AT_iLR_K2PI4FNUEyJiejw\" /></p>\r\n\r\n<p>C&ocirc;ng nghệ TruSleep 3.0 gi&uacute;p người d&ugrave;ng hiểu r&otilde; hơn về giấc ngủ. Ảnh:&nbsp;<em>Huawei</em></p>\r\n\r\n<p>Một trong những điểm nổi bật của d&ograve;ng Huawei Watch GT 4 l&agrave; thời lượng pin l&ecirc;n đến 14 ng&agrave;y sử dụng tr&ecirc;n 46 mm v&agrave; 7 ng&agrave;y tr&ecirc;n 41 mm. Thiết bị c&oacute; thể được gh&eacute;p nối với iOS v&agrave; Android. Smartwatch c&ograve;n kết nối, đồng bộ liền mạch với điện thoại th&ocirc;ng minh qua bluetooth để trả lời cuộc gọi hoặc phản hồi nhanh tin nhắn chỉ bằng v&agrave;i thao t&aacute;c.</p>\r\n\r\n<p>Hướng tới mục ti&ecirc;u chăm s&oacute;c sức khỏe người d&ugrave;ng, mẫu Watch GT 4 cung cấp hơn 100 chế độ tập luyện theo thời gian thực. V&ograve;ng hoạt động được cải tiến v&agrave; GPS t&iacute;ch hợp gi&uacute;p định vị ch&iacute;nh x&aacute;c khi chạy hoặc đi bộ đường d&agrave;i.</p>\r\n\r\n<p><img alt=\"Đồng hồ kết nối liền mạch với điện thoại, hỗ trợ trả lời cuộc gọi, tin nhắn nhanh chóng. Ảnh: Huawei\" src=\"https://i1-sohoa.vnecdn.net/2023/10/20/Image-573537783-ExtractWord-5-3643-5746-1697784266.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=sy3jZp_f3v6TznBFG3RlLQ\" /></p>\r\n\r\n<p>Đồng hồ kết nối liền mạch với điện thoại, hỗ trợ trả lời cuộc gọi, tin nhắn nhanh ch&oacute;ng. Ảnh:&nbsp;<em>Huawei</em></p>\r\n\r\n<p>Huawei c&ograve;n giới thiệu chiến dịch &quot;Thắp s&aacute;ng v&ograve;ng hoạt động - Chung bước v&igrave; sống khỏe&quot;, diễn ra từ ng&agrave;y 16/10 nhằm khuyến kh&iacute;ch người d&ugrave;ng thực hiện lối sống l&agrave;nh mạnh, năng động hơn. Chương tr&igrave;nh thực hiện th&ocirc;ng qua ứng dụng Huawei Health (Huawei Sức khỏe). Người d&ugrave;ng tham gia bằng c&aacute;ch ho&agrave;n th&agrave;nh c&aacute;c thử th&aacute;ch mục ti&ecirc;u: lượng calo ti&ecirc;u thụ trong c&aacute;c hoạt động thể chất, tổng thời gian tập luyện, số lần đứng trong ng&agrave;y. Khi ho&agrave;n th&agrave;nh thử th&aacute;ch 5 ng&agrave;y li&ecirc;n tiếp &quot;thắp s&aacute;ng&quot; V&ograve;ng hoạt động, người d&ugrave;ng sẽ nhận được huy chương đặc biệt ngay tr&ecirc;n ứng dụng.</p>\r\n\r\n<p>Người d&ugrave;ng cũng c&oacute; thể lan tỏa tinh thần thể thao v&agrave; tập luyện bằng c&aacute;ch chia sẻ th&agrave;nh t&iacute;ch v&agrave; k&ecirc;u gọi bạn b&egrave; c&ugrave;ng tham gia. Hơn 200 kh&oacute;a tập luyện miễn ph&iacute; mang đến c&ocirc;ng cụ hữu &iacute;ch cho h&agrave;nh tr&igrave;nh sức khỏe.</p>', 1, '<p>Watch GT 4 đạt 6.000 đơn đặt trước tr&ecirc;n k&ecirc;nh online v&agrave; cửa h&agrave;ng truyền thống chỉ sau 6 ng&agrave;y nhờ thiết kế mặt số cổ điển, nhiều t&iacute;nh năng hỗ trợ sức khỏe.</p>', 'Smartwatch Huawei lập kỷ lục với 6.000 đơn đặt trước', 'Smartwatch Huawei lập kỷ lục với 6.000 đơn đặt trước', 'Image-ExtractWord-3-Out-6135-16977842653.png', '2024-05-21 03:07:31', '2024-05-21 03:07:31'),
(7, '<p>Huawei giới thiệu hai mẫu đồng hồ mới, trong đ&oacute; Watch Buds t&iacute;ch hợp th&ecirc;m tai nghe wireless, c&ograve;n Watch GT Cyber c&oacute; thể th&aacute;o rời v&agrave; thay đổi vỏ ốp.</p>\r\n\r\n<p>Watch Buds l&agrave; mẫu đồng hồ th&ocirc;ng minh hướng đến người d&ugrave;ng cao cấp, ưa th&iacute;ch sự lịch l&atilde;m, sang trọng. Điểm đặc biệt l&agrave; b&ecirc;n dưới mặt đồng hồ l&agrave; khu vực chứa tai nghe kh&ocirc;ng d&acirc;y. Mẫu tai nghe n&agrave;y được h&atilde;ng thiết kế nhỏ gọn nhưng k&egrave;m nhiều t&iacute;nh năng th&ocirc;ng minh.</p>\r\n\r\n<p>Theo nh&agrave; sản xuất, tai nghe c&oacute; khả năng chống ồn chủ động AI, t&iacute;ch hợp c&ocirc;ng nghệ điều khiển tr&ecirc;n v&agrave;nh tai cho ph&eacute;p người d&ugrave;ng chạm v&agrave;o v&agrave;nh tai để thực hiện c&aacute;c t&aacute;c vụ. Thiết bị n&agrave;y tự nhận biết tai nghe tr&aacute;i, phải v&agrave; điều chỉnh tương ứng nhờ c&ocirc;ng nghệ nhận dạng th&iacute;ch ứng.</p>\r\n\r\n<p><img alt=\"Tai nghe nam châm đặt bên dưới màn hình đồng hồ. Ảnh: Huawei\" src=\"https://i1-sohoa.vnecdn.net/2023/03/20/Huawei-Watch-5155-1679304934.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=ChETGlH2kT2LeGIL2_Pitg\" /></p>\r\n\r\n<p>Tai nghe nam ch&acirc;m đặt b&ecirc;n dưới m&agrave;n h&igrave;nh đồng hồ. Ảnh:&nbsp;<em>Huawei</em></p>\r\n\r\n<p>Huawei cho biết phần bản lề để mở nắp bật lấy tai nghe c&oacute; độ bền 100.000 lần đ&oacute;ng mở. Thiết bị cũng sử dụng kết nối nam ch&acirc;m v&agrave; khi đặt v&agrave;o trong, đồng hồ sẽ tự sạc cho tai nghe.</p>\r\n\r\n<p>Ngo&agrave;i phần tai nghe, thiết kế của Watch Buds được đ&aacute;nh gi&aacute; l&agrave; thời trang. Sản phẩm c&oacute; mặt k&iacute;nh v&aacute;t cong 3D, m&agrave;n h&igrave;nh AMOLED. Th&acirc;n đồng hồ l&agrave;m từ th&eacute;p tinh luyện cho độ cứng v&agrave; khả năng chống ăn m&ograve;n cao. Sản phẩm được đ&aacute;nh b&oacute;ng thủ c&ocirc;ng bằng chất liệu satin, n&uacute;m xoay được chạm khắc với 710 đỉnh cắt v&aacute;t kim cương. D&acirc;y đeo l&agrave;m từ da nguy&ecirc;n tấm.</p>\r\n\r\n<p>Sản phẩm của Huawei được trang bị đầy đủ c&aacute;c t&iacute;nh năng chăm s&oacute;c sức khỏe v&agrave; tập luyện thể thao như theo d&otilde;i nhịp tim, đo nồng độ oxy, nghe gọi bluetooth, trả lời tin nhắn, theo d&otilde;i sức khỏe, định vị GPS, t&igrave;m kiếm tai nghe... Watch Buds được b&igrave;nh chọn l&agrave; &quot;sản phẩm hay nhất&quot; tại Triển l&atilde;m Di động to&agrave;n cầu MWC 2023. Sản phẩm ra mắt thị trường Việt Nam từ 31/3 với mức gi&aacute; 10,99 triệu đồng chưa k&egrave;m khuyến m&atilde;i.</p>\r\n\r\n<p>Kh&aacute;c Watch Buds, Watch GT Cyber l&agrave; mẫu đồng hồ th&ocirc;ng minh d&agrave;nh cho giới trẻ y&ecirc;u th&iacute;ch sự c&aacute; nh&acirc;n h&oacute;a trong phong c&aacute;ch thời trang với khả năng thay đổi vỏ ngo&agrave;i. Với lối thiết kế kh&oacute;a kiểu đẩy, Watch GT Cyber cho ph&eacute;p thay đổi vỏ khung đồng hồ bằng c&aacute;ch nhấn v&agrave;o th&acirc;n m&aacute;y v&agrave; lắp vỏ mới. Sản phẩm hiện c&oacute; hai phi&ecirc;n bản Hiện đại v&agrave; Thể thao v&agrave; bốn phi&ecirc;n bản vỏ ngo&agrave;i gồm v&agrave;ng đen, đen b&oacute;ng đ&ecirc;m, x&aacute;m kh&ocirc;ng gian v&agrave; v&agrave;ng b&igrave;nh minh.</p>\r\n\r\n<p><img alt=\"Watch GT Cyber có khả năng tùy biến vỏ ngoài nhiều màu sắc. Ảnh: Huawei\" src=\"https://i1-sohoa.vnecdn.net/2023/03/20/HHW-4264-1679304934.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=tD3UmvabOXqiw_m9gc5lpA\" /></p>\r\n\r\n<p>Watch GT Cyber c&oacute; khả năng t&ugrave;y biến vỏ ngo&agrave;i nhiều m&agrave;u sắc. Ảnh:&nbsp;<em>Huawei</em></p>\r\n\r\n<p>Thiết bị đạt ti&ecirc;u chuẩn kh&aacute;ng nước 5 ATM, vượt qua 16 b&agrave;i kiểm tra độ bền theo ti&ecirc;u chuẩn qu&acirc;n đội như chịu nhiệt, chống sốc, mưa, phun muối, bụi... Đồng hồ d&ugrave;ng m&agrave;n h&igrave;nh AMOLED, khung m&aacute;y bằng gốm tinh thể nano kết hợp th&eacute;p ko gỉ, d&acirc;y cao su chất liệu cao cấp. Đồng hồ cho cảm gi&aacute;c đeo thoải m&aacute;i nhờ trọng lượng nhẹ, thiết kế tho&aacute;ng kh&iacute;, vừa vặn.</p>\r\n\r\n<p>Huawei trang bị nhiều t&ugrave;y chọn mặt đồng hồ từ kho ứng dụng, khả năng tạo mặt đồng hồ từ ảnh ch&acirc;n d&ugrave;ng, đ&aacute;p ứng nhu cầu c&aacute; nh&acirc;n h&oacute;a. Sản phẩm trang bị định vị GPS với 5 hệ thống định vị, đầy đủ c&aacute;c t&iacute;nh năng điều khiển th&ocirc;ng minh như trả lời cuộc gọi, kết nối bluetooth, nghe nhạc trực tiếp, sạc ngược kh&ocirc;ng d&acirc;y..., hỗ trợ hơn 100 chế độ luyện tập v&agrave; theo d&otilde;i sức khỏe như đo nhịp tim, nồng độ oxy, đ&aacute;nh gi&aacute; chất lượng giấc ngủ, căng thẳng...</p>\r\n\r\n<p>Tương tự Watch Bud, Watch GT Cyber cũng nhận nhiều b&igrave;nh chọn &quot;Sản phẩm hay nhất&quot; tại MWC 2023. Mức gi&aacute; Watch GT Cyber tại Việt Nam từ 5,99-6,49 triệu đồng chưa bao gồm khuyến m&atilde;i, l&ecirc;n kệ từ 24/3.</p>', 1, '<p>Huawei giới thiệu hai mẫu đồng hồ mới, trong đ&oacute; Watch Buds t&iacute;ch hợp th&ecirc;m tai nghe wireless, c&ograve;n Watch GT Cyber c&oacute; thể th&aacute;o rời v&agrave; thay đổi vỏ ốp.</p>\r\n\r\n<p>Watch Buds l&agrave; mẫu đồng hồ th&ocirc;ng minh hướng đến người d&ugrave;ng cao cấp, ưa th&iacute;ch sự lịch l&atilde;m, sang trọng. Điểm đặc biệt l&agrave; b&ecirc;n dưới mặt đồng hồ l&agrave; khu vực chứa tai nghe kh&ocirc;ng d&acirc;y. Mẫu tai nghe n&agrave;y được h&atilde;ng thiết kế nhỏ gọn nhưng k&egrave;m nhiều t&iacute;nh năng th&ocirc;ng minh.</p>', 'Huawei ra mắt smartwatch tích hợp tai nghe và tùy biến vỏ ngoài', 'Huawei ra mắt smartwatch tích hợp tai nghe và tùy biến vỏ ngoài', 'Huawei-Watch-5155-167930493433.jpg', '2024-05-21 03:14:49', '2024-05-21 03:14:49'),
(8, '<p>ANHAdam Croft, 36 tuổi, được Apple Watch cảnh b&aacute;o bị rung t&acirc;m nhĩ v&agrave; điều trị kịp thời trước khi c&oacute; thể dẫn tới đột quỵ.</p>\r\n\r\n<p>Theo&nbsp;<em>BBC</em>, một buổi tối, Croft, sống tại Bedfordshire, đứng dậy lấy nước uống v&agrave; bỗng thấy ch&oacute;ng mặt, mọi thứ tối sầm. Anh nằm xuống v&agrave; bị đổ mồ h&ocirc;i lạnh. Tuy nhi&ecirc;n, anh kh&ocirc;ng nghĩ nhiều v&agrave; đi ngủ như b&igrave;nh thường.</p>\r\n\r\n<p>S&aacute;ng h&ocirc;m sau,&nbsp;<a href=\"https://vnexpress.net/chu-de/apple-watch-1747\" rel=\"dofollow\">Apple Watch</a>&nbsp;gửi th&ocirc;ng b&aacute;o anh c&oacute; thể mắc chứng rung t&acirc;m nhĩ. Croft lập tức gọi cấp cứu v&agrave; được hướng dẫn đến bệnh viện trong v&ograve;ng một giờ.</p>\r\n\r\n<p><img alt=\"Apple Watch Series 7. Ảnh: The Verge\" src=\"https://i1-sohoa.vnecdn.net/2023/03/14/apple-1678797444-1184-1678797842.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=te1khpUyDKKeDvbCvjEeHQ\" /></p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"1\" id=\"google_ads_iframe_/27973503/Vnexpress/Desktop/Inimage/Sohoa/Sohoa.congnghe.detail_0\" name=\"google_ads_iframe_/27973503/Vnexpress/Desktop/Inimage/Sohoa/Sohoa.congnghe.detail_0\" scrolling=\"no\" tabindex=\"0\" title=\"3rd party ad content\" width=\"1\"></iframe></p>\r\n\r\n<p>Apple Watch Series 7. Ảnh:&nbsp;<em>The Verge</em></p>\r\n\r\n<p>C&aacute;c x&eacute;t nghiệm đ&atilde; x&aacute;c nhận Croft bị rung t&acirc;m nhĩ. Anh cho biết nếu kh&ocirc;ng c&oacute; cảnh b&aacute;o từ đồng hồ, anh sẽ kh&ocirc;ng đến bệnh viện kiểm tra d&ugrave; cũng c&oacute; lần cảm thấy rung động nhỏ ở tim. Anh cũng chưa bao giờ c&oacute; cơn đau hay triệu chứng về tim n&ecirc;n kh&ocirc;ng nghĩ vấn đề nghi&ecirc;m trọng.</p>\r\n\r\n<p>Người bị rung t&acirc;m nhĩ thường bị đ&aacute;nh trống ngực, đ&ocirc;i khi mệt mỏi, giảm khả năng gắng sức, kh&oacute; thở v&agrave; tho&aacute;ng ngất. Người bệnh c&oacute; nguy cơ cao h&igrave;nh th&agrave;nh huyết khối trong t&acirc;m nhĩ, tr&ocirc;i theo d&ograve;ng tuần ho&agrave;n g&acirc;y đột quỵ.</p>\r\n\r\n<p>Apple Watch hiện l&agrave; smartwatch phổ biến nhất thế giới. Ngo&agrave;i t&iacute;nh năng đo sức khỏe, đồng hồ th&ocirc;ng minh của Apple từng nhiều lần cứu người d&ugrave;ng tho&aacute;t khỏi nguy hiểm hoặc gi&uacute;p sớm nhận biết vấn đề sức khỏe để đến bệnh viện chữa trị.</p>', 1, '<p>Apple Watch hiện l&agrave; smartwatch phổ biến nhất thế giới. Ngo&agrave;i t&iacute;nh năng đo sức khỏe, đồng hồ th&ocirc;ng minh của Apple từng nhiều lần cứu người d&ugrave;ng tho&aacute;t khỏi nguy hiểm hoặc gi&uacute;p sớm nhận biết vấn đề sức khỏe để đến bệnh viện chữa trị.</p>', 'Apple Watch giúp phát hiện bệnh tim tiềm ẩn', 'Apple Watch giúp phát hiện bệnh tim tiềm ẩn', 'apple-1678797444-1184-167879784235.jpg', '2024-05-21 03:16:02', '2024-05-21 03:16:02'),
(9, '<p>Hai nh&agrave; sản xuất Trung Quốc c&oacute; thị phần thiết bị đeo th&ocirc;ng minh lớn nhất tại Việt Nam, vượt qua Samsung v&agrave; Apple.</p>\r\n\r\n<p>Theo số liệu của một c&ocirc;ng ty nghi&ecirc;n cứu thị trường, Huawei bất ngờ vươn l&ecirc;n vị tr&iacute; số một về thị phần thiết bị đeo th&ocirc;ng minh với 18,5% trong qu&yacute; II/2022 tại Việt Nam. B&aacute;m s&aacute;t l&agrave; Xiaomi với hơn 18%.</p>\r\n\r\n<p>Từ vị tr&iacute; &aacute;p đảo trong qu&yacute; đầu năm với hơn 37%, Samsung rơi xuống thứ ba khi chỉ c&ograve;n 15% thị phần. Trong khi đ&oacute;, Apple giảm nhẹ từ mức 8% của qu&yacute; trước xuống c&ograve;n gần 6% trong qu&yacute; II.</p>\r\n\r\n<p>Thị phần thiết bị đeo th&ocirc;ng minh tại Việt Nam qu&yacute; II/2022Số liệu ước t&iacute;nh theo một số b&aacute;o c&aacute;o thị trườngHuaweiHuaweiXiaomiXiaomiSamsungSamsungAppleAppleGarminGarminKh&aacute;cKh&aacute;cVnExpress</p>\r\n\r\n<p>Thị trường thiết bị đeo th&ocirc;ng minh tại Việt Nam chưa ổn định như điện thoại. Thị phần của c&aacute;c h&atilde;ng trồi sụt chỉ trong v&agrave;i th&aacute;ng v&agrave; li&ecirc;n tục ho&aacute;n đổi vị tr&iacute;. T&iacute;nh từ đầu 2021, thị phần Samsung l&uacute;c thấp nhất l&agrave; hơn 6%, nhưng c&oacute; l&uacute;c gần 38%. Cuối năm ngo&aacute;i, Apple cũng đạt đỉnh với 30% nhưng sau đ&oacute; giảm c&ograve;n 6%. Hai nh&agrave; sản xuất Trung Quốc ổn định hơn khi Huawei đều đặn tăng thị phần từ hơn 2% đầu năm ngo&aacute;i l&ecirc;n 18,5% trong khi Xiaomi l&agrave; dao động tr&ecirc;n dưới 18%.</p>\r\n\r\n<p>Sau khi gặp kh&oacute; với mảng smartphone, Huawei dồn lực cho thiết bị đeo th&ocirc;ng minh, tai nghe, m&aacute;y t&iacute;nh v&agrave; m&agrave;n h&igrave;nh. Hai sản phẩm đ&oacute;ng g&oacute;p doanh số nhiều nhất cho h&atilde;ng l&agrave; đồng hồ Watch GT3 v&agrave; Band 7. Trong đ&oacute;, GT3 được đ&aacute;nh gi&aacute; cao về thiết kế thể thao v&agrave; thời lượng pin l&acirc;u c&ograve;n Band 7 c&oacute; gi&aacute; tốt, chỉ khoảng một triệu đồng v&agrave; l&agrave; đối thủ ch&iacute;nh của Xiaomi SmartBand 7. H&atilde;ng cũng chuẩn bị ra mắt th&ecirc;m mẫu đồng hồ Watch GT3 SE hướng tới người d&ugrave;ng phổ th&ocirc;ng. Đ&acirc;y l&agrave; model c&oacute; trọng lượng nhẹ nhất trong d&ograve;ng GT, pin l&ecirc;n đến hai tuần v&agrave; tương th&iacute;ch cả iOS v&agrave; Android.</p>\r\n\r\n<p><img alt=\"Huawei Band 7 (dưới) và Xiaomi SmartBand 7. Ảnh: Top2gadget\" src=\"https://i1-sohoa.vnecdn.net/2022/10/25/-9178-1666690304.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=dXcStM4yar8GxWcdsy0SJA\" /></p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"1\" id=\"google_ads_iframe_/27973503/Vnexpress/Desktop/Inimage/Sohoa/Sohoa.sanpham.detail_0\" name=\"google_ads_iframe_/27973503/Vnexpress/Desktop/Inimage/Sohoa/Sohoa.sanpham.detail_0\" scrolling=\"no\" tabindex=\"0\" title=\"3rd party ad content\" width=\"1\"></iframe></p>\r\n\r\n<p>Huawei Band 7 (dưới) v&agrave; Xiaomi SmartBand 7. Ảnh:&nbsp;<em>Top2gadget</em></p>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p>Trong khi đ&oacute;, doanh số thiết bị đeo th&ocirc;ng minh của Xiaomi chủ yếu từ v&ograve;ng đeo SmartBand 7 v&agrave; SmartBand 7 Pro (t&ecirc;n gọi cũ l&agrave; Mi Band) gi&aacute; 1-2 triệu đồng. Những sản phẩm đồng hồ tr&ecirc;n hai triệu đồng của h&atilde;ng lại kh&ocirc;ng tạo được dấu ấn đ&aacute;ng kể tr&ecirc;n thị trường.</p>\r\n\r\n<p>Từ thị phần hai chữ số, Apple gần đ&acirc;y chững lại do thiếu dải sản phẩm mới, gi&aacute; cao v&agrave; sự vươn l&ecirc;n của c&aacute;c nh&agrave; sản xuất Trung Quốc. C&ograve;n Samsung thường nổi trội trong qu&yacute; m&agrave; h&atilde;ng tung ra sản phẩm mới hoặc v&agrave;o dịp Tết với nhiều chương tr&igrave;nh khuyến mại.</p>\r\n\r\n<p>Kh&ocirc;ng giống điện thoại th&ocirc;ng minh, đồng hồ v&agrave; thiết bị đeo c&oacute; sự kh&aacute;c biệt kh&aacute; lớn giữa c&aacute;c nh&agrave; sản xuất. Mỗi h&atilde;ng c&oacute; một thế mạnh ri&ecirc;ng như Apple l&agrave; hệ sinh th&aacute;i, tối ưu về chăm s&oacute;c sức khỏe, trong khi Samsung c&oacute; nhiều model thời trang, thiết kế bắt mắt. Garmin chuy&ecirc;n về người d&ugrave;ng thể thao chuy&ecirc;n nghiệp, Xiaomi gi&aacute; rẻ, hay Huawei l&agrave; thời lượng pin d&agrave;i v&agrave; phần mềm dễ điều khiển.</p>\r\n\r\n<p>Theo b&aacute;o c&aacute;o của IDC, c&oacute; 140.000 thiết bị đeo th&ocirc;ng minh được ti&ecirc;u thụ tại Việt Nam trong qu&yacute; II/2022, tăng 1,5 lần so với giai đoạn Covid-19 b&ugrave;ng ph&aacute;t mạnh l&agrave; qu&yacute; III/2021. Tuy nhi&ecirc;n, tr&ecirc;n to&agrave;n cầu, thị trường smartwatch đ&atilde; giảm 6,9% so với c&ugrave;ng kỳ năm ngo&aacute;i với doanh số 107,4 triệu chiếc. Theo c&aacute;c chuy&ecirc;n gia, t&igrave;nh trạng lạm ph&aacute;t, suy tho&aacute;i kinh tế đang ảnh hưởng lớn đến c&aacute;c thiết bị th&ocirc;ng minh, trừ smartphone. Dự kiến, mức tăng trưởng chỉ quay trở lại v&agrave;o năm 2023.</p>', 1, '<p>Hai nh&agrave; sản xuất Trung Quốc c&oacute; thị phần thiết bị đeo th&ocirc;ng minh lớn nhất tại Việt Nam, vượt qua Samsung v&agrave; Apple.</p>', 'Huawei, Xiaomi dẫn đầu thị trường smartwatch Việt', 'Huawei, Xiaomi dẫn đầu thị trường smartwatch Việt', '-9178-166669030477.jpg', '2024-05-21 03:17:27', '2024-05-21 03:17:27'),
(10, '<p>D&ograve;ng đồng hồ myAlo c&oacute; chức năng gọi điện v&agrave; nhắn tin thoại hai chiều bảo mật cao, n&uacute;t khẩn cấp SOS bảo vệ trẻ, c&ocirc;ng nghệ định vị th&ocirc;ng minh.</p>\r\n\r\n<p>Đồng hồ myAlo c&oacute; ba model: KS62w, KS72C v&agrave; K84, ph&ugrave; hợp với trẻ 5-14 tuổi v&agrave; tương th&iacute;ch SIM Viettel, Vinaphone, Mobifone. &Ocirc;ng Nguyễn Đức Thiện, đại diện myAlo cho biết c&aacute;c sản phẩm đồng hồ định vị trẻ em do người Việt thiết kế với ng&ocirc;n ngữ ch&iacute;nh bằng tiếng Việt, giao diện dễ sử dụng với trẻ nhỏ. Thiết bị sản xuất bằng nguy&ecirc;n liệu cao cấp theo ti&ecirc;u chuẩn CE của li&ecirc;n minh ch&acirc;u &Acirc;u, an to&agrave;n cho trẻ.</p>\r\n\r\n<p><img alt=\"Đồng hồ định vị trẻ em myAlo K84 có nhiều tính năng thông minh. Ảnh: myAlo\" src=\"https://i1-sohoa.vnecdn.net/2022/09/01/Image-558420949-ExtractWord-0-4619-3476-1661998850.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=k7tMj_MJ01mAVpqVdM022g\" /></p>\r\n\r\n<p>Đồng hồ định vị trẻ em myAlo K84 c&oacute; nhiều t&iacute;nh năng th&ocirc;ng minh. Ảnh:&nbsp;<em>myAlo</em></p>\r\n\r\n<p>C&aacute;c d&ograve;ng đồng hồ định vị đều c&oacute; chức năng ch&iacute;nh l&agrave; gọi điện thoại v&agrave; gửi tin nhắn thoại hai chiều với độ bảo mật cao. Th&ocirc;ng qua ứng dụng myAlo myKids, phụ huynh dễ d&agrave;ng c&agrave;i đặt danh bạ cho b&eacute; với số lượng kh&ocirc;ng hạn chế v&agrave; chặn c&aacute;c cuộc gọi lạ ngo&agrave;i danh bạ để đảm bảo an to&agrave;n.</p>\r\n\r\n<p><img alt=\"Nghe, gọi điện thoại là chức năng chính của đồng hồ. Ảnh: myAlo\" src=\"https://i1-sohoa.vnecdn.net/2022/09/01/Image-ExtractWord-1-Out-9955-1661998850.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=DVTvOh_7_uLQvmsIoIaPWg\" /></p>\r\n\r\n<p>Nghe, gọi điện thoại l&agrave; chức năng ch&iacute;nh của đồng hồ. Ảnh:&nbsp;<em>myAlo</em></p>\r\n\r\n<p>Điểm nổi bật của đồng hồ myAlo l&agrave; n&uacute;t khẩn cấp SOS c&ocirc;ng nghệ mới. Khi gặp nguy hiểm như bị bắt nạt, lạc đường v&agrave; cảm thấy lo lắng, trẻ chỉ cần nhấn v&agrave;o n&uacute;t SOS trong ba gi&acirc;y rồi n&oacute;i. Đồng hồ sẽ tự thu &acirc;m v&agrave; gửi hai tin cảnh b&aacute;o qua ứng dụng cho đồng thời cả bố, cả mẹ v&agrave; người th&acirc;n của trẻ c&ugrave;ng l&uacute;c, nhanh ch&oacute;ng. Tin b&aacute;o gồm vị tr&iacute; v&agrave; bản thu &acirc;m lời trẻ n&oacute;i.</p>\r\n\r\n<p>Đồng hồ myAlo kh&ocirc;ng d&ugrave;ng phương ph&aacute;p gọi điện thoại đến c&aacute;c số SOS c&agrave;i sẵn theo kiểu truyền thống, tr&aacute;nh việc mất nhiều thời gian kết nối đến nhiều số điện thoại.</p>\r\n\r\n<p><img alt=\"Nút SOS công nghệ mới giúp thông báo nhanh trong tình huống khẩn cấp. Ảnh: myAlo\" src=\"https://i1-sohoa.vnecdn.net/2022/09/01/Image-57298900-ExtractWord-2-O-5832-1441-1661998851.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=aLJ_GsNw7XXCYT6nk3_pLg\" /></p>\r\n\r\n<p>N&uacute;t SOS c&ocirc;ng nghệ mới gi&uacute;p th&ocirc;ng b&aacute;o nhanh trong t&igrave;nh huống khẩn cấp. Ảnh:&nbsp;<em>myAlo</em></p>\r\n\r\n<p>Thiết bị<strong>&nbsp;</strong>c&oacute; c&ocirc;ng nghệ định vị th&ocirc;ng minh GPS, Wi-Fi v&agrave; LBS gi&uacute;p phụ huynh theo d&otilde;i trẻ từ xa. Bố mẹ chỉ cần mở ứng dụng myAlo myKids l&agrave; thấy vị tr&iacute; của con, kết nối với Google Mape để chỉ đường.</p>\r\n\r\n<p>Ứng dụng cho ph&eacute;p thiết lập nhiều v&ugrave;ng an to&agrave;n với c&aacute;c địa điểm trẻ thường xuy&ecirc;n đến như nh&agrave;, trường học, c&acirc;u lạc bộ... Khi trẻ vượt khỏi h&agrave;ng r&agrave;o an to&agrave;n, đồng hồ sẽ gửi một tin b&aacute;o cho phụ huynh k&egrave;m vị tr&iacute; của con. Cuộc gọi b&iacute; mật gi&uacute;p bố mẹ nghe &acirc;m thanh xung quanh trẻ từ xa theo thời gian thực.</p>\r\n\r\n<p>Ứng dụng myAlo myKids cũng hỗ trợ bố mẹ thiết lập 20 lịch &quot;bận học&quot; cho trẻ. Chế độ n&agrave;y sẽ cấm l&agrave;m phiền trẻ trong giờ học, mang đến kh&ocirc;ng gian y&ecirc;n tĩnh để trẻ tập trung học tập. Khi k&iacute;ch hoạt, c&aacute;c chức năng tr&ecirc;n đồng hồ sẽ bị kh&oacute;a v&agrave; chỉ cho ph&eacute;p trẻ li&ecirc;n lạc với người th&acirc;n bằng n&uacute;t khẩn cấp SOS.</p>\r\n\r\n<p><img alt=\"Đồng hồ tích hợp công nghệ định vị GPS, Wi-Fi và LBS. Ảnh: myAlo\" src=\"https://i1-sohoa.vnecdn.net/2022/09/01/Image-ExtractWord-3-Out-8085-1661998851.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=Px0cJ-beubCDG54dToV6Bg\" /></p>\r\n\r\n<p>Đồng hồ t&iacute;ch hợp c&ocirc;ng nghệ định vị GPS, Wi-Fi v&agrave; LBS. Ảnh:<em>&nbsp;myAlo</em></p>\r\n\r\n<p>C&aacute;c sản phẩm đồng hồ định vị trẻ em myAlo c&ograve;n được t&iacute;ch hợp nhiều t&iacute;nh năng hữu &iacute;ch kh&aacute;c, gi&uacute;p trẻ lu&ocirc;n th&iacute;ch th&uacute; khi sử dụng như b&aacute;o thức để nhắc nhở; đếm bước ch&acirc;n khuyến kh&iacute;ch vận động. Đồng hồ cũng t&iacute;ch điểm thưởng để kh&iacute;ch lệ trẻ mỗi khi ho&agrave;n th&agrave;nh tốt nhiệm vụ; tr&ograve; chơi b&eacute; th&ocirc;ng minh r&egrave;n luyện t&iacute;nh ki&ecirc;n tr&igrave;, đam m&ecirc; chiến thắng...</p>', 1, '<p>D&ograve;ng đồng hồ myAlo c&oacute; chức năng gọi điện v&agrave; nhắn tin thoại hai chiều bảo mật cao, n&uacute;t khẩn cấp SOS bảo vệ trẻ, c&ocirc;ng nghệ định vị th&ocirc;ng minh.</p>', 'Đồng hồ liên lạc, định vị trẻ từ xa', 'Đồng hồ liên lạc, định vị trẻ từ xa', 'Image-558420949-ExtractWord-0-4619-3476-166199885043.png', '2024-05-21 03:19:45', '2024-05-21 03:19:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brand`
--

CREATE TABLE `brand` (
  `idBrand` int(10) UNSIGNED NOT NULL,
  `BrandName` varchar(255) NOT NULL,
  `BrandSlug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brand`
--

INSERT INTO `brand` (`idBrand`, `BrandName`, `BrandSlug`, `created_at`, `updated_at`) VALUES
(1, 'CASIO', 'casio', '2022-07-30 09:51:13', '2024-05-18 02:56:18'),
(2, 'CITIZEN', 'citizen', '2022-07-31 11:53:49', '2024-05-18 02:57:05'),
(3, 'SEIKO', 'seiko', '2022-07-31 11:53:58', '2024-05-18 02:57:47'),
(4, 'AMILA', 'amila', '2022-11-14 10:09:23', '2022-11-14 10:09:23'),
(5, 'DANIEL', 'daniel', '2024-05-20 14:20:45', '2024-05-20 14:20:45'),
(6, 'OLYM PIANUS', 'olym-pianus', '2024-05-20 18:10:09', '2024-05-20 18:10:09'),
(7, 'TISSOT CARSON', 'tissot-carson', '2024-05-20 18:21:20', '2024-05-20 18:21:20'),
(8, 'MIDO', 'mido', '2024-05-20 18:31:04', '2024-05-20 18:31:04'),
(9, 'BABY', 'baby', '2024-05-20 18:59:51', '2024-05-20 18:59:51'),
(10, 'RHYTHM', 'rhythm', '2024-05-20 19:09:38', '2024-05-20 19:09:38'),
(11, 'XIAOMI', 'xiaomi', '2024-05-21 02:14:55', '2024-05-21 02:14:55'),
(12, 'APPLE WATCH', 'apple-watch', '2024-05-21 02:31:22', '2024-05-21 02:31:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `idCart` int(10) UNSIGNED NOT NULL,
  `idCustomer` int(11) UNSIGNED NOT NULL,
  `idProduct` int(11) UNSIGNED NOT NULL,
  `idProAttr` int(11) UNSIGNED NOT NULL,
  `AttributeProduct` varchar(50) NOT NULL,
  `PriceNew` int(11) NOT NULL,
  `QuantityBuy` int(11) NOT NULL,
  `Total` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `idCategory` int(10) UNSIGNED NOT NULL,
  `CategoryName` varchar(255) NOT NULL,
  `CategorySlug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`idCategory`, `CategoryName`, `CategorySlug`, `created_at`, `updated_at`) VALUES
(1, 'Đồng Hồ Nam', 'dong-ho-nam', '2022-07-30 09:51:22', '2024-05-18 02:51:20'),
(2, 'Đồng Hồ Nữ', 'dong-ho-nu', '2022-07-30 09:51:24', '2024-05-18 02:51:36'),
(3, 'Đồng Hồ Trẻ Em', 'dong-ho-tre-em', '2022-07-30 09:51:27', '2024-05-18 02:51:54'),
(4, 'Đồng Hồ Đôi', 'dong-ho-doi', '2022-07-30 09:51:30', '2024-05-18 02:53:09'),
(5, 'Đồng Hồ Thông Minh', 'dong-ho-thong-minh', '2022-07-30 09:51:32', '2024-05-18 02:53:47'),
(6, 'Phụ Kiện', 'phu-kien', '2022-07-30 09:51:34', '2024-05-18 02:54:11'),
(7, 'Sản Phẩm Khác', 'san-pham-khac', '2022-10-04 15:13:30', '2024-05-18 02:54:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `idCustomer` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `PhoneNumber` varchar(20) DEFAULT NULL,
  `CustomerName` varchar(50) DEFAULT NULL,
  `Avatar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`idCustomer`, `username`, `password`, `PhoneNumber`, `CustomerName`, `Avatar`, `created_at`, `updated_at`) VALUES
(5, 'test123', '47ec2dd791e31e2ef2076caf64ed9b3d', NULL, NULL, NULL, '2024-05-17 10:50:36', '2023-08-07 10:50:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2022_07_29_190711_create_tbl_product_table', 2),
(12, '2022_07_29_202441_create_saleproduct_table', 3),
(13, '2022_07_30_154639_create_brand_table', 4),
(14, '2022_07_30_154846_create_category_table', 4),
(15, '2022_07_30_155010_create_attribute_table', 4),
(16, '2022_07_30_155047_create_attributevalue_table', 4),
(17, '2022_07_30_155155_create_productattribute_table', 4),
(18, '2022_07_30_155246_create_productimage_table', 4),
(19, '2022_07_30_160811_create_admin_table', 5),
(20, '2022_07_30_162600_create_bill_table', 6),
(22, '2022_07_30_164010_create_billinfo_table', 7),
(23, '2022_07_30_171111_create_cart_table', 8),
(24, '2022_07_30_171621_create_wishlist_table', 9),
(25, '2022_07_30_171653_create_compare_table', 9),
(26, '2022_07_30_171717_create_blog_table', 9),
(27, '2022_07_30_171748_create_customer_table', 9),
(28, '2022_07_30_171916_create_statistic_table', 9),
(29, '2022_07_30_171958_create_voucher_table', 9),
(30, '2022_07_30_172031_create_billhistory_table', 9),
(31, '2022_07_30_172109_create_addresscustomer_table', 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `idProduct` int(10) UNSIGNED NOT NULL,
  `idCategory` int(11) UNSIGNED NOT NULL,
  `idBrand` int(11) UNSIGNED NOT NULL,
  `QuantityTotal` int(11) NOT NULL,
  `ProductName` varchar(255) NOT NULL,
  `ProductSlug` varchar(255) NOT NULL DEFAULT '0',
  `DesProduct` longtext NOT NULL,
  `ShortDes` text NOT NULL,
  `Price` int(255) NOT NULL,
  `Sold` int(11) NOT NULL DEFAULT 0,
  `StatusPro` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`idProduct`, `idCategory`, `idBrand`, `QuantityTotal`, `ProductName`, `ProductSlug`, `DesProduct`, `ShortDes`, `Price`, `Sold`, `StatusPro`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 5, 'ĐỒNG HỒ NAM CASIO G-SHOCK GA-100A-9AHDR', 'dong-ho-nam-casio-g-shock-ga-100a-9ahdr', '<p>M&Ocirc; TẢ ĐỒNG HỒ NAM CASIO G-SHOCK GA-100A-9AHDR</p>\r\n\r\n<p><strong><u>T&iacute;nh năng:</u></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>\r\n	<ul>\r\n		<li>Giờ thế giới</li>\r\n	</ul>\r\n\r\n	<p><strong>Giờ thế giới 29 m&uacute;i giờ (48 th&agrave;nh phố + giờ phối hợp quốc tế), bật/tắt tiết kiệm &aacute;nh s&aacute;ng ban ng&agrave;y, chuyển đổi th&agrave;nh phố qu&ecirc; hương/giờ thế giới</strong></p>\r\n	</li>\r\n	<li>\r\n	<ul>\r\n		<li>\r\n		<h4>Đồng hồ bấm giờ</h4>\r\n		</li>\r\n	</ul>\r\n\r\n	<p><strong>Đồng hồ bấm giờ 1/1000 gi&acirc;y Khả năng đo: 99:59&#39;59.999&#39;&#39; Chế độ đo: Thời gian đ&atilde; tr&ocirc;i qua, thời gian v&ograve;ng chạy, ngắt giờ Kh&aacute;c: Tốc độ (0 đến 1998 đơn vị/giờ), Nhập khoảng c&aacute;ch (0,0 đến 99,9) Chỉ b&aacute;o Mach (tốc độ) vượt qu&aacute; 1225 đơn vị/giờ)</strong></p>\r\n	</li>\r\n	<li>\r\n	<ul>\r\n		<li>\r\n		<h4>Hẹn giờ</h4>\r\n		</li>\r\n	</ul>\r\n\r\n	<p><strong>Đồng hồ đếm ngược Đơn vị đo: 1 gi&acirc;y Khoảng đếm ngược: 24 giờ Khoảng c&agrave;i đặt thời gian bắt đầu đếm ngược: 1 ph&uacute;t đến 24 giờ (khoảng tăng 1 ph&uacute;t v&agrave; khoảng tăng 1 giờ) Kh&aacute;c: Tự động lặp lại</strong></p>\r\n	</li>\r\n	<li>\r\n	<ul>\r\n		<li>\r\n		<h4>T&iacute;n hiệu b&aacute;o thức/thời gian h&agrave;ng giờ</h4>\r\n		</li>\r\n	</ul>\r\n\r\n	<p><strong>5 chế độ b&aacute;o thức h&agrave;ng ng&agrave;y (với 1 chế độ b&aacute;o lặp)</strong></p>\r\n\r\n	<p><strong>T&iacute;n hiệu thời gian h&agrave;ng giờ</strong></p>\r\n	</li>\r\n	<li>\r\n	<ul>\r\n		<li>\r\n		<h4>&Aacute;nh s&aacute;ng</h4>\r\n		</li>\r\n	</ul>\r\n\r\n	<p><strong>Đ&egrave;n LED C&ocirc;ng tắc đ&egrave;n tự động, thời lượng chiếu s&aacute;ng c&oacute; thể lựa chọn (1,5 gi&acirc;y hoặc 3 gi&acirc;y), ph&aacute;t s&aacute;ng sau</strong></p>\r\n	</li>\r\n	<li>\r\n	<ul>\r\n		<li>\r\n		<h4>M&agrave;u s&aacute;ng</h4>\r\n		</li>\r\n	</ul>\r\n\r\n	<p><strong>LED: Hổ ph&aacute;ch</strong></p>\r\n	</li>\r\n	<li>\r\n	<ul>\r\n		<li>\r\n		<h4>Lịch</h4>\r\n		</li>\r\n	</ul>\r\n\r\n	<p><strong>Lịch tự động ho&agrave;n to&agrave;n (đến năm 2099)</strong></p>\r\n	</li>\r\n	<li>\r\n	<ul>\r\n		<li>\r\n		<h4>Sự ch&iacute;nh x&aacute;c</h4>\r\n		</li>\r\n	</ul>\r\n\r\n	<p><strong>Độ ch&iacute;nh x&aacute;c: &plusmn;15 gi&acirc;y mỗi th&aacute;ng</strong></p>\r\n	</li>\r\n	<li>\r\n	<ul>\r\n		<li>\r\n		<h4>C&aacute;c t&iacute;nh năng kh&aacute;c</h4>\r\n		</li>\r\n	</ul>\r\n\r\n	<p><strong>định dạng 12/24 giờ</strong></p>\r\n\r\n	<p><strong>Giờ hiện h&agrave;nh th&ocirc;ng thường: Đồng hồ kim: 2 kim (giờ, ph&uacute;t (kim di chuyển 20 gi&acirc;y một lần)), 1 mặt số (tốc độ) Đồng hồ số: Giờ, ph&uacute;t, gi&acirc;y, chiều, th&aacute;ng, ng&agrave;y, thứ</strong></p>\r\n	</li>\r\n</ul>', '<p>* M&Ocirc; TẢ SẢN PHẨM:<br />\r\n- M&atilde; sản phẩm : GA-100A-9AHDR<br />\r\n- Loại m&aacute;y :&nbsp;Quartz (M&aacute;y pin - điện tử)<br />\r\n- Đường k&iacute;nh:&nbsp;51.2mm</p>\r\n\r\n<div class=\"ddict_div\" style=\"left:256.5px; max-width:150px; top:104.391px\"><img class=\"ddict_audio\" src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/img/audio.png\" />\r\n<p>.</p>\r\n</div>\r\n\r\n<div class=\"ddict_btn\" style=\"left:409.969px; top:54px\"><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></div>\r\n\r\n<div class=\"ddict_btn\" style=\"left:190.578px; top:68px\"><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></div>\r\n\r\n<div class=\"ddict_btn\" style=\"left:308.312px; top:94px\"><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></div>', 3950000, 4, 1, '2022-07-30 10:03:45', '2024-05-19 07:32:23'),
(2, 2, 1, 1, 'ĐỒNG HỒ NỮ CASIO MDV-10-1A1VDF', 'dong-ho-nu-casio-mdv-10-1a1vdf', '<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Giới t&iacute;nh:</td>\r\n			<td>Nữ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt tr&ograve;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Quartz (M&aacute;y pin - điện tử)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phong c&aacute;ch:</td>\r\n			<td>Thể thao</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mặt k&iacute;nh:</td>\r\n			<td>Mặt k&iacute;nh cứng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>38.5mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu vỏ:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ d&agrave;y:</td>\r\n			<td>10.4mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu d&acirc;y:</td>\r\n			<td>Nhựa</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ chịu nước:</td>\r\n			<td>50m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Lug to Lug:</td>\r\n			<td>42mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>T&iacute;nh năng kh&aacute;c:</td>\r\n			<td>Lịch ng&agrave;y. Bezel nh&ocirc;m. D&acirc;y đeo bằng nhựa resin sinh học.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:</td>\r\n			<td>1 năm quốc tế</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>Đen</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh Duy Anh:</td>\r\n			<td>5 năm (đ&atilde; bao gồm Bảo h&agrave;nh Quốc tế). Thay pin miễn ph&iacute; trọn đời.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Xuất xứ thương hiệu:</td>\r\n			<td>Nhật Bản</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<div class=\"ddict_btn\" style=\"left:960px; top:7px\"><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></div>', '<p>M&atilde; sản phẩm: MDV-10-1A1VDF</p>\r\n\r\n<p>Loại m&aacute;y:Quartz (M&aacute;y pin - điện tử)</p>\r\n\r\n<p>Đường k&iacute;nh:38.5mm</p>\r\n\r\n<div class=\"ddict_div\" style=\"left:66.3594px; max-width:150px; top:109.594px\"><img class=\"ddict_audio\" src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/img/audio.png\" />\r\n<p>38,5mm</p>\r\n</div>', 2700000, 2, 1, '2022-07-30 10:05:24', '2024-05-19 08:15:59'),
(3, 2, 2, 3, 'ĐỒNG HỒ CITIZEN EU6096-58A', 'dong-ho-citizen-eu6096-58a', '<p>* M&Ocirc; TẢ SẢN PHẨM<br />\r\n- Sản xuất tại Việt Nam<br />\r\n- Hệ size từ 8 tuổi đến 12 tuổi<br />\r\n- Chất liệu nhung tăm cao cấp mềm mịn.<br />\r\n- &Aacute;o kho&aacute;c nhung tăm t&uacute;i hộp chắc chắn l&agrave; item kh&ocirc;ng thể thiếu cho c&aacute;c ch&agrave;ng trong m&ugrave;a Thu Đ&ocirc;ng n&agrave;y.<br />\r\n- Dễ d&agrave;ng phối hợp với c&aacute;c item kh&aacute;c l&agrave; c&aacute;c ch&agrave;ng đ&atilde; c&oacute; vẻ ngo&agrave;i &quot;so&aacute;i ca&quot;.</p>\r\n\r\n<p>* HƯỚNG DẪN BẢO QUẢN<br />\r\nGiặt tay hoặc giặt bằng m&aacute;y kh&ocirc;ng qu&aacute; 30 độ C.<br />\r\nL&agrave; ở nhiệt độ thường.<br />\r\nKh&ocirc;ng giặt chung đồ bị phai m&agrave;u.<br />\r\nKh&ocirc;ng ng&acirc;m sản phẩm qu&aacute; 30 ph&uacute;t với x&agrave; ph&ograve;ng giặt.<br />\r\nKh&ocirc;ng sử dụng chất tẩy mạnh.</p>\r\n\r\n<p>* CHÍNH SÁCH ĐỔI SẢN PHẨM<br />\r\nThời gian đổi sản phẩm: Trong v&ograve;ng 7 ng&agrave;y theo qui định ShopeeMall.<br />\r\nSản phẩm phải c&ograve;n nguy&ecirc;n m&aacute;c, chưa qua sử dụng, giặt tẩy, kh&ocirc;ng bị dơ, bẩn hoặc bị hư hỏng bởi c&aacute;c t&aacute;c nh&acirc;n b&ecirc;n ngo&agrave;i.<br />\r\nĐể lựa chọn sản phẩm vừa vặn với b&eacute;, c&aacute;c mẹ c&oacute; thể tham khảo bảng size hoặc gửi tin nhắn ngay cho Lovekids để nhận được hỗ trợ nh&eacute;!<br />\r\n----------------------------------------------------------<br />\r\nC&ocirc;ng ty Cổ phần LoveKids được th&agrave;nh lập v&agrave;o năm 2015, hoạt động trong lĩnh vực sản xuất v&agrave; ph&acirc;n phối sản phẩm thời trang trẻ em xuất khẩu. Ch&uacute;ng t&ocirc;i mong muốn mang đến một sản phẩm của người Việt nhưng chất lượng c&oacute; thể đ&aacute;p ứng được nhu cầu của kh&aacute;ch h&agrave;ng tr&ecirc;n to&agrave;n thế giới. &nbsp;Hiện nay, c&aacute;c sản phẩm của ch&uacute;ng t&ocirc;i đ&atilde; c&oacute; mặt tại nhiều cửa h&agrave;ng v&agrave; trung t&acirc;m thương mại lớn ở Việt Nam c&ugrave;ng hơn 100,000 kh&aacute;ch h&agrave;ng tin tưởng v&agrave; ủng hộ. Lovekids đang kh&ocirc;ng ngừng nỗ lực để khẳng định t&ecirc;n tuổi của m&igrave;nh trong l&agrave;ng thời trang trẻ em</p>', '<p>* M&Ocirc; TẢ SẢN PHẨM<br />\r\n- Sản xuất tại Việt Nam<br />\r\n- Hệ size từ 8 tuổi đến 12 tuổi<br />\r\n- Chất liệu nhung tăm cao cấp mềm mịn.<br />\r\n- &Aacute;o kho&aacute;c nhung tăm t&uacute;i hộp chắc chắn l&agrave; item kh&ocirc;ng thể thiếu cho c&aacute;c ch&agrave;ng trong m&ugrave;a Thu Đ&ocirc;ng n&agrave;y.<br />\r\n- Dễ d&agrave;ng phối hợp với c&aacute;c item kh&aacute;c l&agrave; c&aacute;c ch&agrave;ng đ&atilde; c&oacute; vẻ ngo&agrave;i &quot;so&aacute;i ca&quot;</p>', 3400000, 6, 1, '2022-07-30 10:06:38', '2024-05-19 08:55:44'),
(59, 1, 2, 4, 'ĐỒNG HỒ NAM CITIZEN AN3688-58H', 'ĐỒNG HỒ NAM CITIZEN AN3688-58H', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Giới t&iacute;nh:</td>\r\n			<td>Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt tr&ograve;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Quartz Chronograph (M&aacute;y pin bấm giờ thể thao)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phong c&aacute;ch:</td>\r\n			<td>Thể thao</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mặt k&iacute;nh:</td>\r\n			<td>Mặt k&iacute;nh cứng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>44mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu vỏ:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ d&agrave;y:</td>\r\n			<td>11.6mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu d&acirc;y:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size d&acirc;y:</td>\r\n			<td>22mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ chịu nước:</td>\r\n			<td>100m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>T&iacute;nh năng kh&aacute;c:</td>\r\n			<td>Lịch ng&agrave;y. Chronograph. Tachymeter.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:</td>\r\n			<td>1 năm quốc tế</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>X&aacute;m</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>* M&Ocirc; TẢ SẢN PHẨM:</p>\r\n\r\n<p>M&atilde; sản phẩm: AN3688-58H</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Loại m&aacute;y: Quartz Chronograph (M&aacute;y pin bấm giờ thể thao)</p>\r\n	</li>\r\n	<li>\r\n	<p>Đường k&iacute;nh: 44mm</p>\r\n	</li>\r\n</ul>', 5885000, 0, 1, '2024-05-20 13:35:35', '2024-05-20 13:35:35'),
(60, 1, 2, 7, 'ĐỒNG HỒ NAM CITIZEN AN8210-56E', 'ĐỒNG HỒ NAM CITIZEN AN8210-56E', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Giới t&iacute;nh:</td>\r\n			<td>Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt tr&ograve;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Quartz Chronograph (M&aacute;y pin bấm giờ thể thao)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phong c&aacute;ch:</td>\r\n			<td>Hiện đại</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mặt k&iacute;nh:</td>\r\n			<td>Mặt k&iacute;nh cứng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>42mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu vỏ:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ d&agrave;y:</td>\r\n			<td>11.2mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu d&acirc;y:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size d&acirc;y:</td>\r\n			<td>22mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ chịu nước:</td>\r\n			<td>50m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>T&iacute;nh năng kh&aacute;c:</td>\r\n			<td>Lịch ng&agrave;y. Chronograph.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:</td>\r\n			<td>1 năm quốc tế</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>Đen</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: AN8210-56E</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Loại m&aacute;y :Quartz Chronograph (M&aacute;y pin bấm giờ thể thao)</p>\r\n	</li>\r\n	<li>\r\n	<p>Đường k&iacute;nh: 42mm</p>\r\n	</li>\r\n</ul>', 5585000, 0, 1, '2024-05-20 13:40:18', '2024-05-20 13:40:18'),
(61, 1, 2, 8, 'ĐỒNG HỒ CITIZEN AO3033-00L So sánh', 'ĐỒNG HỒ CITIZEN AO3033-00L So sánh', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Giới t&iacute;nh:</td>\r\n			<td>Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt tr&ograve;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Quartz (M&aacute;y pin - điện tử)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phong c&aacute;ch:</td>\r\n			<td>Hiện đại</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mặt k&iacute;nh:</td>\r\n			<td>Mặt k&iacute;nh cứng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>44mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu vỏ:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ mạ v&agrave;ng c&ocirc;ng nghệ PVD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu d&acirc;y:</td>\r\n			<td>D&acirc;y da</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ chịu nước:</td>\r\n			<td>50m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:</td>\r\n			<td>1 năm quốc tế</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>Xanh lam</td>\r\n		</tr>\r\n		<tr>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: AO3033-00L</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Loại m&aacute;y:Quartz (M&aacute;y pin - điện tử)</p>\r\n	</li>\r\n	<li>\r\n	<p>Đường k&iacute;nh:44mm</p>\r\n	</li>\r\n</ul>', 5600000, 0, 1, '2024-05-20 13:43:00', '2024-05-20 13:43:00'),
(62, 1, 1, 15, 'ĐỒNG HỒ NAM CASIO W-737HX-5AVDF', 'ĐỒNG HỒ NAM CASIO W-737HX-5AVDF', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Giới t&iacute;nh:</td>\r\n			<td>Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt vu&ocirc;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Quartz (M&aacute;y pin - điện tử)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phong c&aacute;ch:</td>\r\n			<td>Thể thao</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mặt k&iacute;nh:</td>\r\n			<td>Mặt k&iacute;nh cứng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>45.7mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu vỏ:</td>\r\n			<td>Nhựa</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ d&agrave;y:</td>\r\n			<td>14mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu d&acirc;y:</td>\r\n			<td>Nhựa</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ chịu nước:</td>\r\n			<td>100m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Lug to Lug:</td>\r\n			<td>51.9mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:</td>\r\n			<td>1 năm quốc tế</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>Trắng</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: W-737HX-5AVDF</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Loại m&aacute;y: Quartz (M&aacute;y pin - điện tử)</p>\r\n	</li>\r\n	<li>\r\n	<p>Đường k&iacute;nh: 45.7mm</p>\r\n	</li>\r\n</ul>', 1150000, 0, 1, '2024-05-20 13:45:06', '2024-05-20 13:45:06'),
(63, 1, 1, 15, 'ĐỒNG HỒ NAM CASIO W-737H-1A2VDF', 'ĐỒNG HỒ NAM CASIO W-737H-1A2VDF', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Giới t&iacute;nh:</td>\r\n			<td>Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt vu&ocirc;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Quartz (M&aacute;y pin - điện tử)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phong c&aacute;ch:</td>\r\n			<td>Thể thao</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mặt k&iacute;nh:</td>\r\n			<td>Mặt k&iacute;nh cứng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>45.7mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu vỏ:</td>\r\n			<td>Nhựa</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ d&agrave;y:</td>\r\n			<td>14mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu d&acirc;y:</td>\r\n			<td>Nhựa</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ chịu nước:</td>\r\n			<td>100m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Lug to Lug:</td>\r\n			<td>51.9mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:</td>\r\n			<td>1 năm quốc tế</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>Trắng</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: W-737H-1A2VDF</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Loại m&aacute;y: Quartz (M&aacute;y pin - điện tử)</p>\r\n	</li>\r\n	<li>\r\n	<p>Đường k&iacute;nh: 45.7mm</p>\r\n	</li>\r\n</ul>', 1191000, 0, 1, '2024-05-20 13:47:28', '2024-05-20 13:47:28'),
(64, 1, 1, 15, 'ĐỒNG HỒ CASIO A100WE-1ADF', 'ĐỒNG HỒ CASIO A100WE-1ADF', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Giới t&iacute;nh:</td>\r\n			<td>Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt chữ nhật</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Quartz (M&aacute;y pin - điện tử)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phong c&aacute;ch:</td>\r\n			<td>Thể thao</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mặt k&iacute;nh:</td>\r\n			<td>Mặt k&iacute;nh cứng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>40.7mm - 32.7mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu vỏ:</td>\r\n			<td>Nhựa</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ d&agrave;y:</td>\r\n			<td>9.2mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu d&acirc;y:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ chịu nước:</td>\r\n			<td>30m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:</td>\r\n			<td>1 năm quốc tế</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>Đen</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: A100WE-1ADF</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Loại m&aacute;y: Quartz (M&aacute;y pin - điện tử)</p>\r\n	</li>\r\n	<li>\r\n	<p>Đường k&iacute;nh: 40.7mm - 32.7mm</p>\r\n	</li>\r\n</ul>', 1686000, 0, 1, '2024-05-20 13:51:20', '2024-05-20 13:51:20'),
(65, 1, 3, 7, 'ĐỒNG HỒ NAM SEIKO SUR446P1', 'ĐỒNG HỒ NAM SEIKO SUR446P1', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Giới t&iacute;nh:</td>\r\n			<td>Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt tr&ograve;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Quartz (M&aacute;y pin - điện tử)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phong c&aacute;ch:</td>\r\n			<td>Hiện đại</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mặt k&iacute;nh:</td>\r\n			<td>Sapphire</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>40.2mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu vỏ:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ mạ v&agrave;ng c&ocirc;ng nghệ PVD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ d&agrave;y:</td>\r\n			<td>8.4mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu d&acirc;y:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L mạ v&agrave;ng c&ocirc;ng nghệ PVD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size d&acirc;y:</td>\r\n			<td>20mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ chịu nước:</td>\r\n			<td>100m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Lug to Lug:</td>\r\n			<td>47.5mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>T&iacute;nh năng kh&aacute;c:</td>\r\n			<td>Lịch thứ, lịch ng&agrave;y.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:</td>\r\n			<td>1 năm quốc tế</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: SUR446P1</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Loại m&aacute;y: Quartz (M&aacute;y pin - điện tử)</p>\r\n	</li>\r\n	<li>\r\n	<p>Đường k&iacute;nh: 40.2mm</p>\r\n	</li>\r\n</ul>', 7480000, 0, 1, '2024-05-20 13:53:27', '2024-05-20 13:53:27'),
(66, 1, 3, 5, 'ĐỒNG HỒ SEIKO SUR322P1', 'ĐỒNG HỒ SEIKO SUR322P1', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Giới t&iacute;nh:</td>\r\n			<td>Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt tr&ograve;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Quartz (M&aacute;y pin - điện tử)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phong c&aacute;ch:</td>\r\n			<td>Hiện đại</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mặt k&iacute;nh:</td>\r\n			<td>Sapphire</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>36mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu vỏ:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ mạ v&agrave;ng c&ocirc;ng nghệ PVD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ d&agrave;y:</td>\r\n			<td>8.2mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu d&acirc;y:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L mạ v&agrave;ng c&ocirc;ng nghệ PVD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ chịu nước:</td>\r\n			<td>100m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>T&iacute;nh năng kh&aacute;c:</td>\r\n			<td>Lịch ng&agrave;y.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:</td>\r\n			<td>1 năm quốc tế</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: SUR322P1</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Loại m&aacute;y: Quartz (M&aacute;y pin - điện tử)</p>\r\n	</li>\r\n	<li>\r\n	<p>Đường k&iacute;nh: 36mm</p>\r\n	</li>\r\n</ul>', 720000, 0, 1, '2024-05-20 13:55:18', '2024-05-20 13:55:18'),
(67, 1, 3, 5, 'ĐỒNG HỒ NAM SEIKO SRK047P1', 'ĐỒNG HỒ NAM SEIKO SRK047P1', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Giới t&iacute;nh:</td>\r\n			<td>Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt tr&ograve;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Quartz (M&aacute;y pin - điện tử)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phong c&aacute;ch:</td>\r\n			<td>Hiện đại</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mặt k&iacute;nh:</td>\r\n			<td>Sapphire</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>39mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu vỏ:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ d&agrave;y:</td>\r\n			<td>8mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu d&acirc;y:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size d&acirc;y:</td>\r\n			<td>20mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ chịu nước:</td>\r\n			<td>50m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Lug to Lug:</td>\r\n			<td>46.6mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:</td>\r\n			<td>1 năm quốc tế</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>Trắng</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: SRK047P1</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Loại m&aacute;y: Quartz (M&aacute;y pin - điện tử)</p>\r\n	</li>\r\n	<li>\r\n	<p>Đường k&iacute;nh: 39mm</p>\r\n	</li>\r\n</ul>', 6230000, 0, 1, '2024-05-20 13:59:02', '2024-05-20 13:59:02'),
(68, 1, 3, 7, 'ĐỒNG HỒ SEIKO SUR344P1', 'ĐỒNG HỒ SEIKO SUR344P1', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Giới t&iacute;nh:</td>\r\n			<td>Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt tr&ograve;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Quartz (M&aacute;y pin - điện tử)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phong c&aacute;ch:</td>\r\n			<td>Hiện đại</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mặt k&iacute;nh:</td>\r\n			<td>Sapphire</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>40.2mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu vỏ:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ mạ v&agrave;ng c&ocirc;ng nghệ PVD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu d&acirc;y:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ chịu nước:</td>\r\n			<td>100m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>T&iacute;nh năng kh&aacute;c:</td>\r\n			<td>Lịch thứ, lịch ng&agrave;y</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:</td>\r\n			<td>1 năm quốc tế</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>N&acirc;u</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: SUR344P1</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Loại m&aacute;y: Quartz (M&aacute;y pin - điện tử)</p>\r\n	</li>\r\n	<li>\r\n	<p>Đường k&iacute;nh: 40.2mm</p>\r\n	</li>\r\n</ul>', 6250000, 0, 1, '2024-05-20 14:00:37', '2024-05-20 14:00:37'),
(69, 1, 3, 10, 'ĐỒNG HỒ SEIKO SUR339P1S', 'ĐỒNG HỒ SEIKO SUR339P1S', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Giới t&iacute;nh:</td>\r\n			<td>Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt tr&ograve;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Quartz (M&aacute;y pin - điện tử)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phong c&aacute;ch:</td>\r\n			<td>Hiện đại</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mặt k&iacute;nh:</td>\r\n			<td>Sapphire</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>40.2mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu vỏ:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu d&acirc;y:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ chịu nước:</td>\r\n			<td>100m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>T&iacute;nh năng kh&aacute;c:</td>\r\n			<td>Lịch thứ, lịch ng&agrave;y</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:</td>\r\n			<td>1 năm quốc tế</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>Trắng</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&atilde; sản phẩm: SUR339P1S</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Loại m&aacute;y: Quartz (M&aacute;y pin - điện tử)</p>\r\n	</li>\r\n	<li>\r\n	<p>Đường k&iacute;nh: 40.2mm</p>\r\n	</li>\r\n</ul>', 6030000, 0, 1, '2024-05-20 14:02:37', '2024-05-20 14:02:37'),
(70, 2, 4, 15, 'ĐỒNG HỒ NỮ DANIEL WELLINGTON QUADRO PRESSED SHEFFIELD GOLD DW00100559', 'ĐỒNG HỒ NỮ DANIEL WELLINGTON QUADRO PRESSED SHEFFIELD GOLD DW00100559', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Giới t&iacute;nh:</td>\r\n			<td>Nữ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt chữ nhật</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Quartz (M&aacute;y pin - điện tử)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phong c&aacute;ch:</td>\r\n			<td>Thời trang</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mặt k&iacute;nh:</td>\r\n			<td>Mặt k&iacute;nh cứng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>26mm -20mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu vỏ:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ mạ v&agrave;ng c&ocirc;ng nghệ PVD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ d&agrave;y:</td>\r\n			<td>6mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu d&acirc;y:</td>\r\n			<td>D&acirc;y da</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size d&acirc;y:</td>\r\n			<td>10mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ chịu nước:</td>\r\n			<td>30m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:</td>\r\n			<td>2 năm quốc tế</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>Trắng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh Duy Anh:</td>\r\n			<td>5 năm (đ&atilde; bao gồm Bảo h&agrave;nh Quốc tế). Thay pin miễn ph&iacute; trọn đời.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Xuất xứ thương hiệu:</td>\r\n			<td>Thụy Điển</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: DW00100559</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Loại m&aacute;y: Quartz (M&aacute;y pin - điện tử)</p>\r\n	</li>\r\n	<li>\r\n	<p>Đường k&iacute;nh: 26mm -20mm</p>\r\n	</li>\r\n</ul>', 4120000, 0, 1, '2024-05-20 14:10:41', '2024-05-20 14:10:41'),
(71, 2, 4, 10, 'ĐỒNG HỒ NỮ DANIEL WELLINGTON QUADRO MINI MELROSE EMERALD DW00100648', 'ĐỒNG HỒ NỮ DANIEL WELLINGTON QUADRO MINI MELROSE EMERALD DW00100648', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Giới t&iacute;nh:</td>\r\n			<td>Nữ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt chữ nhật</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Quartz (M&aacute;y pin - điện tử)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phong c&aacute;ch:</td>\r\n			<td>Thời trang</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mặt k&iacute;nh:</td>\r\n			<td>Mặt k&iacute;nh cứng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>15.4mm - 18.2mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu vỏ:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ mạ v&agrave;ng c&ocirc;ng nghệ PVD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu d&acirc;y:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L dạng lưới</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size d&acirc;y:</td>\r\n			<td>6mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ chịu nước:</td>\r\n			<td>30m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:</td>\r\n			<td>2 năm quốc tế</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>Xanh L&aacute;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&atilde; sản phẩm: DW00100648</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Loại m&aacute;y: Quartz (M&aacute;y pin - điện tử)</p>\r\n	</li>\r\n	<li>\r\n	<p>Đường k&iacute;nh: 15.4mm - 18.2mm</p>\r\n	</li>\r\n</ul>', 4431000, 0, 1, '2024-05-20 14:12:03', '2024-05-20 14:12:03'),
(72, 2, 4, 10, 'DANIEL WELLINGTON QUADRO CORAL DW00100509', 'DANIEL WELLINGTON QUADRO CORAL DW00100509', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Giới t&iacute;nh:</td>\r\n			<td>Nữ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt chữ nhật</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Quartz (M&aacute;y pin - điện tử)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phong c&aacute;ch:</td>\r\n			<td>Thời trang</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mặt k&iacute;nh:</td>\r\n			<td>Mặt k&iacute;nh cứng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>20mm - 26mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu vỏ:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ d&agrave;y:</td>\r\n			<td>6mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu d&acirc;y:</td>\r\n			<td>D&acirc;y d&ugrave;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size d&acirc;y:</td>\r\n			<td>10mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ chịu nước:</td>\r\n			<td>30m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:</td>\r\n			<td>2 năm quốc tế</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: DW00100509</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Loại m&aacute;y: Quartz (M&aacute;y pin - điện tử)</p>\r\n	</li>\r\n	<li>\r\n	<p>Đường k&iacute;nh: 20mm - 26mm</p>\r\n	</li>\r\n</ul>', 4533000, 0, 1, '2024-05-20 14:13:58', '2024-05-20 14:13:58'),
(73, 2, 4, 15, 'DANIEL WELLINGTON QUADRO PRESSED SUFFOLK DW00100454', 'DANIEL WELLINGTON QUADRO PRESSED SUFFOLK DW00100454', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Giới t&iacute;nh:</td>\r\n			<td>Nữ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt chữ nhật</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Quartz (M&aacute;y pin - điện tử)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phong c&aacute;ch:</td>\r\n			<td>Sang trọng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mặt k&iacute;nh:</td>\r\n			<td>Mặt k&iacute;nh cứng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>20mm - 26mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu vỏ:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ d&agrave;y:</td>\r\n			<td>6mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu d&acirc;y:</td>\r\n			<td>D&acirc;y da</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size d&acirc;y:</td>\r\n			<td>10mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ chịu nước:</td>\r\n			<td>30m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:</td>\r\n			<td>2 năm quốc tế</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>Trắng</td>\r\n		</tr>\r\n		<tr>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: DW00100454</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Loại m&aacute;y: Quartz (M&aacute;y pin - điện tử)</p>\r\n	</li>\r\n	<li>\r\n	<p>Đường k&iacute;nh: 20mm - 26mm</p>\r\n	</li>\r\n</ul>', 4278000, 0, 1, '2024-05-20 14:16:42', '2024-05-20 14:16:42'),
(74, 2, 4, 12, 'DANIEL WELLINGTON QUADRO PRESSED SHEFFIELD DW00100439', 'DANIEL WELLINGTON QUADRO PRESSED SHEFFIELD DW00100439', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Giới t&iacute;nh:</td>\r\n			<td>Nữ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt chữ nhật</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Quartz (M&aacute;y pin - điện tử)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phong c&aacute;ch:</td>\r\n			<td>Thời trang</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mặt k&iacute;nh:</td>\r\n			<td>Mặt k&iacute;nh cứng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>26mm -20mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu vỏ:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ mạ v&agrave;ng c&ocirc;ng nghệ PVD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ d&agrave;y:</td>\r\n			<td>6mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu d&acirc;y:</td>\r\n			<td>D&acirc;y da</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size d&acirc;y:</td>\r\n			<td>10mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ chịu nước:</td>\r\n			<td>30m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:</td>\r\n			<td>2 năm quốc tế</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>Xanh L&aacute;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: DW00100439</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Loại m&aacute;y: Quartz (M&aacute;y pin - điện tử)</p>\r\n	</li>\r\n	<li>\r\n	<p>Đường k&iacute;nh: 26mm -20mm</p>\r\n	</li>\r\n</ul>', 4278000, 0, 1, '2024-05-20 14:18:17', '2024-05-20 14:18:17'),
(75, 2, 1, 20, 'ĐỒNG HỒ CASIO LA680WA-2CDF', 'ĐỒNG HỒ CASIO LA680WA-2CDF', '<p>M&Ocirc; TẢ ĐỒNG HỒ CASIO LA680WA-2CDF</p>\r\n\r\n<p><u><strong>T&iacute;nh năng</strong></u>:</p>\r\n\r\n<ul>\r\n	<li>Đ&egrave;n LED</li>\r\n	<li>Đồng hồ bấm giờ 1/100 gi&acirc;y<br />\r\n	Khả năng đo: 59&#39;59,99&quot;<br />\r\n	Ch&ecirc;́ đ&ocirc;̣ đo: Thời gian đã tr&ocirc;i qua, ngắt giờ, thời gian v&ecirc;̀ đích thứ nh&acirc;́t - thứ hai</li>\r\n	<li>B&aacute;o giờ h&agrave;ng ng&agrave;y</li>\r\n	<li>T&iacute;n hiệu thời gian h&agrave;ng giờ</li>\r\n	<li>Lịch tự động (lịch tự động được đặt ở 28 ng&agrave;y đối với th&aacute;ng 2)</li>\r\n	<li>Định dạng giờ 12/24</li>\r\n	<li>Giờ hiện h&agrave;nh th&ocirc;ng thường: Giờ, ph&uacute;t, gi&acirc;y, chiều, ng&agrave;y, thứ</li>\r\n	<li>Độ ch&iacute;nh x&aacute;c: &plusmn;30 gi&acirc;y một th&aacute;ng</li>\r\n	<li>Tuổi thọ pin xấp xỉ: 5 năm với pin CR1616</li>\r\n</ul>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: LA680WA-2CDF</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Loại m&aacute;y: Automatic (M&aacute;y cơ tự động)</p>\r\n	</li>\r\n	<li>\r\n	<p>Đường k&iacute;nh: 33.5mm - 28.6mm</p>\r\n	</li>\r\n</ul>', 1242000, 0, 1, '2024-05-20 18:01:41', '2024-05-20 18:01:41'),
(76, 2, 1, 30, 'ĐỒNG HỒ CASIO LA680WA-7DF', 'ĐỒNG HỒ CASIO LA680WA-7DF', '<p>M&Ocirc; TẢ ĐỒNG HỒ CASIO LA680WA-7DF</p>\r\n\r\n<p><u><strong>T&iacute;nh năng</strong></u>:</p>\r\n\r\n<ul>\r\n	<li>Đ&egrave;n LED</li>\r\n	<li>Đồng hồ bấm giờ 1/100 gi&acirc;y<br />\r\n	Khả năng đo: 59&#39;59,99&quot;<br />\r\n	Ch&ecirc;́ đ&ocirc;̣ đo: Thời gian đã tr&ocirc;i qua, ngắt giờ, thời gian v&ecirc;̀ đích thứ nh&acirc;́t - thứ hai</li>\r\n	<li>B&aacute;o giờ h&agrave;ng ng&agrave;y</li>\r\n	<li>T&iacute;n hiệu thời gian h&agrave;ng giờ</li>\r\n	<li>Lịch tự động (lịch tự động được đặt ở 28 ng&agrave;y đối với th&aacute;ng 2)</li>\r\n	<li>Định dạng giờ 12/24</li>\r\n	<li>Giờ hiện h&agrave;nh th&ocirc;ng thường: Giờ, ph&uacute;t, gi&acirc;y, chiều, ng&agrave;y, thứ</li>\r\n	<li>Độ ch&iacute;nh x&aacute;c: &plusmn;30 gi&acirc;y một th&aacute;ng</li>\r\n	<li>Tuổi thọ pin xấp xỉ: 5 năm với pin CR1616</li>\r\n</ul>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: LA680WA-7DF</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Loại m&aacute;y: Quartz (M&aacute;y pin - điện tử)</p>\r\n	</li>\r\n	<li>\r\n	<p>Đường k&iacute;nh: 33.5mm&ensp;-&ensp;28.6mm</p>\r\n	</li>\r\n</ul>', 1234000, 0, 1, '2024-05-20 18:07:22', '2024-05-20 18:07:22'),
(77, 2, 1, 20, 'ĐỒNG HỒ CASIO LA680WGA-1DF', 'ĐỒNG HỒ CASIO LA680WGA-1DF', '<p>M&Ocirc; TẢ ĐỒNG HỒ CASIO LA680WGA-1DF</p>\r\n\r\n<p><u><strong>T&iacute;nh năng</strong></u>:&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Đ&egrave;n LED</li>\r\n	<li>Đồng hồ bấm giờ 1/100 gi&acirc;y<br />\r\n	Khả năng đo: 59&#39;59,99&quot;<br />\r\n	Ch&ecirc;́ đ&ocirc;̣ đo: Thời gian đã tr&ocirc;i qua, ngắt giờ, thời gian v&ecirc;̀ đích thứ nh&acirc;́t - thứ hai</li>\r\n	<li>B&aacute;o giờ h&agrave;ng ng&agrave;y</li>\r\n	<li>T&iacute;n hiệu thời gian h&agrave;ng giờ</li>\r\n	<li>Lịch tự động (lịch tự động được đặt ở 28 ng&agrave;y đối với th&aacute;ng 2)</li>\r\n	<li>Định dạng giờ 12/24</li>\r\n	<li>Giờ hiện h&agrave;nh th&ocirc;ng thường: Giờ, ph&uacute;t, gi&acirc;y, chiều, ng&agrave;y, thứ</li>\r\n	<li>Độ ch&iacute;nh x&aacute;c: &plusmn;30 gi&acirc;y một th&aacute;ng</li>\r\n	<li>Tuổi thọ pin xấp xỉ: 5 năm với pin CR1616</li>\r\n</ul>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: LA680WGA-1DF</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Loại m&aacute;y: Quartz (M&aacute;y pin - điện tử)</p>\r\n	</li>\r\n	<li>\r\n	<p>Đường k&iacute;nh: 33.5mm - 28.6mm</p>\r\n	</li>\r\n</ul>', 2076000, 0, 1, '2024-05-20 18:08:59', '2024-05-20 18:08:59'),
(78, 2, 6, 10, 'ĐỒNG HỒ NỮ OLYM PIANUS OP990-45DDLS-GL-T', 'ĐỒNG HỒ NỮ OLYM PIANUS OP990-45DDLS-GL-T', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Giới t&iacute;nh:</td>\r\n			<td>Nữ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt tr&ograve;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Quartz (M&aacute;y pin - điện tử)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phong c&aacute;ch:</td>\r\n			<td>Sang trọng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mặt k&iacute;nh:</td>\r\n			<td>Sapphire</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>34mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu vỏ:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu d&acirc;y:</td>\r\n			<td>D&acirc;y cao su</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ chịu nước:</td>\r\n			<td>50m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>T&iacute;nh năng kh&aacute;c:</td>\r\n			<td>Lịch ng&agrave;y</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:</td>\r\n			<td>2 năm ch&iacute;nh h&atilde;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>Trắng</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: OP990-45DDLS-GL-T</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Loại m&aacute;y: Quartz (M&aacute;y pin - điện tử)</p>\r\n	</li>\r\n	<li>\r\n	<p>Đường k&iacute;nh: 34mm</p>\r\n	</li>\r\n</ul>', 7210000, 0, 1, '2024-05-20 18:14:37', '2024-05-20 18:14:37'),
(79, 2, 6, 8, 'ĐỒNG HỒ NỮ OLYM PIANUS OP990-45DDLS-GL-X', 'ĐỒNG HỒ NỮ OLYM PIANUS OP990-45DDLS-GL-X', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Giới t&iacute;nh:</td>\r\n			<td>Nữ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt tr&ograve;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Quartz (M&aacute;y pin - điện tử)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phong c&aacute;ch:</td>\r\n			<td>Sang trọng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mặt k&iacute;nh:</td>\r\n			<td>Sapphire</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>34mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu vỏ:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu d&acirc;y:</td>\r\n			<td>D&acirc;y cao su</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ chịu nước:</td>\r\n			<td>50m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>T&iacute;nh năng kh&aacute;c:</td>\r\n			<td>Lịch ng&agrave;y</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:</td>\r\n			<td>2 năm ch&iacute;nh h&atilde;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>Xanh lam</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: OP990-45DDLS-GL-X</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Loại m&aacute;y: Quartz (M&aacute;y pin - điện tử)</p>\r\n	</li>\r\n	<li>\r\n	<p>Đường k&iacute;nh: 34mm</p>\r\n	</li>\r\n</ul>', 7210000, 0, 1, '2024-05-20 18:16:13', '2024-05-20 18:16:13'),
(80, 2, 6, 14, 'ĐỒNG HỒ OLYM PIANUS OP24591DLK-T', 'ĐỒNG HỒ OLYM PIANUS OP24591DLK-T', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Giới t&iacute;nh:</td>\r\n			<td>Nữ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt tr&ograve;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Quartz (M&aacute;y pin - điện tử)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phong c&aacute;ch:</td>\r\n			<td>Sang trọng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mặt k&iacute;nh:</td>\r\n			<td>Sapphire</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>27mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu vỏ:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ mạ v&agrave;ng c&ocirc;ng nghệ PVD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu d&acirc;y:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L mạ v&agrave;ng c&ocirc;ng nghệ PVD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ chịu nước:</td>\r\n			<td>30m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>T&iacute;nh năng kh&aacute;c:</td>\r\n			<td>Viền đ&iacute;nh đ&aacute; swarovski</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:</td>\r\n			<td>2 năm quốc tế</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>Trắng</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: OP24591DLK-T</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Loại m&aacute;y: Quartz (M&aacute;y pin - điện tử)</p>\r\n	</li>\r\n	<li>\r\n	<p>Đường k&iacute;nh: 27mm</p>\r\n	</li>\r\n</ul>', 4140000, 0, 1, '2024-05-20 18:17:47', '2024-05-20 18:17:47'),
(81, 2, 6, 17, 'ĐỒNG HỒ OLYM PIANUS OP2474DLSK-T', 'ĐỒNG HỒ OLYM PIANUS OP2474DLSK-T', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Giới t&iacute;nh:</td>\r\n			<td>Nữ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt tr&ograve;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Quartz (M&aacute;y pin - điện tử)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phong c&aacute;ch:</td>\r\n			<td>Sang trọng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mặt k&iacute;nh:</td>\r\n			<td>Sapphire</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>28mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu vỏ:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ mạ v&agrave;ng c&ocirc;ng nghệ PVD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu d&acirc;y:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L mạ v&agrave;ng c&ocirc;ng nghệ PVD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ chịu nước:</td>\r\n			<td>30m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>T&iacute;nh năng kh&aacute;c:</td>\r\n			<td>Viền đ&iacute;nh đ&aacute; swarovski</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:</td>\r\n			<td>2 năm quốc tế</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>Trắng</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: OP2474DLSK-T</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Loại m&aacute;y: Quartz (M&aacute;y pin - điện tử)</p>\r\n	</li>\r\n	<li>\r\n	<p>Đường k&iacute;nh: 28mm</p>\r\n	</li>\r\n</ul>', 3770000, 0, 1, '2024-05-20 18:19:13', '2024-05-20 18:19:13'),
(82, 4, 7, 3, 'TISSOT CARSON T122.407.36.033.00 VÀ T122.207.36.033.00', 'TISSOT CARSON T122.407.36.033.00 VÀ T122.207.36.033.00', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Giới t&iacute;nh:</td>\r\n			<td>Đồng hồ đ&ocirc;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt tr&ograve;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Automatic (M&aacute;y cơ tự động)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phong c&aacute;ch:</td>\r\n			<td>Hiện đại</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mặt k&iacute;nh:</td>\r\n			<td>Sapphire</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>40mm x 30mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu vỏ:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ mạ v&agrave;ng c&ocirc;ng nghệ PVD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ d&agrave;y:</td>\r\n			<td>10.3mm x 9.5mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu d&acirc;y:</td>\r\n			<td>D&acirc;y da</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ chịu nước:</td>\r\n			<td>50m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:</td>\r\n			<td>2 năm quốc tế</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>Trắng</td>\r\n		</tr>\r\n		<tr>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: T122.407.36.033.00 &amp; T122.207.36.033.00</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Loại m&aacute;y: Automatic (M&aacute;y cơ tự động)</p>\r\n	</li>\r\n	<li>\r\n	<p>Đường k&iacute;nh: 40mm x 30mm</p>\r\n	</li>\r\n</ul>', 41040000, 0, 1, '2024-05-20 18:23:12', '2024-05-20 18:23:12'),
(83, 4, 7, 4, 'ĐỒNG HỒ ĐÔI TISSOT T085.407.26.013.00 VÀ T085.207.26.013.00', 'ĐỒNG HỒ ĐÔI TISSOT T085.407.26.013.00 VÀ T085.207.26.013.00', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Giới t&iacute;nh:</td>\r\n			<td>Đồng hồ đ&ocirc;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt tr&ograve;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Automatic (M&aacute;y cơ tự động)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phong c&aacute;ch:</td>\r\n			<td>Sang trọng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mặt k&iacute;nh:</td>\r\n			<td>Sapphire</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>40mm x 29.5mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu vỏ:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ mạ v&agrave;ng c&ocirc;ng nghệ PVD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu d&acirc;y:</td>\r\n			<td>D&acirc;y da</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ chịu nước:</td>\r\n			<td>30m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>T&iacute;nh năng kh&aacute;c:</td>\r\n			<td>Lịch ng&agrave;y, Powermatic 80</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:</td>\r\n			<td>2 năm to&agrave;n cầu</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>Trắng</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: T085.407.26.013.00 v&agrave; T085.207.26.013.00</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Loại m&aacute;y: Automatic (M&aacute;y cơ tự động)</p>\r\n	</li>\r\n	<li>\r\n	<p>Đường k&iacute;nh: 40mm x 29.5mm</p>\r\n	</li>\r\n</ul>', 38500000, 0, 1, '2024-05-20 18:25:16', '2024-05-20 18:25:16');
INSERT INTO `product` (`idProduct`, `idCategory`, `idBrand`, `QuantityTotal`, `ProductName`, `ProductSlug`, `DesProduct`, `ShortDes`, `Price`, `Sold`, `StatusPro`, `created_at`, `updated_at`) VALUES
(84, 4, 7, 5, 'ĐỒNG HỒ ĐÔI TISSOT T085.407.11.051.00 VÀ T085.207.11.051.00', 'ĐỒNG HỒ ĐÔI TISSOT T085.407.11.051.00 VÀ T085.207.11.051.00', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Giới t&iacute;nh:</td>\r\n			<td>Đồng hồ đ&ocirc;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt tr&ograve;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Automatic (M&aacute;y cơ tự động)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phong c&aacute;ch:</td>\r\n			<td>Sang trọng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mặt k&iacute;nh:</td>\r\n			<td>Sapphire</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>40mm x 29.5mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu vỏ:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ d&agrave;y:</td>\r\n			<td>9.6mm x 9.15mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu d&acirc;y:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ chịu nước:</td>\r\n			<td>30m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>T&iacute;nh năng kh&aacute;c:</td>\r\n			<td>Lịch ng&agrave;y.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:</td>\r\n			<td>2 năm quốc tế</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>Đen</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: T085.407.11.051.00 v&agrave; T085.207.11.051.00</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Loại m&aacute;y: Automatic (M&aacute;y cơ tự động)</p>\r\n	</li>\r\n	<li>\r\n	<p>Đường k&iacute;nh: 40mm x 29.5mm</p>\r\n	</li>\r\n</ul>', 38500000, 0, 1, '2024-05-20 18:26:49', '2024-05-20 18:26:49'),
(85, 4, 7, 3, 'TISSOT CARSON T122.407.22.031.01 VÀ T122.207.22.031.01', 'TISSOT CARSON T122.407.22.031.01 VÀ T122.207.22.031.01', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Giới t&iacute;nh:</td>\r\n			<td>Đồng hồ đ&ocirc;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt tr&ograve;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Automatic (M&aacute;y cơ tự động)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phong c&aacute;ch:</td>\r\n			<td>Sang trọng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mặt k&iacute;nh:</td>\r\n			<td>Sapphire</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>40mm x 30mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu vỏ:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ mạ v&agrave;ng c&ocirc;ng nghệ PVD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ d&agrave;y:</td>\r\n			<td>10.3mm x 9.5mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu d&acirc;y:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L mạ v&agrave;ng c&ocirc;ng nghệ PVD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ chịu nước:</td>\r\n			<td>50m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:</td>\r\n			<td>2 năm Quốc tế</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>Trắng</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: T122.407.22.031.01 v&agrave; T122.207.22.031.01</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Loại m&aacute;y: Automatic (M&aacute;y cơ tự động)</p>\r\n	</li>\r\n	<li>\r\n	<p>Đường k&iacute;nh: 40mm x 30mm</p>\r\n	</li>\r\n</ul>', 49000000, 0, 1, '2024-05-20 18:28:45', '2024-05-20 18:28:45'),
(86, 4, 7, 2, 'ĐỒNG HỒ ĐÔI TISSOT CHEMIN DES TOURELLES POWERMATIC 80 T139.807.11.048.00 VÀ T139.207.11.048.00', 'ĐỒNG HỒ ĐÔI TISSOT CHEMIN DES TOURELLES POWERMATIC 80 T139.807.11.048.00 VÀ T139.207.11.048.00', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Giới t&iacute;nh:</td>\r\n			<td>Đồng hồ đ&ocirc;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt tr&ograve;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Automatic (M&aacute;y cơ tự động)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phong c&aacute;ch:</td>\r\n			<td>Hiện đại</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mặt k&iacute;nh:</td>\r\n			<td>Sapphire</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>39mm - 34mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu vỏ:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ d&agrave;y:</td>\r\n			<td>11.2mm - 10.5mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu d&acirc;y:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size d&acirc;y:</td>\r\n			<td>20mm - 18mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ chịu nước:</td>\r\n			<td>50m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>T&iacute;nh năng kh&aacute;c:</td>\r\n			<td>Lịch ng&agrave;y. Caliber Powermatic 80.111, 23 ch&acirc;n k&iacute;nh, l&ograve; xo c&acirc;n bằng Nivachron, trữ c&oacute;t 80h. Sapphire chống l&oacute;a.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:</td>\r\n			<td>2 năm quốc tế</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>Xanh la</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: T139.807.11.048.00 v&agrave; T139.207.11.048.00</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Loại m&aacute;y: Automatic (M&aacute;y cơ tự động)</p>\r\n	</li>\r\n	<li>\r\n	<p>Đường k&iacute;nh: 39mm - 34mm</p>\r\n	</li>\r\n</ul>', 49700000, 0, 1, '2024-05-20 18:30:11', '2024-05-20 18:30:11'),
(87, 4, 8, 4, 'MIDO BARONCELLI II SIGNATURE M037.407.11.031.01 VÀ M037.207.11.031.01', 'MIDO BARONCELLI II SIGNATURE M037.407.11.031.01 VÀ M037.207.11.031.01', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Giới t&iacute;nh:</td>\r\n			<td>Đồng hồ đ&ocirc;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt tr&ograve;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Automatic (M&aacute;y cơ tự động)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phong c&aacute;ch:</td>\r\n			<td>Sang trọng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mặt k&iacute;nh:</td>\r\n			<td>Sapphire</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>39mm - 30mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu vỏ:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ d&agrave;y:</td>\r\n			<td>10mm - 9mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu d&acirc;y:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size d&acirc;y:</td>\r\n			<td>20mm - 15mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ chịu nước:</td>\r\n			<td>50m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:</td>\r\n			<td>2 năm quốc tế</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>Trắng</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: M037.407.11.031.01 v&agrave; M037.207.11.031.01</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Loại m&aacute;y: Automatic (M&aacute;y cơ tự động)</p>\r\n	</li>\r\n	<li>\r\n	<p>Đường k&iacute;nh: 39mm - 30mm</p>\r\n	</li>\r\n</ul>', 48160000, 0, 1, '2024-05-20 18:32:49', '2024-05-20 18:32:49'),
(88, 4, 8, 3, 'MIDO BARONCELLI II SIGNATURE M037.407.11.041.00 VÀ M037.207.11.041.00', 'MIDO BARONCELLI II SIGNATURE M037.407.11.041.00 VÀ M037.207.11.041.00', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Giới t&iacute;nh:</td>\r\n			<td>Đồng hồ đ&ocirc;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt tr&ograve;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Automatic (M&aacute;y cơ tự động)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phong c&aacute;ch:</td>\r\n			<td>Sang trọng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mặt k&iacute;nh:</td>\r\n			<td>Sapphire</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>39mm - 30mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu vỏ:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ d&agrave;y:</td>\r\n			<td>9.9mm - 9mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu d&acirc;y:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size d&acirc;y:</td>\r\n			<td>20mm - 15mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ chịu nước:</td>\r\n			<td>50m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:</td>\r\n			<td>2 năm quốc tế</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>Xanh lam</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: M037.407.11.041.00 v&agrave; M037.207.11.041.00</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Loại m&aacute;y: Automatic (M&aacute;y cơ tự động)</p>\r\n	</li>\r\n	<li>\r\n	<p>Đường k&iacute;nh: 39mm - 30mm</p>\r\n	</li>\r\n</ul>', 48160000, 0, 1, '2024-05-20 18:34:17', '2024-05-20 18:34:17'),
(89, 4, 8, 4, 'ĐỒNG HỒ ĐÔI MIDO M8600.2.26.8 VÀ M7600.3.26.8', 'ĐỒNG HỒ ĐÔI MIDO M8600.2.26.8 VÀ M7600.3.26.8', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Giới t&iacute;nh:</td>\r\n			<td>Đồng hồ đ&ocirc;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt tr&ograve;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Automatic (M&aacute;y cơ tự động)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phong c&aacute;ch:</td>\r\n			<td>Sang trọng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mặt k&iacute;nh:</td>\r\n			<td>Sapphire</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>39mm x 29mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu vỏ:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ mạ v&agrave;ng c&ocirc;ng nghệ PVD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu d&acirc;y:</td>\r\n			<td>D&acirc;y da</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ chịu nước:</td>\r\n			<td>50m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:</td>\r\n			<td>2 năm to&agrave;n cầu</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>Trắng</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: M8600.2.26.8 v&agrave; M7600.3.26.8</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Loại m&aacute;y: Automatic (M&aacute;y cơ tự động)</p>\r\n	</li>\r\n	<li>\r\n	<p>Đường k&iacute;nh: 39mm x 29mm</p>\r\n	</li>\r\n</ul>', 46260000, 0, 1, '2024-05-20 18:36:08', '2024-05-20 18:36:08'),
(90, 4, 2, 5, 'ĐỒNG HỒ ĐÔI CITIZEN BJ6543-10A VÀ EM0932-10A', 'ĐỒNG HỒ ĐÔI CITIZEN BJ6543-10A VÀ EM0932-10A', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Giới t&iacute;nh:</td>\r\n			<td>Đồng hồ đ&ocirc;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt tr&ograve;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Eco-Drive (Năng lượng &aacute;nh s&aacute;ng)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phong c&aacute;ch:</td>\r\n			<td>Hiện đại</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mặt k&iacute;nh:</td>\r\n			<td>Mặt k&iacute;nh cứng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>38mm - 27mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu vỏ:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ mạ v&agrave;ng c&ocirc;ng nghệ PVD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ d&agrave;y:</td>\r\n			<td>8.8mm - 7.5mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu d&acirc;y:</td>\r\n			<td>D&acirc;y da</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ chịu nước:</td>\r\n			<td>50m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:</td>\r\n			<td>1 năm quốc tế</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>Trắng</td>\r\n		</tr>\r\n		<tr>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: BJ6543-10A v&agrave; EM0932-10A</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Loại m&aacute;y: Eco-Drive (Năng lượng &aacute;nh s&aacute;ng)</p>\r\n	</li>\r\n	<li>\r\n	<p>Đường k&iacute;nh: 38mm - 27mm</p>\r\n	</li>\r\n</ul>', 11570000, 0, 1, '2024-05-20 18:38:26', '2024-05-20 18:38:26'),
(91, 4, 2, 5, 'ĐỒNG HỒ ĐÔI CITIZEN BM8550-81A VÀ EW3260-84A', 'ĐỒNG HỒ ĐÔI CITIZEN BM8550-81A VÀ EW3260-84A', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Giới t&iacute;nh:</td>\r\n			<td>Đồng hồ đ&ocirc;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt tr&ograve;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Eco-Drive (Năng lượng &aacute;nh s&aacute;ng)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phong c&aacute;ch:</td>\r\n			<td>Hiện đại</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mặt k&iacute;nh:</td>\r\n			<td>Mặt k&iacute;nh cứng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>41.8mm - 30.8mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu vỏ:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ d&agrave;y:</td>\r\n			<td>10.1mm - 9mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu d&acirc;y:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ chịu nước:</td>\r\n			<td>100m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>T&iacute;nh năng kh&aacute;c:</td>\r\n			<td>Lịch thứ, lịch ng&agrave;y.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:</td>\r\n			<td>1 năm quốc tế</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>Trắng</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: BM8550-81A v&agrave; EW3260-84A</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Loại m&aacute;y: Eco-Drive (Năng lượng &aacute;nh s&aacute;ng)</p>\r\n	</li>\r\n	<li>\r\n	<p>Đường k&iacute;nh: 41.8mm - 30.8mm</p>\r\n	</li>\r\n</ul>', 11570000, 0, 1, '2024-05-20 18:39:44', '2024-05-20 18:39:44'),
(92, 4, 2, 6, 'ĐỒNG HỒ ĐÔI CITIZEN BM8550-14A VÀ EW3260-17A', 'ĐỒNG HỒ ĐÔI CITIZEN BM8550-14A VÀ EW3260-17A', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Giới t&iacute;nh:</td>\r\n			<td>Đồng hồ đ&ocirc;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt tr&ograve;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Eco-Drive (Năng lượng &aacute;nh s&aacute;ng)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phong c&aacute;ch:</td>\r\n			<td>Hiện đại</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mặt k&iacute;nh:</td>\r\n			<td>Mặt k&iacute;nh cứng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>41.8mm - 30.8mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu vỏ:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ d&agrave;y:</td>\r\n			<td>10.1mm - 9mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu d&acirc;y:</td>\r\n			<td>D&acirc;y da</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ chịu nước:</td>\r\n			<td>100m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>T&iacute;nh năng kh&aacute;c:</td>\r\n			<td>Lịch thứ, lịch ng&agrave;y.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:</td>\r\n			<td>1 năm quốc tế</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>Trắng</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: BM8550-14A v&agrave; EW3260-17A</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Loại m&aacute;y: Eco-Drive (Năng lượng &aacute;nh s&aacute;ng)</p>\r\n	</li>\r\n	<li>\r\n	<p>Đường k&iacute;nh: 41.8mm - 30.8mm</p>\r\n	</li>\r\n</ul>', 10570000, 0, 1, '2024-05-20 18:40:58', '2024-05-20 18:40:58'),
(93, 4, 2, 4, 'ĐỒNG HỒ ĐÔI CITIZEN BM9012-02A VÀ EW3252-07A', 'ĐỒNG HỒ ĐÔI CITIZEN BM9012-02A VÀ EW3252-07A', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Giới t&iacute;nh:</td>\r\n			<td>Đồng hồ đ&ocirc;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt tr&ograve;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Eco-Drive (Năng lượng &aacute;nh s&aacute;ng)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phong c&aacute;ch:</td>\r\n			<td>Sang trọng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mặt k&iacute;nh:</td>\r\n			<td>Sapphire</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>37mm x 27mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu vỏ:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ mạ v&agrave;ng c&ocirc;ng nghệ PVD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu d&acirc;y:</td>\r\n			<td>D&acirc;y da</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ chịu nước:</td>\r\n			<td>30m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>T&iacute;nh năng kh&aacute;c:</td>\r\n			<td>Eco-Drive hấp thụ năng lượng từ &aacute;nh s&aacute;ng.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:</td>\r\n			<td>1 năm quốc tế</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>Trắng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Xuất xứ thương hiệu:</td>\r\n			<td>Nhật Bản</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: BM9012-02A v&agrave; EW3252-07A</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Loại m&aacute;y: Eco-Drive (Năng lượng &aacute;nh s&aacute;ng)</p>\r\n	</li>\r\n	<li>\r\n	<p>Đường k&iacute;nh :37mm x 27mm</p>\r\n	</li>\r\n</ul>', 13200000, 0, 1, '2024-05-20 18:42:59', '2024-05-20 18:42:59'),
(94, 4, 2, 3, 'ĐỒNG HỒ ĐÔI CITIZEN BJ6481-58A VÀ EM0401-59A', 'ĐỒNG HỒ ĐÔI CITIZEN BJ6481-58A VÀ EM0401-59A', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Giới t&iacute;nh:</td>\r\n			<td>Đồng hồ đ&ocirc;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt tr&ograve;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Eco-Drive (Năng lượng &aacute;nh s&aacute;ng)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phong c&aacute;ch:</td>\r\n			<td>Sang trọng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mặt k&iacute;nh:</td>\r\n			<td>Sapphire</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>37mm x 27.7mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu vỏ:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu d&acirc;y:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ chịu nước:</td>\r\n			<td>50m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>T&iacute;nh năng kh&aacute;c:</td>\r\n			<td>ECO-DRIVE hấp thụ năng lượng từ &aacute;nh s&aacute;ng.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:</td>\r\n			<td>1 năm quốc tế</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>Trắng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Xuất xứ thương hiệu:</td>\r\n			<td>Nhật Bản</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: BJ6481-58A v&agrave; EM0401-59A</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Loại m&aacute;y: Eco-Drive (Năng lượng &aacute;nh s&aacute;ng)</p>\r\n	</li>\r\n	<li>\r\n	<p>Đường k&iacute;nh: 37mm x 27.7mm</p>\r\n	</li>\r\n</ul>', 15600000, 0, 1, '2024-05-20 18:44:20', '2024-05-20 18:44:20'),
(95, 4, 5, 4, 'ĐỒNG HỒ ĐÔI DANIEL WELLINGTON QUADRO DW00100450 VÀ DW00100434', 'ĐỒNG HỒ ĐÔI DANIEL WELLINGTON QUADRO DW00100450 VÀ DW00100434', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Giới t&iacute;nh:</td>\r\n			<td>Đồng hồ đ&ocirc;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt chữ nhật</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Quartz (M&aacute;y pin - điện tử)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phong c&aacute;ch:</td>\r\n			<td>Thời trang</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mặt k&iacute;nh:</td>\r\n			<td>Mặt k&iacute;nh cứng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>29-36.5 + 26-20mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu vỏ:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ mạ v&agrave;ng c&ocirc;ng nghệ PVD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ d&agrave;y:</td>\r\n			<td>6mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu d&acirc;y:</td>\r\n			<td>D&acirc;y da</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ chịu nước:</td>\r\n			<td>30m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:</td>\r\n			<td>2 năm quốc tế</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>Trắng</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: DW00100450 v&agrave; DW00100434</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Loại m&aacute;y: Quartz (M&aacute;y pin - điện tử)</p>\r\n	</li>\r\n	<li>\r\n	<p>Đường k&iacute;nh: 29-36.5 + 26-20mm</p>\r\n	</li>\r\n</ul>', 10288000, 0, 1, '2024-05-20 18:45:55', '2024-05-20 18:45:55'),
(96, 4, 5, 4, 'ĐỒNG HỒ ĐÔI DANIEL WELLINGTON PETITE MELROSE DW00100305 VÀ DW00100163', 'ĐỒNG HỒ ĐÔI DANIEL WELLINGTON PETITE MELROSE DW00100305 VÀ DW00100163', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Giới t&iacute;nh:</td>\r\n			<td>Đồng hồ đ&ocirc;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt tr&ograve;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Quartz (M&aacute;y pin - điện tử)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phong c&aacute;ch:</td>\r\n			<td>Thời trang</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mặt k&iacute;nh:</td>\r\n			<td>Mặt k&iacute;nh cứng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>36mm - 32mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu vỏ:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ mạ v&agrave;ng c&ocirc;ng nghệ PVD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ d&agrave;y:</td>\r\n			<td>6mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu d&acirc;y:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L dạng lưới</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size d&acirc;y:</td>\r\n			<td>16mm -14mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ chịu nước:</td>\r\n			<td>30m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:</td>\r\n			<td>2 năm quốc tế</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>Trắng</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: DW00100305 v&agrave; DW00100163</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Loại m&aacute;y: Quartz (M&aacute;y pin - điện tử)</p>\r\n	</li>\r\n	<li>\r\n	<p>Đường k&iacute;nh: 36mm - 32mm</p>\r\n	</li>\r\n</ul>', 9677000, 0, 1, '2024-05-20 18:47:32', '2024-05-20 18:47:32'),
(97, 4, 5, 4, 'ĐỒNG HỒ ĐÔI DANIEL WELLINGTON PETITE STERLING DW00100306 VÀ DW00100164', 'ĐỒNG HỒ ĐÔI DANIEL WELLINGTON PETITE STERLING DW00100306 VÀ DW00100164', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Giới t&iacute;nh:</td>\r\n			<td>Đồng hồ đ&ocirc;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt tr&ograve;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Quartz (M&aacute;y pin - điện tử)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phong c&aacute;ch:</td>\r\n			<td>Thời trang</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mặt k&iacute;nh:</td>\r\n			<td>Mặt k&iacute;nh cứng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>36mm - 32mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu vỏ:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ d&agrave;y:</td>\r\n			<td>6mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu d&acirc;y:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L dạng lưới</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size d&acirc;y:</td>\r\n			<td>16mm -14mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ chịu nước:</td>\r\n			<td>30m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:</td>\r\n			<td>2 năm quốc tế</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>Trắng</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: DW00100306 v&agrave; DW00100164</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Loại m&aacute;y: Quartz (M&aacute;y pin - điện tử)</p>\r\n	</li>\r\n	<li>\r\n	<p>Đường k&iacute;nh: 36mm - 32mm</p>\r\n	</li>\r\n</ul>', 9677000, 0, 1, '2024-05-20 18:48:53', '2024-05-20 18:48:53'),
(98, 4, 5, 5, 'ĐỒNG HỒ ĐÔI DANIEL WELLINGTON PETITE MELROSE DW00100303 VÀ DW00100161', 'ĐỒNG HỒ ĐÔI DANIEL WELLINGTON PETITE MELROSE DW00100303 VÀ DW00100161', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Giới t&iacute;nh:</td>\r\n			<td>Đồng hồ đ&ocirc;i</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt tr&ograve;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Quartz (M&aacute;y pin - điện tử)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phong c&aacute;ch:</td>\r\n			<td>Thời trang</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mặt k&iacute;nh:</td>\r\n			<td>Mặt k&iacute;nh cứng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>36mm - 32mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu vỏ:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ mạ v&agrave;ng c&ocirc;ng nghệ PVD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ d&agrave;y:</td>\r\n			<td>6mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu d&acirc;y:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L dạng lưới</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size d&acirc;y:</td>\r\n			<td>16mm -14mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ chịu nước:</td>\r\n			<td>30m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh ch&iacute;nh h&atilde;ng:</td>\r\n			<td>2 năm quốc tế</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>Đen</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: DW00100303 v&agrave; DW00100161</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Loại m&aacute;y: Quartz (M&aacute;y pin - điện tử)</p>\r\n	</li>\r\n	<li>\r\n	<p>Đường k&iacute;nh: 36mm - 32mm</p>\r\n	</li>\r\n</ul>', 9677000, 0, 1, '2024-05-20 18:50:09', '2024-05-20 18:50:09'),
(99, 3, 1, 40, 'Casio MW-240-7EVDF – Nam – Quartz (Pin) – Dây Cao Su – Mặt Số 43.6mm, Kính Nhựa, Chống Nước 5ATM', 'Casio MW-240-7EVDF – Nam – Quartz (Pin) – Dây Cao Su – Mặt Số 43.6mm, Kính Nhựa, Chống Nước 5ATM', '<h5>Th&ocirc;ng tin sản phẩm</h5>\r\n\r\n<p><strong>Thương hiệu:</strong>&nbsp;Casio</p>\r\n\r\n<p><strong>Số hiệu sản phẩm:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/san-pham/casio-mw-240-7evdf-nam-kinh-nhua-quartz-pin-day-cao-su-mat-so-43mm\">MW-240-7EVDF</a></p>\r\n\r\n<p><strong>Xuất xứ:</strong>&nbsp;Nhật Bản</p>\r\n\r\n<p><strong>Giới t&iacute;nh:</strong>&nbsp;Nam</p>\r\n\r\n<p><strong>K&iacute;nh:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/tin-tuc/dong-ho/vi-sao-kinh-nhua-acrylic-plexiglas-re-hay-tray-xuoc-ma-van-ton-tai-tren-dong-ho.html\" rel=\"noopener\">Resin Glass</a>&nbsp;(K&iacute;nh nhựa)</p>\r\n\r\n<p><strong>M&aacute;y:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/tin-tuc/dong-ho/dong-ho-may-quartz-la-gi-uu-nhuoc-diem-dong-ho-quartz.html\" rel=\"noopener\">Quartz</a>&nbsp;(Pin)</p>\r\n\r\n<p><strong>Bảo h&agrave;nh quốc tế:</strong>&nbsp;1 năm</p>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>Mẫu Casio MW-240-7EVDF thiết kế giản dị 3 kim kết hợp phong c&aacute;ch thể thao phần d&acirc;y vỏ nhựa, vạch số tạo h&igrave;nh mỏng trẻ trung tr&ecirc;n mặt số size 43mm</p>', 617000, 0, 1, '2024-05-20 18:55:09', '2024-05-20 18:55:09'),
(100, 3, 1, 40, 'Casio LW-200-2BVDF – Nữ – Quartz (Pin) – Mặt Số 34.9mm, Kính Nhựa, Chống Nước 5ATM', 'Casio LW-200-2BVDF – Nữ – Quartz (Pin) – Mặt Số 34.9mm, Kính Nhựa, Chống Nước 5ATM', '<h5>Th&ocirc;ng tin sản phẩm</h5>\r\n\r\n<p><strong>Thương hiệu:</strong>&nbsp;Casio</p>\r\n\r\n<p><strong>Số hiệu sản phẩm:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/san-pham/casio-lw-200-2bvdf-nu-quartz-pin-day-cao-su\" rel=\"noopener noreferrer\">LW-200-2BVDF</a></p>\r\n\r\n<p><strong>Xuất xứ:</strong>&nbsp;Nhật Bản</p>\r\n\r\n<p><strong>Giới t&iacute;nh:</strong>&nbsp;Nữ</p>\r\n\r\n<p><strong>K&iacute;nh:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/tin-tuc/dong-ho/vi-sao-kinh-nhua-acrylic-plexiglas-re-hay-tray-xuoc-ma-van-ton-tai-tren-dong-ho.html\" rel=\"noopener noreferrer\">Resin Glass</a>&nbsp;(K&iacute;nh nhựa)</p>\r\n\r\n<p><strong>M&aacute;y:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/tin-tuc/dong-ho/dong-ho-thach-anh-la-gi-cach-hoat-dong-dong-ho-thach-anh-ra-sao.html\" rel=\"noopener noreferrer\">Quartz</a>&nbsp;(Pin)</p>\r\n\r\n<p><strong>Bảo h&agrave;nh quốc tế:</strong>&nbsp;1 năm</p>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>Mẫu đồng hồ nữ Casio LW-200-2BVDF kiểu d&aacute;ng theo phong c&aacute;ch thể thao, mặt số điện tử với những t&iacute;nh năng hiện đại tiện dụng, kết hợp với d&acirc;y đeo cao su tạo vẻ thời trang c&aacute; t&iacute;nh cho c&aacute;c bạn nữ.</p>', 1004000, 0, 1, '2024-05-20 18:57:20', '2024-05-20 18:57:20'),
(101, 3, 1, 25, 'Casio AE-1000W-4AVDF – Nam – Kính Nhựa – Quartz (Pin) – Mặt Số 43.7mm, Bộ Bấm Giờ, Chống Nước 10ATM', 'Casio AE-1000W-4AVDF – Nam – Kính Nhựa – Quartz (Pin) – Mặt Số 43.7mm, Bộ Bấm Giờ, Chống Nước 10ATM', '<h5>Th&ocirc;ng tin sản phẩm</h5>\r\n\r\n<p><strong>Thương hiệu:</strong>&nbsp;Casio</p>\r\n\r\n<p><strong>Số hiệu sản phẩm:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/san-pham/casio-ae-1000w-4avdf-nam-kinh-nhua-quartz-pin-day-cao-su\">AE-1000W-4AVDF</a></p>\r\n\r\n<p><strong>Xuất xứ:</strong>&nbsp;Nhật Bản</p>\r\n\r\n<p><strong>Giới t&iacute;nh:</strong>&nbsp;Nam</p>\r\n\r\n<p><strong>K&iacute;nh:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/tin-tuc/dong-ho/vi-sao-kinh-nhua-acrylic-plexiglas-re-hay-tray-xuoc-ma-van-ton-tai-tren-dong-ho.html\">Resin Glass</a>&nbsp;(K&iacute;nh nhựa)</p>\r\n\r\n<p><strong>M&aacute;y:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/tin-tuc/dong-ho/dong-ho-may-quartz-la-gi-uu-nhuoc-diem-dong-ho-quartz.html\" rel=\"noopener noreferrer\">Quartz</a>&nbsp;(Pin)</p>\r\n\r\n<p><strong>Bảo h&agrave;nh quốc tế:</strong>&nbsp;1 năm</p>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>Đồng hồ Casio AE-1000W-4AVDF c&oacute; mặt số tr&ograve;n với viền đen tinh tế bao quanh nền số điện tử tiện dụng, d&acirc;y đeo cao su đỏ tạo n&ecirc;n phụ kiện thời trang ph&ugrave; hợp giới trẻ năng động, mạnh mẽ.</p>', 1136000, 0, 1, '2024-05-20 18:59:12', '2024-05-20 18:59:12'),
(102, 3, 9, 17, 'Baby-G BA-110NC-6ADR – Nữ – Quartz (Pin) – Dây Cao Su', 'Baby-G BA-110NC-6ADR – Nữ – Quartz (Pin) – Dây Cao Su', '<h5>h&ocirc;ng tin sản phẩm</h5>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:699px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Thương Hiệu</strong></p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>Casio</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Số Hiệu Sản Phẩm</strong></p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n			<td>BA-110NC-6ADR</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Xuất Xứ</strong></p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>Nhật Bản</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Giới T&iacute;nh</strong></p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>Nữ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>K&iacute;nh</strong></p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>Mineral Crystal (K&iacute;nh Cứng)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>M&aacute;y</strong></p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>Quartz (Pin)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Bảo H&agrave;nh Quốc Tế</strong></p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>5 Năm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p><strong>&nbsp;</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Đường K&iacute;nh Mặt Số</strong></p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n			<td>46.3mm&ensp;&times;&ensp;43.4mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Bề D&agrave;y Mặt Số</strong></p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>15.8 mm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Niềng</strong></p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>Nhựa</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>D&acirc;y Đeo</strong></p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>D&acirc;y Cao Su</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>M&agrave;u Mặt Số</strong></p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>Đen</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Chống Nước</strong></p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>10 ATM</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Chức Năng</strong></p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>Lịch &ndash; Bộ Bấm Giờ &ndash; Giờ K&eacute;p &ndash; Đ&egrave;n Led &ndash; V&agrave;i Chức Năng Kh&aacute;c</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><a href=\"https://donghohaitrieu.com/tin-tuc/dong-ho/noi-san-xuat-dong-ho-deo-tay-cua-cac-thuong-hieu-noi-tieng.html\" rel=\"noopener noreferrer\" target=\"_blank\"><strong>Nơi sản xuất (T&ugrave;y từng l&ocirc; h&agrave;ng)</strong></a></p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>Trung Quốc</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<div class=\"ddict_btn\" style=\"left:163.594px; top:426px\"><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></div>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>Đồng hồ Baby-G BA-110NC-6ADR c&oacute; vỏ m&agrave;u t&iacute;m năng động kết hợp c&ugrave;ng d&acirc;y đeo m&agrave;u đen mạnh mẽ, việc phối m&agrave;u đỏ trắng hồng đen ở mặt số tạo n&ecirc;n phong c&aacute;ch thởi trang thể thao d&agrave;nh cho bạn nữ c&aacute; t&iacute;nh.</p>', 4343000, 0, 1, '2024-05-20 19:01:19', '2024-05-20 19:01:19'),
(103, 3, 9, 16, 'Baby-G BGA-190-3BDR – Nữ – Quartz (Pin) – Dây Cao Su', 'Baby-G BGA-190-3BDR – Nữ – Quartz (Pin) – Dây Cao Su', '<h5>Th&ocirc;ng tin sản phẩm</h5>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:699px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Thương Hiệu</strong></p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>Casio</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Số Hiệu Sản Phẩm</strong></p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n			<td>BGA-190-3BDR</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Xuất Xứ</strong></p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>Nhật Bản</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Giới T&iacute;nh</strong></p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>Nữ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>K&iacute;nh</strong></p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>Mineral Crystal (K&iacute;nh Cứng)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>M&aacute;y</strong></p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>Quartz (Pin)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Bảo H&agrave;nh Quốc Tế</strong></p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>5 Năm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Đường K&iacute;nh Mặt Số</strong></p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>48mm&ensp;&times;&ensp;44.3mm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Bề D&agrave;y Mặt Số</strong></p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>15.5 mm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Niềng</strong></p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>Nhựa</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>D&acirc;y Đeo</strong></p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>D&acirc;y Cao Su</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>M&agrave;u Mặt Số</strong></p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>Xanh</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Chống Nước</strong></p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>10 ATM</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Chức Năng</strong></p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>Lịch &ndash; Bộ Bấm Giờ &ndash; Giờ K&eacute;p &ndash; Đ&egrave;n Led &ndash; V&agrave;i Chức Năng Kh&aacute;c</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><a href=\"https://donghohaitrieu.com/tin-tuc/dong-ho/noi-san-xuat-dong-ho-deo-tay-cua-cac-thuong-hieu-noi-tieng.html\" rel=\"noopener noreferrer\" target=\"_blank\"><strong>Nơi sản xuất (T&ugrave;y từng l&ocirc; h&agrave;ng)</strong></a></p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>Trung Quốc</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<div class=\"ddict_btn\" style=\"left:261.984px; top:413px\"><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></div>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>Đồng hồ nữ Baby-G BGA-190-3BDR c&oacute; vỏ v&agrave; d&acirc;y đeo m&agrave;u xanh ngọc nữ t&iacute;nh, m&agrave;u trắng v&agrave; m&agrave;u xanh nổi bật của con số v&agrave; kim chỉ tạo n&ecirc;n thời trang c&aacute; t&iacute;nh cho ph&aacute;i nữ</p>', 4343000, 0, 1, '2024-05-20 19:02:51', '2024-05-20 19:02:51'),
(104, 3, 9, 15, 'Baby-G Nữ – Quartz (Pin) – Dây Cao Su (BA-110BC-2ADR)', 'Baby-G Nữ – Quartz (Pin) – Dây Cao Su (BA-110BC-2ADR)', '<h5>Th&ocirc;ng tin sản phẩm</h5>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:699px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Thương Hiệu</strong></p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>Casio</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Số Hiệu Sản Phẩm</strong></p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>BA-110BC-2ADR</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Xuất Xứ</strong></p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>Nhật Bản</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Giới T&iacute;nh</strong></p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>Nữ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>K&iacute;nh</strong></p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>Mineral Crystal (K&iacute;nh Cứng)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>M&aacute;y</strong></p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>Quartz (Pin)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Bảo H&agrave;nh Quốc Tế</strong></p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>5 Năm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Đường K&iacute;nh Mặt Số</strong></p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>44mm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Bề D&agrave;y Mặt Số</strong></p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>16mm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Niềng</strong></p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>Nhựa</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>D&acirc;y Đeo</strong></p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>D&acirc;y Cao Su</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>M&agrave;u Mặt Số</strong></p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>Xanh</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Chống Nước</strong></p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>10 ATM</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Chức Năng</strong></p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>Lịch &ndash; Bộ Bấm Giờ &ndash; Giờ K&eacute;p &ndash; Đ&egrave;n Led &ndash; V&agrave;i Chức Năng Kh&aacute;c</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><a href=\"https://donghohaitrieu.com/tin-tuc/dong-ho/noi-san-xuat-dong-ho-deo-tay-cua-cac-thuong-hieu-noi-tieng.html\" rel=\"noopener noreferrer\" target=\"_blank\"><strong>Nơi sản xuất (T&ugrave;y từng l&ocirc; h&agrave;ng)</strong></a></p>\r\n			</td>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>Trung Quốc</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<div class=\"ddict_btn\" style=\"left:261.984px; top:421px\"><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></div>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>Đồng hồ nữ BA-110BC-2ADR năng động với m&agrave;u sắc ấn tượng của t&ocirc;ng m&agrave;u xanh dương, chất liệu được l&agrave;m từ nhựa, mặt k&iacute;nh kho&aacute;ng chịu lực v&agrave; chống thấm nước 10 atm.</p>', 4343000, 0, 1, '2024-05-20 19:04:10', '2024-05-20 19:04:10'),
(105, 3, 9, 15, 'Baby-G BGA-130-4BDR – Nữ – Kính Cứng – Quartz (Pin) – Mặt Số 43mm, Bộ Bấm Giờ, Chống Nước 10ATM', 'Baby-G BGA-130-4BDR – Nữ – Kính Cứng – Quartz (Pin) – Mặt Số 43mm, Bộ Bấm Giờ, Chống Nước 10ATM', '<h5>Th&ocirc;ng tin sản phẩm</h5>\r\n\r\n<p><strong>Thương Hiệu:</strong>&nbsp;Casio</p>\r\n\r\n<p><strong>Số Hiệu Sản Phẩm:&nbsp;</strong><a href=\"https://donghohaitrieu.com/san-pham/baby-g-nu-quartz-pin-day-cao-su-bga-130-4bdr\">BGA-130-4BDR</a></p>\r\n\r\n<p><strong>Xuất Xứ:</strong>&nbsp;Nhật Bản</p>\r\n\r\n<p><strong>Giới T&iacute;nh:</strong>&nbsp;Nữ</p>\r\n\r\n<p><strong>K&iacute;nh:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/tin-tuc/dong-ho/4-ly-do-vi-sao-kinh-khoang-mineral-crystal-pho-bien-nhat-o-dong-ho.html\" rel=\"noopener noreferrer\">Mineral Crystal</a>&nbsp;(K&iacute;nh Cứng)</p>\r\n\r\n<p><strong>M&aacute;y:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/tin-tuc/dong-ho/dong-ho-may-quartz-la-gi-uu-nhuoc-diem-dong-ho-quartz.html\" rel=\"noopener noreferrer\">Quartz</a>&nbsp;(Pin)</p>\r\n\r\n<p><strong>Bảo H&agrave;nh Quốc Tế: 5 Năm</strong></p>\r\n\r\n<p><strong>Đường K&iacute;nh Mặt Số:</strong>&nbsp;43 mm</p>\r\n\r\n<p><strong>Bề D&agrave;y Mặt Số:</strong>&nbsp;13 mm</p>\r\n\r\n<p><strong>Niềng:</strong>&nbsp;Nhựa</p>\r\n\r\n<p><strong>D&acirc;y Đeo:</strong>&nbsp;D&acirc;y Cao Su</p>\r\n\r\n<p><strong>M&agrave;u Mặt Số:</strong>&nbsp;Hồng</p>\r\n\r\n<p><strong>Chống Nước:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/muc-chong-nuoc/di-boi-10-atm\" rel=\"noopener noreferrer\">10 ATM</a></p>\r\n\r\n<p><strong>Chức Năng:</strong>&nbsp;Lịch &ndash; Bộ Bấm Giờ &ndash; Giờ K&eacute;p &ndash; Đ&egrave;n Led &ndash; V&agrave;i Chức Năng Kh&aacute;c</p>\r\n\r\n<p><strong><a href=\"https://donghohaitrieu.com/tin-tuc/dong-ho/noi-san-xuat-dong-ho-deo-tay-cua-cac-thuong-hieu-noi-tieng.html\" rel=\"noopener noreferrer\">Nơi sản xuất (T&ugrave;y từng l&ocirc; h&agrave;ng)</a>:</strong>&nbsp;Trung Quốc</p>\r\n\r\n<div class=\"ddict_btn\" style=\"left:165.922px; top:290px\"><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></div>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>Đồng hồ Baby-G BGA-130-4BDR với phong c&aacute;ch thể thao c&aacute; t&iacute;nh d&agrave;nh cho nữ, chất liệu vỏ v&agrave; d&acirc;y đeo l&agrave; nhựa si&ecirc;u bền m&agrave;u hồng b&oacute;ng, chữ số m&agrave;u trắng tinh tế, 2 kim độc đ&aacute;o v&agrave; 1 m&agrave;ng h&igrave;nh điện tử.</p>', 3361000, 0, 1, '2024-05-20 19:05:23', '2024-05-20 19:05:23'),
(106, 3, 9, 12, 'Baby-G Nữ – Quartz (Pin) – Dây Cao Su (BA-110-7A3DR)', 'Baby-G Nữ – Quartz (Pin) – Dây Cao Su (BA-110-7A3DR)', '<h5>Th&ocirc;ng tin sản phẩm</h5>\r\n\r\n<p><strong>Thương Hiệu:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/brand/casio\" rel=\"noopener noreferrer\" target=\"_blank\">Casio</a></p>\r\n\r\n<p><strong>Số Hiệu Sản Phẩm:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/san-pham/baby-g-nu-quartz-pin-day-cao-su-ba-110-7a3dr\" rel=\"noopener noreferrer\" target=\"_blank\">BA-110-7A3DR</a></p>\r\n\r\n<p><strong>Xuất Xứ:</strong>&nbsp;Nhật Bản</p>\r\n\r\n<p><strong>Giới T&iacute;nh:</strong>&nbsp;Nữ</p>\r\n\r\n<p><strong>K&iacute;nh:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/tin-tuc/dong-ho/4-ly-do-vi-sao-kinh-khoang-mineral-crystal-pho-bien-nhat-o-dong-ho.html\" rel=\"noopener noreferrer\" target=\"_blank\">Mineral Crystal (K&iacute;nh Cứng)</a></p>\r\n\r\n<p><strong>M&aacute;y:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/tin-tuc/dong-ho/dong-ho-thach-anh-la-gi-cach-hoat-dong-dong-ho-thach-anh-ra-sao.html\" rel=\"noopener noreferrer\" target=\"_blank\">Quartz (Pin)</a></p>\r\n\r\n<p><strong>Bảo H&agrave;nh Quốc Tế:</strong>&nbsp;5 Năm</p>\r\n\r\n<p><strong>Đường K&iacute;nh Mặt Số:</strong>&nbsp;43mm</p>\r\n\r\n<p><strong>Bề D&agrave;y Mặt Số:</strong>&nbsp;16mm</p>\r\n\r\n<p><strong>Niềng:</strong>&nbsp;Nhựa</p>\r\n\r\n<p><strong>D&acirc;y Đeo:</strong>&nbsp;D&acirc;y Cao Su</p>\r\n\r\n<p><strong>M&agrave;u Mặt Số:</strong>&nbsp;Trắng</p>\r\n\r\n<p><strong>Chống Nước:</strong>&nbsp;<a href=\"https://donghohaitrieu.com/muc-chong-nuoc/di-boi-10-atm\" rel=\"noopener noreferrer\" target=\"_blank\">10 ATM</a></p>\r\n\r\n<p><strong>Chức Năng:</strong>&nbsp;Lịch &ndash; Bộ Bấm Giờ &ndash; Giờ K&eacute;p &ndash; Đ&egrave;n Led &ndash; V&agrave;i Chức Năng Kh&aacute;c</p>\r\n\r\n<p><strong><a href=\"https://donghohaitrieu.com/tin-tuc/dong-ho/noi-san-xuat-dong-ho-deo-tay-cua-cac-thuong-hieu-noi-tieng.html\" rel=\"noopener noreferrer\" target=\"_blank\">Nơi sản xuất (T&ugrave;y từng l&ocirc; h&agrave;ng)</a>:</strong>&nbsp;Trung Quốc</p>\r\n\r\n<div class=\"ddict_btn\" style=\"left:165.922px; top:284px\"><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></div>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>Đồng hồ nữ Baby BA-110-7A3DR kiểu d&aacute;ng mạnh mẽ đầy c&aacute; t&iacute;nh, mặt đồng hồ m&agrave;u trắng,&nbsp;mặt k&iacute;nh chịu lực chống thấm nước ở độ s&acirc;u 100m, vỏ v&agrave; d&acirc;y đeo được l&agrave;m bằng nhựa cao cấp m&agrave;u trắng.</p>', 4407000, 0, 1, '2024-05-20 19:06:44', '2024-05-20 19:06:44'),
(107, 7, 10, 50, 'ĐỒNG HỒ BÁO THỨC RHYTHM CRA841NR70', 'ĐỒNG HỒ BÁO THỨC RHYTHM CRA841NR70', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Quartz (M&aacute;y pin - điện tử)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt chữ nhật</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>Đen</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vỏ m&aacute;y:</td>\r\n			<td>Nhựa</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Xuất xứ thương hiệu:</td>\r\n			<td>Nhật Bản</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>11.4cm - 9.8cm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ d&agrave;y:</td>\r\n			<td>6.8cm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh Quốc tế:</td>\r\n			<td>1 năm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: CRA841NR70</p>', 792000, 0, 1, '2024-05-20 19:11:01', '2024-05-20 19:11:01'),
(108, 7, 3, 50, 'ĐỒNG HỒ TREO TƯỜNG SEIKO QXA787SL', 'ĐỒNG HỒ TREO TƯỜNG SEIKO QXA787SL', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Quartz (M&aacute;y pin - điện tử)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt tr&ograve;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại:</td>\r\n			<td>Treo Tường</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vỏ m&aacute;y:</td>\r\n			<td>Nhựa</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>Trắng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>32.5cm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Xuất xứ thương hiệu:</td>\r\n			<td>Nhật Bản</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ d&agrave;y:</td>\r\n			<td>4.5cm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh Quốc tế:</td>\r\n			<td>1 năm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: QXA787SL</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Loại m&aacute;y: Quartz (M&aacute;y pin - điện tử)</p>\r\n	</li>\r\n	<li>\r\n	<p>Đường k&iacute;nh: 32.5cm</p>\r\n	</li>\r\n</ul>', 900000, 0, 1, '2024-05-20 19:12:39', '2024-05-20 19:12:39');
INSERT INTO `product` (`idProduct`, `idCategory`, `idBrand`, `QuantityTotal`, `ProductName`, `ProductSlug`, `DesProduct`, `ShortDes`, `Price`, `Sold`, `StatusPro`, `created_at`, `updated_at`) VALUES
(109, 7, 3, 50, 'ĐỒNG HỒ TREO TƯỜNG SEIKO QXA756KL', 'ĐỒNG HỒ TREO TƯỜNG SEIKO QXA756KL', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Quartz (M&aacute;y pin - điện tử)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt tr&ograve;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại:</td>\r\n			<td>Treo Tường</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vỏ m&aacute;y:</td>\r\n			<td>Nhựa</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>Trắng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>30.5cm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Xuất xứ thương hiệu:</td>\r\n			<td>Nhật Bản</td>\r\n		</tr>\r\n		<tr>\r\n			<td>T&iacute;nh năng kh&aacute;c:</td>\r\n			<td>Kim gi&acirc;y tr&ocirc;i &ecirc;m.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ d&agrave;y:</td>\r\n			<td>4.6cm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh Quốc tế:</td>\r\n			<td>1 năm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<blockquote>&nbsp;</blockquote>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: QXA756KL</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Loại m&aacute;y: Quartz (M&aacute;y pin - điện tử)</p>\r\n	</li>\r\n	<li>\r\n	<p>Đường k&iacute;nh: 30.5cm</p>\r\n	</li>\r\n</ul>', 870000, 0, 1, '2024-05-20 19:14:08', '2024-05-20 19:14:08'),
(110, 7, 3, 50, 'ĐỒNG HỒ TREO TƯỜNG SEIKO QXA756RL', 'ĐỒNG HỒ TREO TƯỜNG SEIKO QXA756RL', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Quartz (M&aacute;y pin - điện tử)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt tr&ograve;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại:</td>\r\n			<td>Treo Tường</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vỏ m&aacute;y:</td>\r\n			<td>Nhựa</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>Trắng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>30.5cm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Xuất xứ thương hiệu:</td>\r\n			<td>Nhật Bản</td>\r\n		</tr>\r\n		<tr>\r\n			<td>T&iacute;nh năng kh&aacute;c:</td>\r\n			<td>Kim gi&acirc;y tr&ocirc;i &ecirc;m.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ d&agrave;y:</td>\r\n			<td>4.6cm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh Quốc tế:</td>\r\n			<td>1 năm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: QXA756RL</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Loại m&aacute;y: Quartz (M&aacute;y pin - điện tử)</p>\r\n	</li>\r\n	<li>\r\n	<p>Đường k&iacute;nh: 30.5cm</p>\r\n	</li>\r\n</ul>', 870000, 0, 1, '2024-05-20 19:15:43', '2024-05-20 19:15:43'),
(111, 7, 3, 30, 'ĐỒNG HỒ TREO TƯỜNG SEIKO QXA342DR', 'ĐỒNG HỒ TREO TƯỜNG SEIKO QXA342DR', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Quartz (M&aacute;y pin - điện tử)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Kh&aacute;c</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Loại:</td>\r\n			<td>Treo Tường</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vỏ m&aacute;y:</td>\r\n			<td>Nhựa</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>Trắng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>45.5cm - 18.7cm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Xuất xứ thương hiệu:</td>\r\n			<td>Nhật Bản</td>\r\n		</tr>\r\n		<tr>\r\n			<td>T&iacute;nh năng kh&aacute;c:</td>\r\n			<td>Kim gi&acirc;y tr&ocirc;i &ecirc;m.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ d&agrave;y:</td>\r\n			<td>4.8cm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh Quốc tế:</td>\r\n			<td>1 năm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: QXA342DR</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Loại m&aacute;y: Quartz (M&aacute;y pin - điện tử)</p>\r\n	</li>\r\n	<li>\r\n	<p>Đường k&iacute;nh: 45.5cm - 18.7cm</p>\r\n	</li>\r\n</ul>', 1710000, 0, 1, '2024-05-20 19:17:08', '2024-05-20 19:17:08'),
(112, 7, 5, 50, 'VÒNG TAY DANIEL WELLINGTON CLASSIC TENNIS SILVER DW00400386', 'VÒNG TAY DANIEL WELLINGTON CLASSIC TENNIS SILVER DW00400386', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Xuất xứ thương hiệu:</td>\r\n			<td>Thụy Điển</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Giới t&iacute;nh:</td>\r\n			<td>Nữ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>155mm - 185mm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: DW00400386</p>', 1570000, 0, 1, '2024-05-20 19:18:59', '2024-05-20 19:18:59'),
(113, 7, 5, 30, 'VÒNG TAY DANIEL WELLINGTON CLASSIC TENNIS ROSE GOLD DW00400387', 'VÒNG TAY DANIEL WELLINGTON CLASSIC TENNIS ROSE GOLD DW00400387', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Xuất xứ thương hiệu:</td>\r\n			<td>Thụy Điển</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Giới t&iacute;nh:</td>\r\n			<td>Nữ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L mạ v&agrave;ng c&ocirc;ng nghệ PVD</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>155mm - 185mm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: DW00400387</p>', 1570000, 0, 1, '2024-05-20 19:20:14', '2024-05-20 19:20:14'),
(114, 7, 5, 19, 'VÒNG TAY DANIEL WELLINGTON CLASSIC CUFF LARGE DW00400002', 'VÒNG TAY DANIEL WELLINGTON CLASSIC CUFF LARGE DW00400002', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Xuất xứ thương hiệu:</td>\r\n			<td>Thụy Điển</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Giới t&iacute;nh:</td>\r\n			<td>Unisex</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>65 mm x 51 mm, 35 mm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: DW00400002</p>', 1712000, 0, 1, '2024-05-20 19:21:27', '2024-05-20 19:21:27'),
(115, 7, 5, 25, 'VÒNG TAY DANIEL WELLINGTON CLASSIC CUFF SMALL DW00400003', 'VÒNG TAY DANIEL WELLINGTON CLASSIC CUFF SMALL DW00400003', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Xuất xứ thương hiệu:</td>\r\n			<td>Thụy Điển</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Giới t&iacute;nh:</td>\r\n			<td>Nữ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L mạ v&agrave;ng c&ocirc;ng nghệ PVD</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>54mm x 43mm, 27mm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: DW00400003</p>', 1712000, 0, 1, '2024-05-20 19:22:42', '2024-05-20 19:22:42'),
(116, 7, 5, 32, 'DANIEL WELLINGTON CLASSIC BRACELET CUFF LARGE DW00400074', 'DANIEL WELLINGTON CLASSIC BRACELET CUFF LARGE DW00400074', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Xuất xứ thương hiệu:</td>\r\n			<td>Thụy Điển</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Giới t&iacute;nh:</td>\r\n			<td>Unisex</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất liệu:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L mạ v&agrave;ng c&ocirc;ng nghệ PVD</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>185mm/7 inch</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<div class=\"ddict_btn\" style=\"left:185.486px; top:77px\"><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></div>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: DW00400074</p>', 1712000, 0, 1, '2024-05-20 19:24:02', '2024-05-20 19:24:02'),
(117, 7, 3, 10, 'ĐỒNG HỒ ĐỂ BÀN SEIKO QHJ201GL', 'ĐỒNG HỒ ĐỂ BÀN SEIKO QHJ201GL', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Đồng hồ để b&agrave;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt chữ nhật</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>V&agrave;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vỏ m&aacute;y:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ mạ v&agrave;ng c&ocirc;ng nghệ PVD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Xuất xứ thương hiệu:</td>\r\n			<td>Nhật Bản</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>24.9cm - 15.3cm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ d&agrave;y:</td>\r\n			<td>8.5cm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>T&iacute;nh năng kh&aacute;c:</td>\r\n			<td>Tiếng chu&ocirc;ng của Westminster/Whittingdon đ&uacute;ng giờ. Bộ giảm thanh chu&ocirc;ng tự động với điều khiển &acirc;m lượng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh Quốc tế:</td>\r\n			<td>1 năm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: QHJ201GL</p>', 9110000, 0, 1, '2024-05-20 19:25:27', '2024-05-20 19:25:27'),
(118, 7, 3, 6, 'ĐỒNG HỒ ĐỂ BÀN SEIKO QXW250KL', 'ĐỒNG HỒ ĐỂ BÀN SEIKO QXW250KL', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Đồng hồ để b&agrave;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt chữ nhật</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>Khảm trai</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vỏ m&aacute;y:</td>\r\n			<td>Gỗ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Xuất xứ thương hiệu:</td>\r\n			<td>Nhật Bản</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>28.5cm - 20.5cm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ d&agrave;y:</td>\r\n			<td>11cm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>T&iacute;nh năng kh&aacute;c:</td>\r\n			<td>18 giai điệu Hi-Fi: The Four Seasons \\&#39;Spring\\&#39;, Kanon, Eine Kleine Nachtmusik, Symphony No.6 \\&#39;Pastoral\\&#39;, Mornign Peer Gynt, La Traviata \\&#39;Drinking Song\\&#39;, Amazing Grace, The Planets \\&#39;Jupiter\\&#39;, Waltz Of The Flowers, Salut D\\&#39;amour, Pictures At An Exhi</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: QXW250KL</p>', 7550000, 0, 1, '2024-05-20 19:26:42', '2024-05-20 19:26:42'),
(119, 7, 3, 6, 'ĐỒNG HỒ ĐỂ BÀN SEIKO QXW249KL', 'ĐỒNG HỒ ĐỂ BÀN SEIKO QXW249KL', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Đồng hồ để b&agrave;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt chữ nhật</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>Khảm trai</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vỏ m&aacute;y:</td>\r\n			<td>Gỗ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Xuất xứ thương hiệu:</td>\r\n			<td>Nhật Bản</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>21.6cm - 20.3cm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ d&agrave;y:</td>\r\n			<td>9cm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>T&iacute;nh năng kh&aacute;c:</td>\r\n			<td>18 giai điệu Hi-Fi: The Four Seasons \\&#39;Spring\\&#39;, Kanon, Eine Kleine Nachtmusik, Symphony No.6 \\&#39;Pastoral\\&#39;, Mornign Peer Gynt, La Traviata \\&#39;Drinking Song\\&#39;, Amazing Grace, The Planets \\&#39;Jupiter\\&#39;, Waltz Of The Flowers, Salut D\\&#39;amour, Pictures At An Exhi</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: QXW249KL</p>', 5850000, 0, 1, '2024-05-20 19:27:49', '2024-05-20 19:27:49'),
(120, 7, 3, 7, 'ĐỒNG HỒ ĐỂ BÀN SEIKO QHE173GN', 'ĐỒNG HỒ ĐỂ BÀN SEIKO QHE173GN', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Quartz (M&aacute;y pin - điện tử)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt vu&ocirc;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>Trắng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vỏ m&aacute;y:</td>\r\n			<td>Nh&ocirc;m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Xuất xứ thương hiệu:</td>\r\n			<td>Nhật Bản</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>8.4cm - 10.5cm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ d&agrave;y:</td>\r\n			<td>4.8cm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh Quốc tế:</td>\r\n			<td>1 năm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<blockquote>&nbsp;</blockquote>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: QHE173GN</p>', 315000, 0, 1, '2024-05-20 19:28:54', '2024-05-20 19:28:54'),
(121, 7, 3, 14, 'ĐỒNG HỒ ĐỂ BÀN SEIKO QHN006GN', 'ĐỒNG HỒ ĐỂ BÀN SEIKO QHN006GN', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Loại m&aacute;y:</td>\r\n			<td>Quartz (M&aacute;y pin - điện tử)</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Kiểu d&aacute;ng:</td>\r\n			<td>Mặt tr&ograve;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u mặt:</td>\r\n			<td>V&agrave;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vỏ m&aacute;y:</td>\r\n			<td>Nhựa</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Đường k&iacute;nh:</td>\r\n			<td>23.5x16x16 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bảo h&agrave;nh Quốc tế:</td>\r\n			<td>1 năm quốc tế</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: QHN006GN</p>', 2990000, 0, 1, '2024-05-20 19:30:09', '2024-05-20 19:30:09'),
(122, 6, 5, 11, 'DÂY MILANESE DANIEL WELLINGTON PETITE STERLING DW00200140', 'DÂY MILANESE DANIEL WELLINGTON PETITE STERLING DW00200140', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Thương hiệu:</td>\r\n			<td>Daniel Wellington</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Xuất xứ thương hiệu:</td>\r\n			<td>Thụy Điển</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size d&acirc;y:</td>\r\n			<td>14mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất Liệu:</td>\r\n			<td>Th&eacute;p kh&ocirc;ng gỉ 316L dạng lưới</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u D&acirc;y:</td>\r\n			<td>Bạc</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: DW00200140 14mm</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Xuất xứ thương hiệu: Thụy Điển</p>\r\n	</li>\r\n	<li>\r\n	<p>Size d&acirc;y: 14mm</p>\r\n	</li>\r\n	<li>\r\n	<p>M&agrave;u D&acirc;y: Bạc</p>\r\n	</li>\r\n</ul>', 1558000, 0, 1, '2024-05-20 19:32:07', '2024-05-20 19:32:07'),
(123, 6, 5, 6, 'DÂY ĐỒNG HỒ DANIEL WELLINGTON PETITE SHEFFIELD DW00200280', 'DÂY ĐỒNG HỒ DANIEL WELLINGTON PETITE SHEFFIELD DW00200280', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Thương hiệu:</td>\r\n			<td>Daniel Wellington</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Xuất xứ thương hiệu:</td>\r\n			<td>Thụy Điển</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size d&acirc;y:</td>\r\n			<td>10mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất Liệu:</td>\r\n			<td>D&acirc;y da</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u D&acirc;y:</td>\r\n			<td>Đen</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: DW00200280</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Xuất xứ thương hiệu: Thụy Điển</p>\r\n	</li>\r\n	<li>\r\n	<p>Size d&acirc;y: 10mm</p>\r\n	</li>\r\n	<li>\r\n	<p>M&agrave;u D&acirc;y: Đen</p>\r\n	</li>\r\n</ul>', 1340000, 0, 1, '2024-05-20 19:33:26', '2024-05-20 19:33:26'),
(124, 6, 5, 5, 'DÂY DANIEL WELLINGTON CLASSIC READING DW00200041', 'DÂY DANIEL WELLINGTON CLASSIC READING DW00200041', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Thương hiệu:</td>\r\n			<td>Daniel Wellington</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Xuất xứ thương hiệu:</td>\r\n			<td>Thụy Điển</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size d&acirc;y:</td>\r\n			<td>18mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất Liệu:</td>\r\n			<td>D&acirc;y da</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u D&acirc;y:</td>\r\n			<td>Đen</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: DW00200041 18mm</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Xuất xứ thương hiệu:Thụy Điển</p>\r\n	</li>\r\n	<li>\r\n	<p>Size d&acirc;y:18mm</p>\r\n	</li>\r\n	<li>\r\n	<p>M&agrave;u D&acirc;y:Đen</p>\r\n	</li>\r\n</ul>', 1274000, 0, 1, '2024-05-20 19:34:55', '2024-05-20 19:34:55'),
(125, 6, 5, 4, 'DÂY DANIEL WELLINGTON PETITE BRISTOL DW00200141', 'DÂY DANIEL WELLINGTON PETITE BRISTOL DW00200141', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Thương hiệu:</td>\r\n			<td>Daniel Wellington</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Xuất xứ thương hiệu:</td>\r\n			<td>Thụy Điển</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size d&acirc;y:</td>\r\n			<td>14mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất Liệu:</td>\r\n			<td>D&acirc;y da</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u D&acirc;y:</td>\r\n			<td>N&acirc;u</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: DW00200141 14mm</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Xuất xứ thương hiệu:Thụy Điển</p>\r\n	</li>\r\n	<li>\r\n	<p>Size d&acirc;y:14mm</p>\r\n	</li>\r\n	<li>\r\n	<p>M&agrave;u D&acirc;y:N&acirc;u</p>\r\n	</li>\r\n</ul>', 1274000, 0, 1, '2024-05-20 19:36:20', '2024-05-20 19:36:20'),
(126, 6, 5, 9, 'DÂY NATO DANIEL WELLINGTON CLASSIC CORNWALL DW00200135', 'DÂY NATO DANIEL WELLINGTON CLASSIC CORNWALL DW00200135', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Thương hiệu:</td>\r\n			<td>Daniel Wellington</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Xuất xứ thương hiệu:</td>\r\n			<td>Thụy Điển</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size d&acirc;y:</td>\r\n			<td>20mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất Liệu:</td>\r\n			<td>D&acirc;y Nato</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u D&acirc;y:</td>\r\n			<td>Đen</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: DW00200135 20mm</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Xuất xứ thương hiệu:Thụy Điển</p>\r\n	</li>\r\n	<li>\r\n	<p>Size d&acirc;y:20mm</p>\r\n	</li>\r\n	<li>\r\n	<p>M&agrave;u D&acirc;y:Đen</p>\r\n	</li>\r\n</ul>', 866000, 0, 1, '2024-05-20 19:37:59', '2024-05-20 19:37:59'),
(127, 6, 5, 8, 'DÂY NATO DANIEL WELLINGTON CLASSIC OXFORD DW00200046', 'DÂY NATO DANIEL WELLINGTON CLASSIC OXFORD DW00200046', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Thương hiệu:</td>\r\n			<td>Daniel Wellington</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Xuất xứ thương hiệu:</td>\r\n			<td>Thụy Điển</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size d&acirc;y:</td>\r\n			<td>18mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất Liệu:</td>\r\n			<td>D&acirc;y Nato</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u D&acirc;y:</td>\r\n			<td>Xanh v&agrave; đỏ</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: DW00200046 18mm</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Xuất xứ thương hiệu:Thụy Điển</p>\r\n	</li>\r\n	<li>\r\n	<p>Size d&acirc;y:18mm</p>\r\n	</li>\r\n	<li>\r\n	<p>M&agrave;u D&acirc;y:Xanh v&agrave; đỏ</p>\r\n	</li>\r\n</ul>', 866000, 0, 1, '2024-05-20 19:39:15', '2024-05-20 19:39:15'),
(128, 6, 3, 15, 'DÂY DÙ ĐỒNG HỒ SEIKO 5 QUÂN ĐỘI TRẮNG 4K10JZ (SIZE MẶT 37MM)', 'DÂY DÙ ĐỒNG HỒ SEIKO 5 QUÂN ĐỘI TRẮNG 4K10JZ (SIZE MẶT 37MM)', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Thương hiệu:</td>\r\n			<td>Seiko</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Xuất xứ thương hiệu:</td>\r\n			<td>Nhật Bản</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size d&acirc;y:</td>\r\n			<td>18mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất Liệu:</td>\r\n			<td>D&acirc;y D&ugrave;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u D&acirc;y:</td>\r\n			<td>Trắng</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: 4K10JZ 18mm</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Xuất xứ thương hiệu:Nhật Bản</p>\r\n	</li>\r\n	<li>\r\n	<p>Size d&acirc;y:18mm</p>\r\n	</li>\r\n	<li>\r\n	<p>M&agrave;u D&acirc;y:Trắng</p>\r\n	</li>\r\n</ul>', 540000, 0, 1, '2024-05-20 19:40:45', '2024-05-20 19:40:45'),
(129, 6, 3, 15, 'DÂY DÙ ĐỒNG HỒ SEIKO 5 QUÂN ĐỘI XANH LÁ 4K11JZ (SIZE MẶT 37MM)', 'DÂY DÙ ĐỒNG HỒ SEIKO 5 QUÂN ĐỘI XANH LÁ 4K11JZ (SIZE MẶT 37MM)', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Thương hiệu:</td>\r\n			<td>Seiko</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Xuất xứ thương hiệu:</td>\r\n			<td>Nhật Bản</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size d&acirc;y:</td>\r\n			<td>18mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất Liệu:</td>\r\n			<td>D&acirc;y D&ugrave;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u D&acirc;y:</td>\r\n			<td>Xanh L&aacute;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: 4K11JZ 18mm</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Xuất xứ thương hiệu:Nhật Bản</p>\r\n	</li>\r\n	<li>\r\n	<p>Size d&acirc;y:18mm</p>\r\n	</li>\r\n	<li>\r\n	<p>M&agrave;u D&acirc;y:Xanh L&aacute;</p>\r\n	</li>\r\n</ul>', 540000, 0, 1, '2024-05-20 19:41:59', '2024-05-20 19:41:59'),
(130, 6, 3, 15, 'DÂY DÙ ĐỒNG HỒ SEIKO 5 QUÂN ĐỘI XANH LAM 4K12JZ (SIZE MẶT 37MM)', 'DÂY DÙ ĐỒNG HỒ SEIKO 5 QUÂN ĐỘI XANH LAM 4K12JZ (SIZE MẶT 37MM)', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Thương hiệu:</td>\r\n			<td>Seiko</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Xuất xứ thương hiệu:</td>\r\n			<td>Nhật Bản</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size d&acirc;y:</td>\r\n			<td>18mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất Liệu:</td>\r\n			<td>D&acirc;y D&ugrave;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u D&acirc;y:</td>\r\n			<td>Xanh Lam</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: 4K12JZ 18mm</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Xuất xứ thương hiệu:Nhật Bản</p>\r\n	</li>\r\n	<li>\r\n	<p>Size d&acirc;y:18mm</p>\r\n	</li>\r\n	<li>\r\n	<p>M&agrave;u D&acirc;y:Xanh Lam</p>\r\n	</li>\r\n</ul>', 540000, 0, 1, '2024-05-20 19:43:09', '2024-05-20 19:43:09'),
(131, 6, 3, 15, 'DÂY DÙ ĐỒNG HỒ SEIKO 5 QUÂN ĐỘI ĐEN 4K13JZ (SIZE MẶT 37MM)', 'DÂY DÙ ĐỒNG HỒ SEIKO 5 QUÂN ĐỘI ĐEN 4K13JZ (SIZE MẶT 37MM)', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Thương hiệu:</td>\r\n			<td>Seiko</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Xuất xứ thương hiệu:</td>\r\n			<td>Nhật Bản</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size d&acirc;y:</td>\r\n			<td>18mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất Liệu:</td>\r\n			<td>D&acirc;y D&ugrave;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u D&acirc;y:</td>\r\n			<td>Đen</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: 4K13JZ 18mm</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Xuất xứ thương hiệu:Nhật Bản</p>\r\n	</li>\r\n	<li>\r\n	<p>Size d&acirc;y:18mm</p>\r\n	</li>\r\n	<li>\r\n	<p>M&agrave;u D&acirc;y:Đen</p>\r\n	</li>\r\n</ul>', 540000, 0, 1, '2024-05-20 19:44:45', '2024-05-20 19:44:45'),
(132, 6, 7, 3, 'DÂY ĐỒNG HỒ TISSOT 21MM T852.035.976', 'DÂY ĐỒNG HỒ TISSOT 21MM T852.035.976', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Thương hiệu:</td>\r\n			<td>Tissot</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Xuất xứ thương hiệu:</td>\r\n			<td>Ch&iacute;nh h&atilde;ng Tissot</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size d&acirc;y:</td>\r\n			<td>21mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất Liệu:</td>\r\n			<td>D&acirc;y da b&ograve;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u D&acirc;y:</td>\r\n			<td>Đen</td>\r\n		</tr>\r\n		<tr>\r\n			<td>C&aacute;c m&atilde; đồng hồ tương th&iacute;ch:</td>\r\n			<td>T097.427, T068.427, T099.407, T099.429, T099.427, T099.408, T099.429, T099.405, T109.610, T109.407, T127.407, T098.407, T127.410, T076.417, T914.407, T914.410</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: T852.035.976 21mm</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Xuất xứ thương hiệu:Ch&iacute;nh h&atilde;ng Tissot</p>\r\n	</li>\r\n	<li>\r\n	<p>Size d&acirc;y:21mm</p>\r\n	</li>\r\n	<li>\r\n	<p>M&agrave;u D&acirc;y:Đen</p>\r\n	</li>\r\n</ul>', 2570000, 0, 1, '2024-05-20 19:46:56', '2024-05-20 19:46:56'),
(133, 6, 7, 4, 'DÂY DA TISSOT T02 T600035079', 'DÂY DA TISSOT T02 T600035079', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Thương hiệu:</td>\r\n			<td>Tissot</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Xuất xứ thương hiệu:</td>\r\n			<td>Thụy Sỹ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size d&acirc;y:</td>\r\n			<td>23mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất Liệu:</td>\r\n			<td>D&acirc;y da</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u D&acirc;y:</td>\r\n			<td>N&acirc;u</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: T600035079 23mm</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Xuất xứ thương hiệu:Thụy Sỹ</p>\r\n	</li>\r\n	<li>\r\n	<p>Size d&acirc;y:23mm</p>\r\n	</li>\r\n	<li>\r\n	<p>M&agrave;u D&acirc;y:N&acirc;u</p>\r\n	</li>\r\n</ul>', 2340000, 0, 1, '2024-05-20 19:48:07', '2024-05-20 19:48:07'),
(134, 6, 7, 5, 'DÂY DA TISSOT TRADITION T610031949', 'DÂY DA TISSOT TRADITION T610031949', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Thương hiệu:</td>\r\n			<td>Tissot</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Xuất xứ thương hiệu:</td>\r\n			<td>Thụy Sỹ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size d&acirc;y:</td>\r\n			<td>20mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất Liệu:</td>\r\n			<td>D&acirc;y da</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u D&acirc;y:</td>\r\n			<td>Đen</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: T610031949 20mm</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Xuất xứ thương hiệu:Thụy Sỹ</p>\r\n	</li>\r\n	<li>\r\n	<p>Size d&acirc;y:20mm</p>\r\n	</li>\r\n	<li>\r\n	<p>M&agrave;u D&acirc;y:Đen</p>\r\n	</li>\r\n</ul>', 1410000, 0, 1, '2024-05-20 19:49:41', '2024-05-20 19:49:41'),
(135, 6, 7, 7, 'DÂY DA TISSOT EVERY TIME T600038635', 'DÂY DA TISSOT EVERY TIME T600038635', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Thương hiệu:</td>\r\n			<td>Tissot</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Xuất xứ thương hiệu:</td>\r\n			<td>Thụy Sỹ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size d&acirc;y:</td>\r\n			<td>15mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất Liệu:</td>\r\n			<td>D&acirc;y da</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u D&acirc;y:</td>\r\n			<td>N&acirc;u</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: T600038635 15mm</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Xuất xứ thương hiệu:Thụy Sỹ</p>\r\n	</li>\r\n	<li>\r\n	<p>Size d&acirc;y:15mm</p>\r\n	</li>\r\n	<li>\r\n	<p>M&agrave;u D&acirc;y:N&acirc;u</p>\r\n	</li>\r\n</ul>', 1410000, 0, 1, '2024-05-20 19:50:55', '2024-05-20 19:50:55'),
(136, 6, 7, 5, 'DÂY DA TISSOT FLAMINGO T610036541', 'DÂY DA TISSOT FLAMINGO T610036541', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Thương hiệu:</td>\r\n			<td>Tissot</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Xuất xứ thương hiệu:</td>\r\n			<td>Thụy Sỹ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size d&acirc;y:</td>\r\n			<td>12mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất Liệu:</td>\r\n			<td>D&acirc;y da</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u D&acirc;y:</td>\r\n			<td>Trắng</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: T610036541 12mm</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Xuất xứ thương hiệu:Thụy Sỹ</p>\r\n	</li>\r\n	<li>\r\n	<p>Size d&acirc;y:12mm</p>\r\n	</li>\r\n	<li>\r\n	<p>M&agrave;u D&acirc;y:Trắng</p>\r\n	</li>\r\n</ul>', 1410000, 0, 1, '2024-05-20 19:52:26', '2024-05-20 19:52:26'),
(137, 6, 7, 6, 'DÂY ĐỒNG HỒ TISSOT 16MM T852.047.114', 'DÂY ĐỒNG HỒ TISSOT 16MM T852.047.114', '<p>TH&Ocirc;NG TIN SẢN PHẨM</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Thương hiệu:</td>\r\n			<td>Tissot</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Xuất xứ thương hiệu:</td>\r\n			<td>Ch&iacute;nh h&atilde;ng Tissot</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Size d&acirc;y:</td>\r\n			<td>16mm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chất Liệu:</td>\r\n			<td>D&acirc;y da</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&agrave;u D&acirc;y:</td>\r\n			<td>Hồng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Độ D&agrave;i:</td>\r\n			<td>Chiều d&agrave;i d&acirc;y đeo 6h 110mm. Chiều d&agrave;i d&acirc;y đeo 12h 70mm.</td>\r\n		</tr>\r\n		<tr>\r\n			<td>C&aacute;c m&atilde; đồng hồ tương th&iacute;ch:</td>\r\n			<td>T108.208, T103.210, T103.310, T122.223, T099.207, T050.207, T143.210, T926.210, T929.210, T134.210, T128.509, T101.207, T101.210, T055.217, T914.210, T063.210, T920.207, T920.210, T143.210</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: T852.047.114 16mm</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Xuất xứ thương hiệu:Ch&iacute;nh h&atilde;ng Tissot</p>\r\n	</li>\r\n	<li>\r\n	<p>Size d&acirc;y:16mm</p>\r\n	</li>\r\n	<li>\r\n	<p>M&agrave;u D&acirc;y:Hồng</p>\r\n	</li>\r\n</ul>', 1240000, 0, 1, '2024-05-20 19:53:56', '2024-05-20 19:53:56'),
(138, 3, 9, 24, 'Đồng Hồ Thông Minh Trẻ Em Giá Rẻ BBK01 – Có Camera Chụp Ảnh Từ Xa – Có Bàn Phím & Tiếng Việt', 'Đồng Hồ Thông Minh Trẻ Em Giá Rẻ BBK01 – Có Camera Chụp Ảnh Từ Xa – Có Bàn Phím & Tiếng Việt', '<ul>\r\n	<li>M&atilde; sản phẩm: BBK01</li>\r\n	<li>Bảo H&agrave;nh:&nbsp;Ch&iacute;nh h&atilde;ng 06 th&aacute;ng</li>\r\n	<li>Khuyến mại:&nbsp;Tặng Ebook hướng dẫn c&agrave;i đặt Tiếng Việt + Hỗ trợ vệ sinh, bảo dưỡng đồng hồ trọn đời.</li>\r\n	<li>Ch&uacute; &Yacute;:&nbsp;Miễn ph&iacute; trọn đời PHẦN MỀM c&agrave;i đặt tr&ecirc;n ANDROID v&agrave; IOS tr&ecirc;n IPHONE. C&aacute;c mẫu kh&aacute;c tr&ecirc;n thị trường kh&ocirc;ng c&oacute;</li>\r\n	<li>Vận chuyển:&nbsp;Giao h&agrave;ng &ndash; Thanh to&aacute;n tại nh&agrave; tr&ecirc;n to&agrave;n quốc &ndash; Nhận h&agrave;ng trong 30 ph&uacute;t tại H&agrave; Nội.</li>\r\n	<li>Cam kết:&nbsp;Ho&agrave;n lại tiền 100% gi&aacute; trị nếu kh&ocirc;ng đ&uacute;ng quảng c&aacute;o.</li>\r\n	<li>T&igrave;nh trạng:&nbsp;Chỉ c&ograve;n 5 chiếc</li>\r\n	<li>H&atilde;ng Sản Xuất:&nbsp;Baby Kid</li>\r\n</ul>\r\n\r\n<div class=\"ddict_btn\" style=\"left:186.458px; top:32px\"><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></div>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: BBK01</p>', 550000, 0, 1, '2024-05-20 19:56:20', '2024-05-20 19:56:20'),
(139, 3, 9, 26, 'Đồng Hồ Thông Minh Định Vị Trẻ Em BabyKid GW800X Chống Nước IP67 ( Định vị GPS + LBS) Có Camera Chụp Ảnh Từ Xa', 'Đồng Hồ Thông Minh Định Vị Trẻ Em BabyKid GW800X Chống Nước IP67 ( Định vị GPS + LBS) Có Camera Chụp Ảnh Từ Xa', '<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Bảo H&agrave;nh:&nbsp;Ch&iacute;nh h&atilde;ng 12 Th&aacute;ng &ndash; 1 đổi 1</li>\r\n	<li>Duy nhất h&ocirc;m nay:&nbsp;Tặng&nbsp;<strong>SIM 4G c&oacute; 150GB Data&nbsp;</strong>tốc độ cao + Th&ecirc;m&nbsp;<strong>T&agrave;i khoản 60K</strong>&nbsp;trị gi&aacute;&nbsp;<strong>250.000 vnđ</strong>&nbsp;lắp sẵn về d&ugrave;ng lu&ocirc;n</li>\r\n	<li>Vận chuyển:&nbsp;Giao h&agrave;ng &ndash; Thanh to&aacute;n tại nh&agrave; tr&ecirc;n to&agrave;n quốc &ndash; Nhận h&agrave;ng trong 30 ph&uacute;t tại H&agrave; Nội. Miễn ph&iacute; c&agrave;i đặt trước khi giao h&agrave;ng</li>\r\n	<li>Cam kết:&nbsp;Ho&agrave;n lại tiền 100% gi&aacute; trị nếu kh&ocirc;ng đ&uacute;ng quảng c&aacute;o.</li>\r\n	<li>T&igrave;nh trạng:&nbsp;Chỉ c&ograve;n 5 chiếc</li>\r\n	<li>M&agrave;u sắc: Xanh &ndash; Hồng &ndash; Đen</li>\r\n</ul>\r\n\r\n<div class=\"ddict_btn\" style=\"left:198.733px; top:31px\"><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></div>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>M&atilde; sản phẩm: GW800X</p>', 1450000, 0, 1, '2024-05-20 19:57:54', '2024-05-20 19:57:54'),
(140, 5, 11, 15, 'Vòng đeo tay thông minh Mi Band 8 Pro', 'Vòng đeo tay thông minh Mi Band 8 Pro', '<p>Th&ocirc;ng tin sản phẩm</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh: AMOLED1.74 inch</p>\r\n	</li>\r\n	<li>\r\n	<p>Thời lượng pin: Khoảng 6 ng&agrave;y (ở chế độ M&agrave;n h&igrave;nh lu&ocirc;n bật)Khoảng 14 ng&agrave;y (ở chế độ cơ bản)</p>\r\n	</li>\r\n	<li>\r\n	<p>Kết nối với hệ điều h&agrave;nh: iOS 12 trở l&ecirc;nAndroid 6.0 trở l&ecirc;n</p>\r\n	</li>\r\n	<li>\r\n	<p>Mặt: K&iacute;nh cường lực Gorilla Glass 3</p>\r\n	</li>\r\n	<li>\r\n	<p>T&iacute;nh năng cho sức khỏe: Đếm số bước ch&acirc;nĐo nồng độ oxy (SpO2)Đo nhịp timĐa dạng h&igrave;nh thức luyện tậpT&iacute;nh qu&atilde;ng đường chạyT&iacute;nh lượng calories ti&ecirc;u thụTheo d&otilde;i Nồng độ oxy trong m&aacute;u 24hTheo d&otilde;i nhịp tim 24hTheo d&otilde;i mức độ căng thẳng 24hTheo d&otilde;i giấc ngủTheo d&otilde;i chu kỳ kinh nguyệtNhắc nhở &iacute;t vận độngNhắc nhở nhịp tim cao, thấp</p>\r\n	</li>\r\n</ul>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>Xiaomi Band 8 Pro sở hữu thiết kế nhỏ gọn, &ocirc;m s&aacute;t cổ tay, mang đến sự thoải m&aacute;i tối đa cho người sử dụng. Với khối lượng chỉ&nbsp;<strong>22.5 g</strong>&nbsp;(chưa t&iacute;nh d&acirc;y đeo), d&ugrave; tập luyện thể thao hay l&agrave;m việc nh&agrave; th&igrave; chiếc smartband sẽ kh&ocirc;ng g&acirc;y bất kỳ cản trở n&agrave;o cho bạn.</p>', 1790000, 0, 1, '2024-05-21 02:21:22', '2024-05-21 02:21:22'),
(141, 5, 11, 15, 'Đồng hồ thông minh Xiaomi Redmi Watch 4 47.5mm dây silicone', 'Đồng hồ thông minh Xiaomi Redmi Watch 4 47.5mm dây silicone', '<p>Th&ocirc;ng tin sản phẩm</p>\r\n\r\n<p>Cấu h&igrave;nh Đồng hồ th&ocirc;ng minh Xiaomi Redmi Watch 4 47.5mm d&acirc;y silicone</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh: AMOLED1.97 inch</p>\r\n	</li>\r\n	<li>\r\n	<p>Thời lượng pin: Khoảng 20 ng&agrave;y (Chế độ cơ bản)Khoảng 10 ng&agrave;y (khi sử dụng chế độ M&agrave;n h&igrave;nh lu&ocirc;n bật)</p>\r\n	</li>\r\n	<li>\r\n	<p>Kết nối với hệ điều h&agrave;nh: iOS 12 trở l&ecirc;nAndroid 8.0 trở l&ecirc;n</p>\r\n	</li>\r\n	<li>\r\n	<p>Mặt: K&iacute;nh cường lực47.5 mm</p>\r\n	</li>\r\n	<li>\r\n	<p>T&iacute;nh năng cho sức khỏe: Đếm số bước ch&acirc;nĐo nồng độ oxy (SpO2)Đo nhịp timTheo d&otilde;i Nồng độ oxy trong m&aacute;u 24hTheo d&otilde;i nhịp tim 24hTheo d&otilde;i nhịp thởTheo d&otilde;i giấc ngủNhắc nhở nhịp tim cao, thấpNhắc nhở chu kỳ sinh l&yacute;Chấm điểm giấc ngủ</p>\r\n	</li>\r\n</ul>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>Redmi Watch 4 sở hữu&nbsp;<strong>mặt đồng hồ h&igrave;nh chữ nhật&nbsp;</strong>với c&aacute;c g&oacute;c được bo tr&ograve;n, tạo cảm gi&aacute;c thon gọn khi đeo tr&ecirc;n tay. Điểm ấn tượng m&agrave; sản phẩm n&agrave;y mang đến cho m&igrave;nh l&agrave; khối lượng kh&aacute; nhẹ, l&uacute;c đeo l&ecirc;n tay kh&aacute; &ecirc;m, kh&ocirc;ng bị mỏi hay vướng v&iacute;u khi m&igrave;nh hoạt động.</p>', 2690000, 0, 1, '2024-05-21 02:23:25', '2024-05-21 02:23:25'),
(142, 5, 11, 17, 'Đồng hồ thông minh Xiaomi Redmi Watch 3 Active 46mm', 'Đồng hồ thông minh Xiaomi Redmi Watch 3 Active 46mm', '<p>Th&ocirc;ng tin sản phẩm</p>\r\n\r\n<p>Cấu h&igrave;nh Đồng hồ th&ocirc;ng minh Xiaomi Redmi Watch 3 Active 46mm</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh: LCD1.83 inch</p>\r\n	</li>\r\n	<li>\r\n	<p>Thời lượng pin: Khoảng 8 ng&agrave;y (sử dụng với cường độ cao)&nbsp;Khoảng 12 ng&agrave;y (ở chế độ sử dụng th&ocirc;ng thường)</p>\r\n	</li>\r\n	<li>\r\n	<p>Kết nối với hệ điều h&agrave;nh: iOS 12 trở l&ecirc;nAndroid 6.0 trở l&ecirc;n</p>\r\n	</li>\r\n	<li>\r\n	<p>Mặt: K&iacute;nh thường46 mm</p>\r\n	</li>\r\n	<li>\r\n	<p>T&iacute;nh năng cho sức khỏe: Đếm số bước ch&acirc;nĐo nồng độ oxy (SpO2)Theo d&otilde;i nhịp tim 24hTheo d&otilde;i mức độ stressTheo d&otilde;i giấc ngủTheo d&otilde;i chu kỳ kinh nguyệtNhắc nhở nhịp tim cao, thấp</p>\r\n	</li>\r\n</ul>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>Về mặt thiết kế th&igrave; Xiaomi Redmi Watch 3 Active kh&ocirc;ng c&oacute; nhiều kh&aacute;c biệt so với Xiaomi Redmi Watch 3 đ&atilde; được ra mắt trước đ&oacute;. Mặt đồng hồ h&igrave;nh chữ nhật được bo cong 4 g&oacute;c v&ocirc; c&ugrave;ng tinh tế, khung viền bằng nhựa phủ mạ kim loại sang trọng v&agrave; cho khối lượng nhẹ tạo sự thoải m&aacute;i khi đeo.&nbsp;</p>', 1490000, 0, 1, '2024-05-21 02:25:15', '2024-05-21 02:25:15'),
(143, 5, 11, 25, 'Vòng đeo tay thông minh Mi Band 7 Pro', 'Vòng đeo tay thông minh Mi Band 7 Pro', '<p>Th&ocirc;ng tin sản phẩm</p>\r\n\r\n<p>Cấu h&igrave;nh V&ograve;ng đeo tay th&ocirc;ng minh Mi Band 7 Pro</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh: AMOLED1.64 inch</p>\r\n	</li>\r\n	<li>\r\n	<p>Thời lượng pin: Khoảng 12 ng&agrave;y</p>\r\n	</li>\r\n	<li>\r\n	<p>Kết nối với hệ điều h&agrave;nh: iOS 12 trở l&ecirc;nAndroid 6.0 trở l&ecirc;n</p>\r\n	</li>\r\n	<li>\r\n	<p>Mặt: K&iacute;nh cường lực 2.5D41.2 mm</p>\r\n	</li>\r\n	<li>\r\n	<p>T&iacute;nh năng cho sức khỏe: Đếm số bước ch&acirc;nT&iacute;nh qu&atilde;ng đường chạyT&iacute;nh lượng calories ti&ecirc;u thụTheo d&otilde;i Nồng độ oxy trong m&aacute;u 24hTheo d&otilde;i nhịp tim 24hTheo d&otilde;i mức độ căng thẳng 24hTheo d&otilde;i giấc ngủTheo d&otilde;i chu kỳ kinh nguyệtNhắc nhở &iacute;t vận độngNhắc nhở nhịp tim cao, thấp</p>\r\n	</li>\r\n</ul>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>Mi Band 7 Pro sở hữu mặt h&igrave;nh chữ nhật với k&iacute;ch thước&nbsp;<strong>41.2 mm</strong>&nbsp;ph&ugrave; hợp với nhiều k&iacute;ch cỡ cổ tay. Ph&ugrave; hợp với những bạn c&oacute; cổ tay từ 15.5 cm - 20 cm, tay m&igrave;nh cỡ 16.5 cm khi đeo th&igrave; v&ocirc; c&ugrave;ng vừa vặn, kh&ocirc;ng l&agrave;m tay m&igrave;nh bị th&ocirc;, c&ograve;n c&aacute;c bạn nam c&oacute; cỡ tay lớn khi đeo v&agrave;o nh&igrave;n rất h&agrave;i h&ograve;a.</p>\r\n\r\n<p>Tổng khối lượng của chiếc v&ograve;ng tay th&ocirc;ng minh n&agrave;y l&agrave;&nbsp;<strong>20.5 g&nbsp;</strong>rất nhẹ, kh&ocirc;ng tạo cảm gi&aacute;c nặng tay khi đeo, thuận tiện hơn trong qu&aacute; tr&igrave;nh tập luyện thể thao hoặc sinh hoạt thường ng&agrave;y.</p>', 1890000, 0, 1, '2024-05-21 02:26:54', '2024-05-21 02:26:54'),
(144, 5, 11, 35, 'Vòng đeo tay thông minh Mi Band 8 Active', 'Vòng đeo tay thông minh Mi Band 8 Active', '<p>Th&ocirc;ng tin sản phẩm</p>\r\n\r\n<p>Cấu h&igrave;nh V&ograve;ng đeo tay th&ocirc;ng minh Mi Band 8 Active</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh: TFT1.47 inch</p>\r\n	</li>\r\n	<li>\r\n	<p>Thời lượng pin: Khoảng 6 ng&agrave;y (sử dụng với cường độ cao)Khoảng 14 ng&agrave;y (ở chế độ cơ bản)</p>\r\n	</li>\r\n	<li>\r\n	<p>Kết nối với hệ điều h&agrave;nh: iOS 12 trở l&ecirc;nAndroid 8.0 trở l&ecirc;n</p>\r\n	</li>\r\n	<li>\r\n	<p>Mặt: K&iacute;nh cường lực 2.5D42.81 mm</p>\r\n	</li>\r\n	<li>\r\n	<p>T&iacute;nh năng cho sức khỏe: Đếm số bước ch&acirc;nĐo nồng độ oxy (SpO2)Đo nhịp timT&iacute;nh qu&atilde;ng đường chạyT&iacute;nh lượng calories ti&ecirc;u thụTheo d&otilde;i Nồng độ oxy trong m&aacute;u 24hTheo d&otilde;i nhịp tim 24hTheo d&otilde;i mức độ stressTheo d&otilde;i giấc ngủTheo d&otilde;i chu kỳ kinh nguyệt</p>\r\n	</li>\r\n</ul>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>Mi Band 8 Active c&oacute;<strong>&nbsp;mặt h&igrave;nh chữ nhật&nbsp;</strong>với khung viền nhựa cứng c&aacute;p, tối ưu khối lượng tổng thể. V&ograve;ng đeo tay kh&ocirc;ng trang bị ph&iacute;m cứng n&ecirc;n c&aacute;c thao t&aacute;c điều hướng đều sẽ thực hiện trực tiếp tr&ecirc;n m&agrave;n h&igrave;nh cảm ứng. Những l&uacute;c tay đổ mồ h&ocirc;i th&igrave; sẽ hơi bất tiện trong việc điều hướng một ch&uacute;t.</p>', 690000, 0, 1, '2024-05-21 02:28:54', '2024-05-21 02:28:54'),
(145, 5, 12, 25, 'Đồng hồ thông minh Apple Watch SE 2023 GPS 40mm viền nhôm dây thể thao', 'Đồng hồ thông minh Apple Watch SE 2023 GPS 40mm viền nhôm dây thể thao', '<p>Th&ocirc;ng tin sản phẩm</p>\r\n\r\n<p>Cấu h&igrave;nh Đồng hồ th&ocirc;ng minh Apple Watch SE 2023 GPS 40mm viền nh&ocirc;m d&acirc;y thể thao</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh: OLED</p>\r\n	</li>\r\n	<li>\r\n	<p>Thời lượng pin: Khoảng 18 giờ (ở chế độ sử dụng th&ocirc;ng thường)</p>\r\n	</li>\r\n	<li>\r\n	<p>Kết nối với hệ điều h&agrave;nh: iPhone Xs trở l&ecirc;n chạy iOS 17 trở l&ecirc;n</p>\r\n	</li>\r\n	<li>\r\n	<p>Mặt: Ion-X strengthened glass40 mm</p>\r\n	</li>\r\n	<li>\r\n	<p>T&iacute;nh năng cho sức khỏe: Đếm số bước ch&acirc;nĐo nhịp timT&iacute;nh qu&atilde;ng đường chạyT&iacute;nh lượng calories ti&ecirc;u thụTheo d&otilde;i mức độ stressTheo d&otilde;i giấc ngủTheo d&otilde;i chu kỳ kinh nguyệtNhắc nhở nhịp tim cao, thấpGửi th&ocirc;ng b&aacute;o khi c&oacute; tai nạn</p>\r\n	</li>\r\n</ul>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>X&eacute;t về mặt thiết kế th&igrave;&nbsp;<a href=\"https://www.thegioididong.com/dong-ho-thong-minh-apple-watch-se-2023\" target=\"_blank\" title=\"Xem thêm Apple Watch SE 2023 tại Thế Giới Di Động\">Apple Watch SE 2023</a>&nbsp;kh&ocirc;ng c&oacute; nhiều sự kh&aacute;c biệt so với c&aacute;c phi&ecirc;n bản đ&atilde; ra mắt trước đ&oacute;. Mặt đồng hồ được bo cong 4 g&oacute;c tạo n&ecirc;n sự liền mạch, mang đến cảm gi&aacute;c hiện đại v&agrave; sang trọng. Khung viền bằng&nbsp;<strong>hợp kim nh&ocirc;m</strong>&nbsp;vừa chắc chắn vừa c&oacute; khối lượng nhẹ, thoải m&aacute;i hơn trong qu&aacute; tr&igrave;nh sử dụng.</p>', 6390000, 0, 1, '2024-05-21 02:32:59', '2024-05-21 02:32:59'),
(146, 5, 12, 10, 'Đồng hồ thông minh Apple Watch Series 9 GPS 41mm viền nhôm dây thể thao', 'Đồng hồ thông minh Apple Watch Series 9 GPS 41mm viền nhôm dây thể thao', '<p>Th&ocirc;ng tin sản phẩm</p>\r\n\r\n<p>Cấu h&igrave;nh Đồng hồ th&ocirc;ng minh Apple Watch Series 9 GPS 41mm viền nh&ocirc;m d&acirc;y thể thao</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh: OLED1.9 inch</p>\r\n	</li>\r\n	<li>\r\n	<p>Thời lượng pin: Khoảng 36 giờ (ở chế độ Năng lượng thấp)Khoảng 18 giờ (ở chế độ sử dụng th&ocirc;ng thường)</p>\r\n	</li>\r\n	<li>\r\n	<p>Kết nối với hệ điều h&agrave;nh: iPhone Xs trở l&ecirc;n chạy iOS 17 trở l&ecirc;n</p>\r\n	</li>\r\n	<li>\r\n	<p>Mặt:&nbsp;Ion-X strengthened glass41 mm</p>\r\n	</li>\r\n	<li>\r\n	<p>T&iacute;nh năng cho sức khỏe: Ước t&iacute;nh ng&agrave;y rụng trứngĐếm số bước ch&acirc;nĐo nồng độ oxy (SpO2)Đo nhịp timĐiện t&acirc;m đồV&ugrave;ng nhịp timT&iacute;nh qu&atilde;ng đường chạyT&iacute;nh lượng calories ti&ecirc;u thụTheo d&otilde;i mức độ stressTheo d&otilde;i giấc ngủTheo d&otilde;i chu kỳ kinh nguyệtNhắc nhở nhịp tim cao, thấpChấm điểm giấc ngủ</p>\r\n	</li>\r\n</ul>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/dong-ho-thong-minh/apple-watch-s9-41mm-vien-nhom-day-silicone\" target=\"_blank\" title=\"Apple Watch Series 9 GPS 41mm viền nhôm dây thể thao\">Apple Watch Series 9 GPS 41mm viền nh&ocirc;m d&acirc;y thể thao</a>&nbsp;sở hữu thiết kế sang trọng, m&agrave;u sắc thời thượng ph&ugrave; hợp với mọi phong c&aacute;ch của người d&ugrave;ng. Đồng hồ được t&iacute;ch hợp c&aacute;c t&iacute;nh năng theo d&otilde;i sức khỏe t&acirc;n tiến, chế độ thể thao đa dạng c&ugrave;ng với định vị GPS chuẩn x&aacute;c, sẵn s&agrave;ng đồng h&agrave;nh c&ugrave;ng người d&ugrave;ng trong cuộc sống hằng ng&agrave;y.</p>', 10490000, 0, 1, '2024-05-21 02:34:52', '2024-05-21 02:34:52'),
(147, 5, 12, 17, 'Đồng hồ thông minh Apple Watch SE 2023 GPS 40mm viền nhôm dây vải', 'Đồng hồ thông minh Apple Watch SE 2023 GPS 40mm viền nhôm dây vải', '<p>Th&ocirc;ng tin sản phẩm</p>\r\n\r\n<p>Cấu h&igrave;nh Đồng hồ th&ocirc;ng minh Apple Watch SE 2023 GPS 40mm viền nh&ocirc;m d&acirc;y vải</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh: OLED</p>\r\n	</li>\r\n	<li>\r\n	<p>Thời lượng pin: Khoảng 18 giờ (ở chế độ sử dụng th&ocirc;ng thường)</p>\r\n	</li>\r\n	<li>\r\n	<p>Kết nối với hệ điều h&agrave;nh: iPhone Xs trở l&ecirc;n chạy iOS 17 trở l&ecirc;n</p>\r\n	</li>\r\n	<li>\r\n	<p>Mặt: Ion-X strengthened glass40 mm</p>\r\n	</li>\r\n	<li>\r\n	<p>T&iacute;nh năng cho sức khỏe: Đếm số bước ch&acirc;nĐo nhịp timT&iacute;nh qu&atilde;ng đường chạyT&iacute;nh lượng calories ti&ecirc;u thụTheo d&otilde;i mức độ stressTheo d&otilde;i giấc ngủTheo d&otilde;i chu kỳ kinh nguyệtNhắc nhở nhịp tim cao, thấpGửi th&ocirc;ng b&aacute;o khi c&oacute; tai nạn</p>\r\n	</li>\r\n</ul>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<p>Thiết kế của chiếc&nbsp;<a href=\"https://www.thegioididong.com/dong-ho-thong-minh-apple-watch-se-2023\" target=\"_blank\" title=\"Xem thêm Apple Watch SE 2023 tại Thế Giới Di Động\">Apple Watch SE 2023</a>&nbsp;n&agrave;y mang kiểu d&aacute;ng thanh lịch tương tự như phi&ecirc;n bản tiền nhiệm, khung viền vẫn l&agrave; chất liệu&nbsp;<strong>hợp kim nh&ocirc;m</strong>&nbsp;cứng c&aacute;p. Vị tr&iacute; c&aacute;c n&uacute;t điều khiển cũng được giữ nguy&ecirc;n n&ecirc;n mang đến sự thuận tiện cho người d&ugrave;ng khi thao t&aacute;c.</p>', 6390000, 0, 1, '2024-05-21 02:36:30', '2024-05-21 02:36:30'),
(148, 5, 12, 19, 'Đồng hồ thông minh Apple Watch SE 2023 GPS + Cellular 40mm viền nhôm dây thể thao', 'Đồng hồ thông minh Apple Watch SE 2023 GPS + Cellular 40mm viền nhôm dây thể thao', '<p>Th&ocirc;ng tin sản phẩm</p>\r\n\r\n<p>Cấu h&igrave;nh Đồng hồ th&ocirc;ng minh Apple Watch SE 2023 GPS + Cellular 40mm viền nh&ocirc;m d&acirc;y thể thao</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh: OLED</p>\r\n	</li>\r\n	<li>\r\n	<p>Thời lượng pin: Khoảng 18 giờ (ở chế độ sử dụng th&ocirc;ng thường)</p>\r\n	</li>\r\n	<li>\r\n	<p>Kết nối với hệ điều h&agrave;nh: iPhone Xs trở l&ecirc;n chạy iOS 17 trở l&ecirc;n</p>\r\n	</li>\r\n	<li>\r\n	<p>Mặt:&nbsp;Ion-X strengthened glass40 mm</p>\r\n	</li>\r\n	<li>\r\n	<p>T&iacute;nh năng cho sức khỏe: Đếm số bước ch&acirc;nĐo nhịp timT&iacute;nh qu&atilde;ng đường chạyT&iacute;nh lượng calories ti&ecirc;u thụTheo d&otilde;i mức độ stressTheo d&otilde;i giấc ngủTheo d&otilde;i chu kỳ kinh nguyệtNhắc nhở nhịp tim cao, thấpGửi th&ocirc;ng b&aacute;o khi c&oacute; tai nạn</p>\r\n	</li>\r\n</ul>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<h3><a href=\"https://www.thegioididong.com/dong-ho-thong-minh/apple-watch-se-lte-2023-40mm-vien-nhom-day-silicone\" target=\"_blank\" title=\"Apple Watch SE 2023 GPS + Cellular 40mm viền nhôm dây thể thao\">Apple Watch SE 2023 GPS + Cellular 40mm viền nh&ocirc;m d&acirc;y thể thao</a>&nbsp;l&agrave; một chiếc đồng hồ th&ocirc;ng minh được trang bị nhiều t&iacute;nh năng hiện đại, đ&aacute;p ứng nhu cầu của người d&ugrave;ng từ theo d&otilde;i sức khỏe, luyện tập thể dục thể thao đến kết nối với mọi người xung quanh.&nbsp;</h3>', 7690000, 0, 1, '2024-05-21 02:38:02', '2024-05-21 02:38:02');
INSERT INTO `product` (`idProduct`, `idCategory`, `idBrand`, `QuantityTotal`, `ProductName`, `ProductSlug`, `DesProduct`, `ShortDes`, `Price`, `Sold`, `StatusPro`, `created_at`, `updated_at`) VALUES
(149, 5, 12, 7, 'Đồng hồ thông minh Apple Watch Ultra 2 GPS + Cellular 49mm viền Titanium dây Trail size M/L', 'Đồng hồ thông minh Apple Watch Ultra 2 GPS + Cellular 49mm viền Titanium dây Trail size M/L', '<p>Th&ocirc;ng tin sản phẩm</p>\r\n\r\n<p>Cấu h&igrave;nh Đồng hồ th&ocirc;ng minh Apple Watch Ultra 2 GPS + Cellular 49mm viền Titanium d&acirc;y Trail size M/L</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh: OLED1.92 inch</p>\r\n	</li>\r\n	<li>\r\n	<p>Thời lượng pin: Khoảng 72 giờ (Chế độ năng lượng thấp)Khoảng 36 giờ (ở chế độ sử dụng th&ocirc;ng thường)</p>\r\n	</li>\r\n	<li>\r\n	<p>Kết nối với hệ điều h&agrave;nh: iPhone Xs trở l&ecirc;n chạy iOS 17 trở l&ecirc;n</p>\r\n	</li>\r\n	<li>\r\n	<p>Mặt: K&iacute;nh Sapphire49 mm</p>\r\n	</li>\r\n	<li>\r\n	<p>T&iacute;nh năng cho sức khỏe: Ước t&iacute;nh ng&agrave;y rụng trứngĐếm số bước ch&acirc;nĐo nồng độ oxy (SpO2)Đo nhịp timĐiện t&acirc;m đồV&ugrave;ng nhịp timT&iacute;nh qu&atilde;ng đường chạyT&iacute;nh lượng calories ti&ecirc;u thụTheo d&otilde;i giấc ngủTheo d&otilde;i chu kỳ kinh nguyệtNhắc nhở nhịp tim cao, thấpGửi th&ocirc;ng b&aacute;o khi c&oacute; tai nạnChấm điểm giấc ngủ</p>\r\n	</li>\r\n</ul>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<h3><a href=\"https://www.thegioididong.com/dong-ho-thong-minh/apple-watch-ultra-2-lte-49mm-vien-titanium-day-trail-size-m-l\" target=\"_blank\" title=\"Apple Watch Ultra 2 GPS + Cellular 49mm viền Titanium dây Trail size M/L\">Apple Watch Ultra 2 GPS + Cellular 49mm viền Titanium d&acirc;y Trail size M/L</a>&nbsp;l&agrave; chiếc đồng hồ thể thao chuy&ecirc;n nghiệp sở hữu thiết kế thời thượng, độ bền vượt trội v&agrave; c&aacute;c t&iacute;nh năng th&ocirc;ng minh hỗ trợ theo d&otilde;i sức khỏe, luyện tập. Đ&acirc;y sẽ l&agrave; một lựa chọn ho&agrave;n hảo cho những người đam m&ecirc; thể thao.</h3>', 21990000, 0, 1, '2024-05-21 02:40:03', '2024-05-21 02:40:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productimage`
--

CREATE TABLE `productimage` (
  `idImage` int(10) UNSIGNED NOT NULL,
  `idProduct` int(11) UNSIGNED NOT NULL,
  `ImageName` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `productimage`
--

INSERT INTO `productimage` (`idImage`, `idProduct`, `ImageName`, `created_at`, `updated_at`) VALUES
(58, 1, '[\"casio120.png\"]', '2024-05-19 07:32:23', '2024-05-19 07:32:23'),
(61, 2, '[\"casionu165.png\"]', '2024-05-19 08:20:09', '2024-05-19 08:20:09'),
(62, 3, '[\"casionu26.jpg\"]', '2024-05-19 08:55:44', '2024-05-19 08:55:44'),
(63, 59, '[\"an3688-58h_170251987426.jpg\"]', '2024-05-20 13:35:35', '2024-05-20 13:35:35'),
(64, 60, '[\"an8210-56e_171143981992.jpg\"]', '2024-05-20 13:40:18', '2024-05-20 13:40:18'),
(65, 61, '[\"dong_ho_citizen_ao3033-00l62.jpg\"]', '2024-05-20 13:43:00', '2024-05-20 13:43:00'),
(66, 62, '[\"w-737hx-5avdf_166022789149.jpg\"]', '2024-05-20 13:45:06', '2024-05-20 13:45:06'),
(67, 63, '[\"w-737h-1a2vdf_169268322157.jpg\"]', '2024-05-20 13:47:29', '2024-05-20 13:47:29'),
(68, 64, '[\"a100we-1adf_16417836620.jpg\"]', '2024-05-20 13:51:20', '2024-05-20 13:51:20'),
(69, 65, '[\"sur446p1_166632103562.jpg\"]', '2024-05-20 13:53:27', '2024-05-20 13:53:27'),
(70, 66, '[\"dong-ho-seiko-sur322p1_161215152711.jpg\"]', '2024-05-20 13:55:18', '2024-05-20 13:55:18'),
(71, 67, '[\"srk047p1_166627312673.jpg\"]', '2024-05-20 13:59:02', '2024-05-20 13:59:02'),
(72, 68, '[\"sur344p1_159737649362.jpg\"]', '2024-05-20 14:00:37', '2024-05-20 14:00:37'),
(73, 69, '[\"sur339p1_159720573892.jpg\"]', '2024-05-20 14:02:37', '2024-05-20 14:02:37'),
(74, 70, '[\"dw00100559_171325945764.jpg\"]', '2024-05-20 14:10:41', '2024-05-20 14:10:41'),
(75, 71, '[\"dw00100648_169151348296.jpg\"]', '2024-05-20 14:12:03', '2024-05-20 14:12:03'),
(76, 72, '[\"quadro-coral_164672443414.jpg\"]', '2024-05-20 14:13:58', '2024-05-20 14:13:58'),
(77, 73, '[\"dw00100454_165346259697.jpg\"]', '2024-05-20 14:16:42', '2024-05-20 14:16:42'),
(78, 74, '[\"dw00100439_163420422392.jpg\"]', '2024-05-20 14:18:17', '2024-05-20 14:18:17'),
(79, 75, '[\"la680wa-2cdf_163593149444.jpg\"]', '2024-05-20 18:01:41', '2024-05-20 18:01:41'),
(80, 76, '[\"dong_ho_casio_la680wa-7df34.jpg\"]', '2024-05-20 18:07:22', '2024-05-20 18:07:22'),
(81, 77, '[\"dong_ho_casio_la680wga-1df68.jpg\"]', '2024-05-20 18:08:59', '2024-05-20 18:08:59'),
(82, 78, '[\"op990-45ddls-gl-t_169535880066.jpg\"]', '2024-05-20 18:14:37', '2024-05-20 18:14:37'),
(83, 79, '[\"op990-45ddls-gl-x_169146673758.jpg\"]', '2024-05-20 18:16:13', '2024-05-20 18:16:13'),
(84, 80, '[\"op24591dlk-t_160000441442.jpg\"]', '2024-05-20 18:17:47', '2024-05-20 18:17:47'),
(85, 81, '[\"op2474dlsk-t_160000401712.jpg\"]', '2024-05-20 18:19:13', '2024-05-20 18:19:13'),
(86, 82, '[\"khung-anh-chinh_164923043998.jpg\"]', '2024-05-20 18:23:12', '2024-05-20 18:23:12'),
(87, 83, '[\"dong_ho_doi_tissot_t0854072601300_va_t08520726013009.jpg\"]', '2024-05-20 18:25:16', '2024-05-20 18:25:16'),
(88, 84, '[\"dong_ho_doi_tissot_t0854071105100_va_t085207110510035.jpg\"]', '2024-05-20 18:26:49', '2024-05-20 18:26:49'),
(89, 85, '[\"12_164922844887.jpg\"]', '2024-05-20 18:28:45', '2024-05-20 18:28:45'),
(90, 86, '[\"t1398071104800-va-t1392071104800_16810643489.jpg\"]', '2024-05-20 18:30:11', '2024-05-20 18:30:11'),
(91, 87, '[\"m0374071103101m0372071103101_165406926451.jpg\"]', '2024-05-20 18:32:49', '2024-05-20 18:32:49'),
(92, 88, '[\"m0374071104100m0372071104100_165407191490.jpg\"]', '2024-05-20 18:34:17', '2024-05-20 18:34:17'),
(93, 89, '[\"dong_ho_doi_tissot_t0854072601300_va_t085207260130048.jpg\"]', '2024-05-20 18:36:08', '2024-05-20 18:36:08'),
(94, 90, '[\"bj6543-10a-va-em0932-10a_169678187235.jpg\"]', '2024-05-20 18:38:26', '2024-05-20 18:38:26'),
(95, 91, '[\"m8550-81a-va-ew3260-84a_169678051236.jpg\"]', '2024-05-20 18:39:44', '2024-05-20 18:39:44'),
(96, 92, '[\"bm8550-14a-va-ew3260-17a_169678019054.jpg\"]', '2024-05-20 18:40:58', '2024-05-20 18:40:58'),
(97, 93, '[\"dong_ho_doi_citizen_bm9012-02a_va_ew3252-07a13.jpg\"]', '2024-05-20 18:42:59', '2024-05-20 18:42:59'),
(98, 94, '[\"dong_ho_doi_citizen_bj6481-58a_va_em0401-59a68.jpg\"]', '2024-05-20 18:44:20', '2024-05-20 18:44:20'),
(99, 95, '[\"dw00100450-va-dw00100434_166662971615.jpg\"]', '2024-05-20 18:45:55', '2024-05-20 18:45:55'),
(100, 96, '[\"dw00100163-va-dw00100305_166774427427.jpg\"]', '2024-05-20 18:47:32', '2024-05-20 18:47:32'),
(101, 97, '[\"dw00100306-va-dw00100164_166774397678.jpg\"]', '2024-05-20 18:48:53', '2024-05-20 18:48:53'),
(102, 98, '[\"dw00100303-va-dw00100161_166774461710.jpg\"]', '2024-05-20 18:50:09', '2024-05-20 18:50:09'),
(103, 99, '[\"mw-240-7evdf (1)15.png\"]', '2024-05-20 18:55:09', '2024-05-20 18:55:09'),
(104, 100, '[\"LW-200-2BVDF10.png\"]', '2024-05-20 18:57:20', '2024-05-20 18:57:20'),
(105, 101, '[\"AE-1000W-4AVDF86.png\"]', '2024-05-20 18:59:12', '2024-05-20 18:59:12'),
(106, 102, '[\"BA-110NC-6ADR36.png\"]', '2024-05-20 19:01:19', '2024-05-20 19:01:19'),
(107, 103, '[\"BGA-190-3BDR-147.png\"]', '2024-05-20 19:02:51', '2024-05-20 19:02:51'),
(108, 104, '[\"BA-110BC-2ADR-18.png\"]', '2024-05-20 19:04:10', '2024-05-20 19:04:10'),
(109, 105, '[\"BGA-130-4BDR33.png\"]', '2024-05-20 19:05:23', '2024-05-20 19:05:23'),
(110, 106, '[\"BA-110-7A3DR69.png\"]', '2024-05-20 19:06:44', '2024-05-20 19:06:44'),
(111, 107, '[\"cra841nr70_170926616954.jpg\"]', '2024-05-20 19:11:01', '2024-05-20 19:11:01'),
(112, 108, '[\"khung-anh-chinh-recovered_1648442083-copy9.jpg\"]', '2024-05-20 19:12:39', '2024-05-20 19:12:39'),
(113, 109, '[\"qxa756kl_171377618471.jpg\"]', '2024-05-20 19:14:08', '2024-05-20 19:14:08'),
(114, 110, '[\"qxa756rl_171377641412.jpg\"]', '2024-05-20 19:15:43', '2024-05-20 19:15:43'),
(115, 111, '[\"qxa342dr_171116154554.jpg\"]', '2024-05-20 19:17:08', '2024-05-20 19:17:08'),
(116, 112, '[\"is7c90vybtqwq90ciznj_16915147237.png\"]', '2024-05-20 19:18:59', '2024-05-20 19:18:59'),
(117, 113, '[\"dw00400387_169151544242.jpg\"]', '2024-05-20 19:20:14', '2024-05-20 19:20:14'),
(118, 114, '[\"vong_tay_daniel_wellington_cruff_large_dw00400002-1_159549265344.jpg\"]', '2024-05-20 19:21:27', '2024-05-20 19:21:27'),
(119, 115, '[\"vong_tay_daniel_wellington_cruff_large_dw00400003_159549291210.jpg\"]', '2024-05-20 19:22:42', '2024-05-20 19:22:42'),
(120, 116, '[\"dw00400074_161656057844.jpg\"]', '2024-05-20 19:24:02', '2024-05-20 19:24:02'),
(121, 117, '[\"qhj201g_1702538624-copy52.jpg\"]', '2024-05-20 19:25:27', '2024-05-20 19:25:27'),
(122, 118, '[\"qxw250kl_171116609969.jpg\"]', '2024-05-20 19:26:42', '2024-05-20 19:26:42'),
(123, 119, '[\"qxw249kl_171116589265.jpg\"]', '2024-05-20 19:27:49', '2024-05-20 19:27:49'),
(124, 120, '[\"qhe173gn_163729239561.jpg\"]', '2024-05-20 19:28:54', '2024-05-20 19:28:54'),
(125, 121, '[\"qhn006gn_159038088119.jpg\"]', '2024-05-20 19:30:09', '2024-05-20 19:30:09'),
(126, 122, '[\"dw00200140_16365572709.jpg\"]', '2024-05-20 19:32:07', '2024-05-20 19:32:07'),
(127, 123, '[\"dw00200280_169865653542.jpg\"]', '2024-05-20 19:33:26', '2024-05-20 19:33:26'),
(128, 124, '[\"dw00200041_163655654447.jpg\"]', '2024-05-20 19:34:55', '2024-05-20 19:34:55'),
(129, 125, '[\"dw00200141_163655738143.jpg\"]', '2024-05-20 19:36:20', '2024-05-20 19:36:20'),
(130, 126, '[\"dw00200135_163655710481.jpg\"]', '2024-05-20 19:37:59', '2024-05-20 19:37:59'),
(131, 127, '[\"dw00200046_163655690569.jpg\"]', '2024-05-20 19:39:15', '2024-05-20 19:39:15'),
(132, 128, '[\"4k10jz_165207170794.jpg\"]', '2024-05-20 19:40:45', '2024-05-20 19:40:45'),
(133, 129, '[\"4k11jz_165207145692.jpg\"]', '2024-05-20 19:41:59', '2024-05-20 19:41:59'),
(134, 130, '[\"4k12jz_16520719272.jpg\"]', '2024-05-20 19:43:09', '2024-05-20 19:43:09'),
(135, 131, '[\"4k13jz_165207162220.jpg\"]', '2024-05-20 19:44:45', '2024-05-20 19:44:45'),
(136, 132, '[\"t852035976_16967904997.jpg\"]', '2024-05-20 19:46:56', '2024-05-20 19:46:56'),
(137, 133, '[\"t600035079_163755064826.jpg\"]', '2024-05-20 19:48:07', '2024-05-20 19:48:07'),
(138, 134, '[\"t610031949_163754878938.jpg\"]', '2024-05-20 19:49:41', '2024-05-20 19:49:41'),
(139, 135, '[\"t600038635_163754919247.jpg\"]', '2024-05-20 19:50:55', '2024-05-20 19:50:55'),
(140, 136, '[\"t610036541_16375495967.jpg\"]', '2024-05-20 19:52:26', '2024-05-20 19:52:26'),
(141, 137, '[\"t852047114_169871707375.jpg\"]', '2024-05-20 19:53:57', '2024-05-20 19:53:57'),
(142, 138, '[\"bbk012.jpg\"]', '2024-05-20 19:56:20', '2024-05-20 19:56:20'),
(143, 139, '[\"dong-ho-babykid-gw800x16.jpg\"]', '2024-05-20 19:57:54', '2024-05-20 19:57:54'),
(144, 140, '[\"mi-band-8-pro-den-1-1 (1)59.jpg\"]', '2024-05-21 02:21:22', '2024-05-21 02:21:22'),
(145, 141, '[\"xiaomi-redmi-watch-4-den-1-166.jpg\"]', '2024-05-21 02:23:25', '2024-05-21 02:23:25'),
(146, 142, '[\"redmi-watch-3-active-xam-1-136.jpg\"]', '2024-05-21 02:25:15', '2024-05-21 02:25:15'),
(147, 143, '[\"vong-tay-thong-minh-mi-band-7-pro-trang-146.jpeg\"]', '2024-05-21 02:26:54', '2024-05-21 02:26:54'),
(148, 144, '[\"mi-band-8-active-hong-1-186.jpg\"]', '2024-05-21 02:28:54', '2024-05-21 02:28:54'),
(149, 145, '[\"apple-watch-se-2023-40mm-vien-nhom-day-silicone-xanh-duong-nhat-1-130.jpg\"]', '2024-05-21 02:32:59', '2024-05-21 02:32:59'),
(150, 146, '[\"apple-watch-s9-41mm-vien-nhom-day-silicone-143.jpg\"]', '2024-05-21 02:34:52', '2024-05-21 02:34:52'),
(151, 147, '[\"apple-watch-se-2023-40mm-vien-nhom-day-vai-xanh-duong-nhat-185.jpg\"]', '2024-05-21 02:36:30', '2024-05-21 02:36:30'),
(152, 148, '[\"apple-watch-se-lte-2023-40mm-vien-nhom-day-silicone-trang-starlight-150.jpg\"]', '2024-05-21 02:38:02', '2024-05-21 02:38:02'),
(153, 149, '[\"apple-watch-ultra-lte-49mm-vien-titanium-day-trail-size-m-l-den-10119.jpg\"]', '2024-05-21 02:40:03', '2024-05-21 02:40:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_attribute`
--

CREATE TABLE `product_attribute` (
  `idProAttr` int(10) UNSIGNED NOT NULL,
  `idProduct` int(11) UNSIGNED NOT NULL,
  `idAttrValue` int(11) UNSIGNED NOT NULL DEFAULT 11,
  `Quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_attribute`
--

INSERT INTO `product_attribute` (`idProAttr`, `idProduct`, `idAttrValue`, `Quantity`, `created_at`, `updated_at`) VALUES
(203, 1, 4, 3, '2024-05-19 07:32:23', '2024-05-19 07:32:23'),
(204, 1, 5, 1, '2024-05-19 07:32:23', '2024-05-19 07:32:23'),
(205, 1, 6, 1, '2024-05-19 07:32:23', '2024-05-19 07:32:23'),
(214, 2, 7, 1, '2024-05-19 08:20:09', '2024-05-19 08:20:09'),
(215, 2, 8, 0, '2024-05-19 08:20:09', '2024-05-19 08:20:09'),
(216, 2, 9, 0, '2024-05-19 08:20:09', '2024-05-19 08:20:09'),
(217, 2, 10, 0, '2024-05-19 08:20:09', '2024-05-19 08:20:09'),
(221, 3, 4, 1, '2024-05-19 08:56:24', '2024-05-19 08:56:24'),
(222, 3, 5, 2, '2024-05-19 08:56:24', '2024-05-19 08:56:24'),
(223, 3, 6, 0, '2024-05-19 08:56:24', '2024-05-19 08:56:24'),
(224, 59, 11, 4, '2024-05-20 13:35:35', '2024-05-20 13:35:35'),
(225, 60, 11, 7, '2024-05-20 13:40:18', '2024-05-20 13:40:18'),
(226, 61, 11, 8, '2024-05-20 13:43:00', '2024-05-20 13:43:00'),
(227, 62, 11, 15, '2024-05-20 13:45:06', '2024-05-20 13:45:06'),
(228, 63, 11, 15, '2024-05-20 13:47:28', '2024-05-20 13:47:28'),
(229, 64, 11, 15, '2024-05-20 13:51:20', '2024-05-20 13:51:20'),
(230, 65, 11, 7, '2024-05-20 13:53:27', '2024-05-20 13:53:27'),
(231, 66, 11, 5, '2024-05-20 13:55:18', '2024-05-20 13:55:18'),
(232, 67, 11, 5, '2024-05-20 13:59:02', '2024-05-20 13:59:02'),
(233, 68, 11, 7, '2024-05-20 14:00:37', '2024-05-20 14:00:37'),
(234, 69, 11, 10, '2024-05-20 14:02:37', '2024-05-20 14:02:37'),
(235, 70, 11, 15, '2024-05-20 14:10:41', '2024-05-20 14:10:41'),
(236, 71, 11, 10, '2024-05-20 14:12:03', '2024-05-20 14:12:03'),
(237, 72, 11, 10, '2024-05-20 14:13:58', '2024-05-20 14:13:58'),
(238, 73, 11, 15, '2024-05-20 14:16:42', '2024-05-20 14:16:42'),
(239, 74, 11, 12, '2024-05-20 14:18:17', '2024-05-20 14:18:17'),
(240, 75, 11, 20, '2024-05-20 18:01:41', '2024-05-20 18:01:41'),
(241, 76, 11, 30, '2024-05-20 18:07:22', '2024-05-20 18:07:22'),
(242, 77, 11, 20, '2024-05-20 18:08:59', '2024-05-20 18:08:59'),
(243, 78, 11, 10, '2024-05-20 18:14:37', '2024-05-20 18:14:37'),
(244, 79, 11, 8, '2024-05-20 18:16:13', '2024-05-20 18:16:13'),
(245, 80, 11, 14, '2024-05-20 18:17:47', '2024-05-20 18:17:47'),
(246, 81, 11, 17, '2024-05-20 18:19:13', '2024-05-20 18:19:13'),
(247, 82, 11, 3, '2024-05-20 18:23:12', '2024-05-20 18:23:12'),
(248, 83, 11, 4, '2024-05-20 18:25:16', '2024-05-20 18:25:16'),
(249, 84, 11, 5, '2024-05-20 18:26:49', '2024-05-20 18:26:49'),
(250, 85, 11, 3, '2024-05-20 18:28:45', '2024-05-20 18:28:45'),
(251, 86, 11, 2, '2024-05-20 18:30:11', '2024-05-20 18:30:11'),
(252, 87, 11, 4, '2024-05-20 18:32:49', '2024-05-20 18:32:49'),
(253, 88, 11, 3, '2024-05-20 18:34:17', '2024-05-20 18:34:17'),
(254, 89, 11, 4, '2024-05-20 18:36:08', '2024-05-20 18:36:08'),
(255, 90, 11, 5, '2024-05-20 18:38:26', '2024-05-20 18:38:26'),
(256, 91, 11, 5, '2024-05-20 18:39:44', '2024-05-20 18:39:44'),
(257, 92, 11, 6, '2024-05-20 18:40:58', '2024-05-20 18:40:58'),
(258, 93, 11, 4, '2024-05-20 18:42:59', '2024-05-20 18:42:59'),
(259, 94, 11, 3, '2024-05-20 18:44:20', '2024-05-20 18:44:20'),
(260, 95, 11, 4, '2024-05-20 18:45:55', '2024-05-20 18:45:55'),
(261, 96, 11, 4, '2024-05-20 18:47:32', '2024-05-20 18:47:32'),
(262, 97, 11, 4, '2024-05-20 18:48:53', '2024-05-20 18:48:53'),
(263, 98, 11, 5, '2024-05-20 18:50:09', '2024-05-20 18:50:09'),
(264, 99, 11, 40, '2024-05-20 18:55:09', '2024-05-20 18:55:09'),
(265, 100, 11, 40, '2024-05-20 18:57:20', '2024-05-20 18:57:20'),
(266, 101, 11, 25, '2024-05-20 18:59:12', '2024-05-20 18:59:12'),
(267, 102, 11, 17, '2024-05-20 19:01:19', '2024-05-20 19:01:19'),
(268, 103, 11, 16, '2024-05-20 19:02:51', '2024-05-20 19:02:51'),
(269, 104, 11, 15, '2024-05-20 19:04:10', '2024-05-20 19:04:10'),
(270, 105, 11, 15, '2024-05-20 19:05:23', '2024-05-20 19:05:23'),
(271, 106, 11, 12, '2024-05-20 19:06:44', '2024-05-20 19:06:44'),
(272, 107, 11, 50, '2024-05-20 19:11:01', '2024-05-20 19:11:01'),
(273, 108, 11, 50, '2024-05-20 19:12:39', '2024-05-20 19:12:39'),
(274, 109, 11, 50, '2024-05-20 19:14:08', '2024-05-20 19:14:08'),
(275, 110, 11, 50, '2024-05-20 19:15:43', '2024-05-20 19:15:43'),
(276, 111, 11, 30, '2024-05-20 19:17:08', '2024-05-20 19:17:08'),
(277, 112, 11, 50, '2024-05-20 19:18:59', '2024-05-20 19:18:59'),
(278, 113, 11, 30, '2024-05-20 19:20:14', '2024-05-20 19:20:14'),
(279, 114, 11, 19, '2024-05-20 19:21:27', '2024-05-20 19:21:27'),
(280, 115, 11, 25, '2024-05-20 19:22:42', '2024-05-20 19:22:42'),
(281, 116, 11, 32, '2024-05-20 19:24:02', '2024-05-20 19:24:02'),
(282, 117, 11, 10, '2024-05-20 19:25:27', '2024-05-20 19:25:27'),
(283, 118, 11, 6, '2024-05-20 19:26:42', '2024-05-20 19:26:42'),
(284, 119, 11, 6, '2024-05-20 19:27:49', '2024-05-20 19:27:49'),
(285, 120, 11, 7, '2024-05-20 19:28:54', '2024-05-20 19:28:54'),
(286, 121, 11, 14, '2024-05-20 19:30:09', '2024-05-20 19:30:09'),
(287, 122, 11, 11, '2024-05-20 19:32:07', '2024-05-20 19:32:07'),
(288, 123, 11, 6, '2024-05-20 19:33:26', '2024-05-20 19:33:26'),
(289, 124, 11, 5, '2024-05-20 19:34:55', '2024-05-20 19:34:55'),
(290, 125, 11, 4, '2024-05-20 19:36:20', '2024-05-20 19:36:20'),
(291, 126, 11, 9, '2024-05-20 19:37:59', '2024-05-20 19:37:59'),
(292, 127, 11, 8, '2024-05-20 19:39:15', '2024-05-20 19:39:15'),
(293, 128, 11, 15, '2024-05-20 19:40:45', '2024-05-20 19:40:45'),
(294, 129, 11, 15, '2024-05-20 19:41:59', '2024-05-20 19:41:59'),
(295, 130, 11, 15, '2024-05-20 19:43:09', '2024-05-20 19:43:09'),
(296, 131, 11, 15, '2024-05-20 19:44:45', '2024-05-20 19:44:45'),
(297, 132, 11, 3, '2024-05-20 19:46:56', '2024-05-20 19:46:56'),
(298, 133, 11, 4, '2024-05-20 19:48:07', '2024-05-20 19:48:07'),
(299, 134, 11, 5, '2024-05-20 19:49:41', '2024-05-20 19:49:41'),
(300, 135, 11, 7, '2024-05-20 19:50:55', '2024-05-20 19:50:55'),
(301, 136, 11, 5, '2024-05-20 19:52:26', '2024-05-20 19:52:26'),
(302, 137, 11, 6, '2024-05-20 19:53:57', '2024-05-20 19:53:57'),
(303, 138, 11, 24, '2024-05-20 19:56:20', '2024-05-20 19:56:20'),
(304, 139, 11, 26, '2024-05-20 19:57:54', '2024-05-20 19:57:54'),
(305, 140, 11, 15, '2024-05-21 02:21:22', '2024-05-21 02:21:22'),
(306, 141, 11, 15, '2024-05-21 02:23:25', '2024-05-21 02:23:25'),
(307, 142, 11, 17, '2024-05-21 02:25:15', '2024-05-21 02:25:15'),
(308, 143, 11, 25, '2024-05-21 02:26:54', '2024-05-21 02:26:54'),
(309, 144, 11, 35, '2024-05-21 02:28:54', '2024-05-21 02:28:54'),
(310, 145, 11, 25, '2024-05-21 02:32:59', '2024-05-21 02:32:59'),
(311, 146, 11, 10, '2024-05-21 02:34:52', '2024-05-21 02:34:52'),
(312, 147, 11, 17, '2024-05-21 02:36:30', '2024-05-21 02:36:30'),
(313, 148, 11, 19, '2024-05-21 02:38:02', '2024-05-21 02:38:02'),
(314, 149, 11, 7, '2024-05-21 02:40:03', '2024-05-21 02:40:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `saleproduct`
--

CREATE TABLE `saleproduct` (
  `idSale` int(10) UNSIGNED NOT NULL,
  `idProduct` int(11) UNSIGNED NOT NULL,
  `SaleName` varchar(255) NOT NULL,
  `SaleStart` datetime NOT NULL,
  `SaleEnd` datetime NOT NULL,
  `Percent` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `saleproduct`
--

INSERT INTO `saleproduct` (`idSale`, `idProduct`, `SaleName`, `SaleStart`, `SaleEnd`, `Percent`, `created_at`, `updated_at`) VALUES
(1, 1, 'sale', '2022-07-29 18:58:00', '2022-08-31 18:58:00', 15, '2022-07-30 11:58:49', '2022-07-30 11:58:49'),
(2, 3, 'sale', '2022-07-29 18:58:00', '2022-08-31 18:58:00', 15, '2022-07-30 11:58:49', '2022-07-30 11:58:49'),
(4, 3, 'Sale hè', '2022-10-23 18:19:00', '2022-11-30 18:19:00', 20, '2022-10-23 11:20:21', '2022-10-23 11:20:21'),
(12, 1, 'SALE lớn', '2022-12-07 18:17:00', '2022-12-31 18:17:00', 20, '2022-12-08 11:17:44', '2022-12-08 11:17:44'),
(13, 2, 'SALE lớn', '2022-12-07 18:17:00', '2022-12-31 18:17:00', 20, '2022-12-08 11:17:44', '2022-12-08 11:17:44'),
(30, 2, 'Sale', '2023-08-06 17:28:00', '2023-10-30 17:28:00', 20, '2023-08-07 10:28:21', '2023-08-07 10:28:21'),
(31, 3, 'Sale', '2023-08-06 17:28:00', '2023-10-30 17:28:00', 20, '2023-08-07 10:28:21', '2023-08-07 10:28:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `viewer`
--

CREATE TABLE `viewer` (
  `idView` int(11) NOT NULL,
  `idCustomer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `idProduct` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `viewer`
--

INSERT INTO `viewer` (`idView`, `idCustomer`, `idProduct`, `created_at`, `updated_at`) VALUES
(17, '9GqlHvarCN1hBd5G6rbVUzskS9d27ednn5HqRnvz', 3, '2022-10-26 11:18:42', '2022-10-26 11:18:42'),
(40, 'FGCHvA4K3TL1P98GGlbvvtEFiWI6Nv6CcEZKacDk', 2, '2022-11-20 04:40:12', '2022-11-20 04:40:12'),
(45, '7avCNgXd4iNiM3SrkBu4f5PlK9CWwZxWm5BQpBlN', 1, '2022-11-20 04:40:17', '2022-11-20 04:40:17'),
(50, 'Gy8VaRCi9TzOdkbUOBIouc0ZjyiIwtik4UsX34oj', 3, '2022-11-20 12:19:34', '2022-11-20 12:19:34'),
(55, 'xAykgIy5rKipUT7XJfP7feFoUUE4abcqKjbKxaQr', 3, '2022-12-11 11:20:15', '2022-12-11 11:20:15'),
(68, 'E1YdiQuCGhv6M6bUBe2QhvLFMXMJivKdfG95Bfaz', 1, '2024-05-18 03:04:33', '2024-05-18 03:04:33'),
(69, '5', 1, '2024-05-19 05:53:23', '2024-05-19 05:53:23'),
(70, 'H31C80fVmXl0qlsmfeOiQuFkzDYCatciGmMFFeNM', 1, '2024-05-19 07:29:20', '2024-05-19 07:29:20'),
(71, 'H31C80fVmXl0qlsmfeOiQuFkzDYCatciGmMFFeNM', 2, '2024-05-19 08:09:39', '2024-05-19 08:09:39'),
(72, '5', 2, '2024-05-19 08:21:26', '2024-05-19 08:21:26'),
(73, '5', 3, '2024-05-19 08:56:49', '2024-05-19 08:56:49'),
(74, 'twZ0sSmFAJI3WPsZ9nJx0JGIZSriULl8jZbbe3tF', 3, '2024-05-20 12:55:49', '2024-05-20 12:55:49'),
(75, 'KOVhkYLHIlGQNqksrM9iesB12MfGVHBVTYfnsAdY', 59, '2024-05-20 13:36:45', '2024-05-20 13:36:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `voucher`
--

CREATE TABLE `voucher` (
  `idVoucher` int(10) UNSIGNED NOT NULL,
  `VoucherName` varchar(255) NOT NULL,
  `VoucherQuantity` int(11) NOT NULL,
  `VoucherCondition` tinyint(4) NOT NULL,
  `VoucherNumber` int(11) NOT NULL,
  `VoucherCode` varchar(50) NOT NULL,
  `VoucherStart` datetime NOT NULL,
  `VoucherEnd` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `voucher`
--

INSERT INTO `voucher` (`idVoucher`, `VoucherName`, `VoucherQuantity`, `VoucherCondition`, `VoucherNumber`, `VoucherCode`, `VoucherStart`, `VoucherEnd`, `created_at`, `updated_at`) VALUES
(1, 'Mã giảm 300K', 22, 2, 300000, 'SALE300K', '2022-07-29 18:59:00', '2022-08-31 18:59:00', '2022-07-30 11:59:35', '2022-07-30 11:59:35'),
(2, 'Mã giảm 50%', 8, 1, 50, 'SALE50', '2022-07-29 19:00:00', '2022-08-31 19:00:00', '2022-07-30 12:00:13', '2022-07-30 12:00:13'),
(3, 'Giảm 10%', 28, 1, 10, 'SALE10', '2022-08-05 18:26:00', '2023-05-31 18:26:00', '2022-08-05 11:26:51', '2022-08-05 11:26:51'),
(4, 'Giảm 100K', 101, 2, 100000, 'SALE100K', '2022-08-05 18:27:00', '2023-05-31 18:27:00', '2022-08-05 11:27:17', '2022-08-05 11:27:17'),
(5, 'test', 1, 1, 15, 'test', '2024-05-20 01:12:00', '2024-05-23 01:12:00', '2024-05-20 18:12:11', '2024-05-20 18:12:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlist`
--

CREATE TABLE `wishlist` (
  `idWish` int(10) UNSIGNED NOT NULL,
  `idCustomer` int(11) UNSIGNED NOT NULL,
  `idProduct` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wishlist`
--

INSERT INTO `wishlist` (`idWish`, `idCustomer`, `idProduct`, `created_at`, `updated_at`) VALUES
(3, 5, 1, '2024-05-19 08:48:31', '2024-05-19 08:48:31');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `addresscustomer`
--
ALTER TABLE `addresscustomer`
  ADD PRIMARY KEY (`idAddress`),
  ADD KEY `idCustomer` (`idCustomer`);

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idAdmin`);

--
-- Chỉ mục cho bảng `attribute`
--
ALTER TABLE `attribute`
  ADD PRIMARY KEY (`idAttribute`);

--
-- Chỉ mục cho bảng `attribute_value`
--
ALTER TABLE `attribute_value`
  ADD PRIMARY KEY (`idAttrValue`),
  ADD KEY `idAttribute` (`idAttribute`);

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`idBill`),
  ADD KEY `idCustomer` (`idCustomer`);

--
-- Chỉ mục cho bảng `billhistory`
--
ALTER TABLE `billhistory`
  ADD KEY `idBill` (`idBill`);

--
-- Chỉ mục cho bảng `billinfo`
--
ALTER TABLE `billinfo`
  ADD KEY `idBill` (`idBill`),
  ADD KEY `idProduct` (`idProduct`);

--
-- Chỉ mục cho bảng `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`idBlog`);

--
-- Chỉ mục cho bảng `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`idBrand`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`idCart`),
  ADD KEY `idCustomer` (`idCustomer`),
  ADD KEY `idProduct` (`idProduct`),
  ADD KEY `idProAttr` (`idProAttr`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`idCategory`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`idCustomer`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`idProduct`),
  ADD KEY `idCategory` (`idCategory`,`idBrand`),
  ADD KEY `idBrand` (`idBrand`);
ALTER TABLE `product` ADD FULLTEXT KEY `ProductName` (`ProductName`);

--
-- Chỉ mục cho bảng `productimage`
--
ALTER TABLE `productimage`
  ADD PRIMARY KEY (`idImage`),
  ADD KEY `idProduct` (`idProduct`);

--
-- Chỉ mục cho bảng `product_attribute`
--
ALTER TABLE `product_attribute`
  ADD PRIMARY KEY (`idProAttr`),
  ADD KEY `idProduct` (`idProduct`,`idAttrValue`),
  ADD KEY `idAttrValue` (`idAttrValue`);

--
-- Chỉ mục cho bảng `saleproduct`
--
ALTER TABLE `saleproduct`
  ADD PRIMARY KEY (`idSale`),
  ADD KEY `idProduct` (`idProduct`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `viewer`
--
ALTER TABLE `viewer`
  ADD PRIMARY KEY (`idView`),
  ADD KEY `idProduct` (`idProduct`);

--
-- Chỉ mục cho bảng `voucher`
--
ALTER TABLE `voucher`
  ADD PRIMARY KEY (`idVoucher`);

--
-- Chỉ mục cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`idWish`),
  ADD KEY `idCustomer` (`idCustomer`,`idProduct`),
  ADD KEY `idProduct` (`idProduct`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `addresscustomer`
--
ALTER TABLE `addresscustomer`
  MODIFY `idAddress` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `idAdmin` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `attribute`
--
ALTER TABLE `attribute`
  MODIFY `idAttribute` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `attribute_value`
--
ALTER TABLE `attribute_value`
  MODIFY `idAttrValue` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `bill`
--
ALTER TABLE `bill`
  MODIFY `idBill` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `blog`
--
ALTER TABLE `blog`
  MODIFY `idBlog` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `brand`
--
ALTER TABLE `brand`
  MODIFY `idBrand` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `idCart` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `idCategory` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `idCustomer` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `idProduct` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT cho bảng `productimage`
--
ALTER TABLE `productimage`
  MODIFY `idImage` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT cho bảng `product_attribute`
--
ALTER TABLE `product_attribute`
  MODIFY `idProAttr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=315;

--
-- AUTO_INCREMENT cho bảng `saleproduct`
--
ALTER TABLE `saleproduct`
  MODIFY `idSale` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `viewer`
--
ALTER TABLE `viewer`
  MODIFY `idView` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT cho bảng `voucher`
--
ALTER TABLE `voucher`
  MODIFY `idVoucher` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `idWish` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `addresscustomer`
--
ALTER TABLE `addresscustomer`
  ADD CONSTRAINT `addresscustomer_ibfk_1` FOREIGN KEY (`idCustomer`) REFERENCES `customer` (`idCustomer`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `attribute_value`
--
ALTER TABLE `attribute_value`
  ADD CONSTRAINT `attribute_value_ibfk_1` FOREIGN KEY (`idAttribute`) REFERENCES `attribute` (`idAttribute`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`idCustomer`) REFERENCES `customer` (`idCustomer`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `billhistory`
--
ALTER TABLE `billhistory`
  ADD CONSTRAINT `billhistory_ibfk_1` FOREIGN KEY (`idBill`) REFERENCES `bill` (`idBill`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `billinfo`
--
ALTER TABLE `billinfo`
  ADD CONSTRAINT `billinfo_ibfk_1` FOREIGN KEY (`idBill`) REFERENCES `bill` (`idBill`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `billinfo_ibfk_2` FOREIGN KEY (`idProduct`) REFERENCES `product` (`idProduct`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`idCustomer`) REFERENCES `customer` (`idCustomer`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`idProduct`) REFERENCES `product` (`idProduct`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `cart_ibfk_3` FOREIGN KEY (`idProAttr`) REFERENCES `product_attribute` (`idProAttr`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`idBrand`) REFERENCES `brand` (`idBrand`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`idCategory`) REFERENCES `category` (`idCategory`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `productimage`
--
ALTER TABLE `productimage`
  ADD CONSTRAINT `productimage_ibfk_1` FOREIGN KEY (`idProduct`) REFERENCES `product` (`idProduct`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `product_attribute`
--
ALTER TABLE `product_attribute`
  ADD CONSTRAINT `product_attribute_ibfk_1` FOREIGN KEY (`idAttrValue`) REFERENCES `attribute_value` (`idAttrValue`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `product_attribute_ibfk_2` FOREIGN KEY (`idProduct`) REFERENCES `product` (`idProduct`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `saleproduct`
--
ALTER TABLE `saleproduct`
  ADD CONSTRAINT `saleproduct_ibfk_1` FOREIGN KEY (`idProduct`) REFERENCES `product` (`idProduct`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `viewer`
--
ALTER TABLE `viewer`
  ADD CONSTRAINT `viewer_ibfk_1` FOREIGN KEY (`idProduct`) REFERENCES `product` (`idProduct`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`idCustomer`) REFERENCES `customer` (`idCustomer`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `wishlist_ibfk_2` FOREIGN KEY (`idProduct`) REFERENCES `product` (`idProduct`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
