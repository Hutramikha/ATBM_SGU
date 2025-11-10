-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Nov 10, 2025 at 12:45 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thuvien`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitietphieumuon`
--

CREATE TABLE `chitietphieumuon` (
  `mapm` int(11) NOT NULL,
  `mavach` int(11) NOT NULL,
  `tinhtrangmuon` int(11) NOT NULL,
  `phimuon` int(11) NOT NULL,
  `mactpm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `chitietphieumuon`
--

INSERT INTO `chitietphieumuon` (`mapm`, `mavach`, `tinhtrangmuon`, `phimuon`, `mactpm`) VALUES
(3, 86174521, 0, 2000, 1),
(4, 24218613, 0, 1500, 2),
(13, 53811823, 0, 2000, 3),
(13, 86174521, 0, 4000, 4),
(13, 53811823, 0, 2000, 5),
(13, 86174521, 0, 4000, 6);

-- --------------------------------------------------------

--
-- Table structure for table `chitietphieunhap`
--

CREATE TABLE `chitietphieunhap` (
  `mapn` int(11) NOT NULL,
  `masach` int(11) NOT NULL,
  `gianhap` varchar(255) NOT NULL,
  `soluong` int(11) NOT NULL,
  `thanhtien` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `chitietphieunhap`
--

INSERT INTO `chitietphieunhap` (`mapn`, `masach`, `gianhap`, `soluong`, `thanhtien`) VALUES
(23, 4, '20000', 1, '20000'),
(23, 28, '50000', 3, '150000');

-- --------------------------------------------------------

--
-- Table structure for table `chitietphieutra`
--

CREATE TABLE `chitietphieutra` (
  `mapt` int(11) NOT NULL,
  `mavach` int(11) NOT NULL,
  `maphat` int(11) NOT NULL,
  `phiphat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `chitietphieutra`
--

INSERT INTO `chitietphieutra` (`mapt`, `mavach`, `maphat`, `phiphat`) VALUES
(3, 24218613, 1, '4000');

-- --------------------------------------------------------

--
-- Table structure for table `chitietquyen`
--

CREATE TABLE `chitietquyen` (
  `maquyen` int(11) NOT NULL,
  `machucnang` int(11) NOT NULL,
  `hanhdong` varchar(20) NOT NULL,
  `hoatdong` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chitietsach`
--

CREATE TABLE `chitietsach` (
  `mavach` int(11) NOT NULL,
  `masach` int(11) NOT NULL,
  `matinhtrang` int(11) NOT NULL,
  `khu` int(11) DEFAULT NULL,
  `trangthai` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `chitietsach`
--

INSERT INTO `chitietsach` (`mavach`, `masach`, `matinhtrang`, `khu`, `trangthai`) VALUES
(24218613, 37, 0, NULL, 0),
(27683875, 36, 0, NULL, 0),
(31350940, 4, 0, NULL, 0),
(33940297, 28, 0, NULL, 0),
(38510716, 37, 0, NULL, 0),
(41623244, 28, 0, NULL, 0),
(53811823, 28, 0, NULL, 0),
(54636827, 28, 0, NULL, 0),
(64462947, 37, 0, NULL, 0),
(65146181, 28, 0, NULL, 0),
(68982434, 28, 0, NULL, 0),
(74622753, 28, 0, NULL, 0),
(74753761, 37, 0, NULL, 0),
(86174521, 28, 0, NULL, 0),
(88181912, 36, 0, NULL, 0),
(89253263, 36, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `chucnang`
--

CREATE TABLE `chucnang` (
  `machucnang` int(11) NOT NULL,
  `tenchucnang` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `chucnang`
--

INSERT INTO `chucnang` (`machucnang`, `tenchucnang`) VALUES
(1, 'quanlysach'),
(2, 'quanlydocgia');

-- --------------------------------------------------------

--
-- Table structure for table `docgia`
--

CREATE TABLE `docgia` (
  `madg` int(11) NOT NULL,
  `matk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ten` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gioitinh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ngaysinh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sdt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `diachi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `maloaidocgia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `docgia`
--

INSERT INTO `docgia` (`madg`, `matk`, `ten`, `gioitinh`, `ngaysinh`, `sdt`, `diachi`, `email`, `img`, `maloaidocgia`) VALUES
(9, 'minhhang', 'Minh Hằng', 'Nữ', '20/12/2000', '0983437886', '273 An Dương Vương', 'minhkhang2804345@gmail.com', NULL, 3),
(11, 'sdasd', 'ssssssssssssssss', NULL, NULL, NULL, NULL, 'minhkhang2804345@gmail.com', NULL, 3),
(14, 'khangdeptrai', NULL, NULL, NULL, NULL, NULL, 'minhkhan1234@gmail.com', NULL, 1),
(15, 'khangdeptrai', NULL, NULL, NULL, NULL, NULL, 'minhkhan1234@gmail.com', NULL, 1),
(16, 'khang123456', 'khang333sss', 'Nam', '2025-11-04', '0987654765', 'Phầm thế hiển', 'assssn@gmail.com', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `giomuontamthoi`
--

CREATE TABLE `giomuontamthoi` (
  `masach` int(11) NOT NULL,
  `trangthai` int(11) NOT NULL,
  `madocgia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `giomuontamthoi`
--

INSERT INTO `giomuontamthoi` (`masach`, `trangthai`, `madocgia`) VALUES
(4, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hinhthucphat`
--

CREATE TABLE `hinhthucphat` (
  `maphat` int(11) NOT NULL,
  `lydophat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `phiphat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `hinhthucphat`
--

INSERT INTO `hinhthucphat` (`maphat`, `lydophat`, `phiphat`) VALUES
(1, 'tre 3 ngay', '3000');

-- --------------------------------------------------------

--
-- Table structure for table `loaidocgia`
--

CREATE TABLE `loaidocgia` (
  `maloaidocgia` int(11) NOT NULL,
  `tenloaidocgia` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `soluongsachtoida` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `loaidocgia`
--

INSERT INTO `loaidocgia` (`maloaidocgia`, `tenloaidocgia`, `soluongsachtoida`) VALUES
(1, 'doc gia', 3),
(2, 'giang vien', 7),
(3, 'sinh vien', 5);

-- --------------------------------------------------------

--
-- Table structure for table `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `mancc` int(11) NOT NULL,
  `ten` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sdt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `diachi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `nhacungcap`
--

INSERT INTO `nhacungcap` (`mancc`, `ten`, `sdt`, `diachi`) VALUES
(1, 'Nhà sách Cá Chép', '243994715', 'Số 211-213 đường Võ Văn Tần, P5, Q3, TPHCM.'),
(2, 'Hiệu sách Nhã Nam', '0243514687', 'Đường sách Nguyễn Văn Bình, Q1, TPHCM.'),
(3, 'Nhà sách FAHASA', '0901636467', 'Số 387 – 389 đường Hai Bà Trưng, P8, Q3, TPHCM');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `manv` int(11) NOT NULL,
  `matk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ten` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `gioitinh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ngaysinh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sdt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `diachi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`manv`, `matk`, `ten`, `gioitinh`, `ngaysinh`, `email`, `sdt`, `diachi`, `img`) VALUES
(1, 'admin', 'admin khang', 'Nam', '2025-11-17', 'mkddd@gmail.com', '0987876765', 'không có', 'avatar1.webp'),
(4, 'ttda0864', 'Quang Quân', 'Nam', '2002-12-08', 'quan@gmail.com', '0987987876', 'tp cần thơ', 'download (6).jpg'),
(6, NULL, 'Ngô Hiếu', 'Nam', '2001-10-17', 'ngohieu@outlook.com', '0765678765', 'tphcm', 'download (1).jpg'),
(7, NULL, 'Bảo Huy', 'Nam', '2003-10-10', 'baohuy@gmail.com', '0987876789', 'tp đà nẵng', 'download (6).jpg'),
(8, NULL, 'Khang', 'Nam', '2004-07-28', 'minhkhang@gmail.com', '0345654567', 'tphcm', 'download.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `nhaxuatban`
--

CREATE TABLE `nhaxuatban` (
  `manxb` int(11) NOT NULL,
  `tennxb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `nhaxuatban`
--

INSERT INTO `nhaxuatban` (`manxb`, `tennxb`) VALUES
(1, 'Kim đồng');

-- --------------------------------------------------------

--
-- Table structure for table `phieumuon`
--

CREATE TABLE `phieumuon` (
  `mapm` int(11) NOT NULL,
  `ngaymuon` date NOT NULL,
  `hantra` int(11) NOT NULL,
  `madg` int(11) NOT NULL,
  `manv` int(11) DEFAULT NULL,
  `tongphimuon` int(11) NOT NULL,
  `trangthai` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `phieumuon`
--

INSERT INTO `phieumuon` (`mapm`, `ngaymuon`, `hantra`, `madg`, `manv`, `tongphimuon`, `trangthai`) VALUES
(3, '0000-00-00', 3, 9, 1, 20000, 1),
(4, '0000-00-00', 5, 9, 4, 15000, 0),
(8, '2024-12-15', 7, 9, NULL, 0, 0),
(9, '2024-12-15', 7, 9, NULL, 0, 0),
(10, '2024-12-15', 7, 9, 1, 0, 0),
(11, '2024-12-15', 7, 9, 1, 0, 0),
(12, '2024-12-15', 7, 9, NULL, 0, 0),
(13, '2024-12-15', 7, 9, NULL, 0, 0),
(14, '2024-12-15', 7, 9, NULL, 0, 0),
(15, '2024-12-15', 7, 9, NULL, 0, 0),
(16, '2024-12-15', 7, 9, NULL, 0, 0),
(17, '2024-12-15', 7, 9, NULL, 0, 0),
(18, '2024-12-15', 7, 9, NULL, 0, 0),
(19, '2024-12-15', 7, 9, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phieunhap`
--

CREATE TABLE `phieunhap` (
  `mapn` int(11) NOT NULL,
  `mancc` int(11) NOT NULL,
  `manv` int(11) NOT NULL,
  `ngaynhap` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tongtien` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `phieunhap`
--

INSERT INTO `phieunhap` (`mapn`, `mancc`, `manv`, `ngaynhap`, `tongtien`) VALUES
(23, 1, 1, '2024-12-14', '0');

-- --------------------------------------------------------

--
-- Table structure for table `phieutra`
--

CREATE TABLE `phieutra` (
  `mapt` int(11) NOT NULL,
  `ngaytra` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `mapm` int(11) NOT NULL,
  `madg` int(11) NOT NULL,
  `manv` int(11) NOT NULL,
  `tongphiphat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `phieutra`
--

INSERT INTO `phieutra` (`mapt`, `ngaytra`, `mapm`, `madg`, `manv`, `tongphiphat`) VALUES
(2, '', 3, 9, 4, '7000'),
(3, '', 3, 9, 4, '3000');

-- --------------------------------------------------------

--
-- Table structure for table `quyen`
--

CREATE TABLE `quyen` (
  `maquyen` int(11) NOT NULL,
  `tenquyen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `quyen`
--

INSERT INTO `quyen` (`maquyen`, `tenquyen`) VALUES
(0, 'admin'),
(1, 'thuthu'),
(2, 'docgia');

-- --------------------------------------------------------

--
-- Table structure for table `sach`
--

CREATE TABLE `sach` (
  `masach` int(11) NOT NULL,
  `tensach` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tomtat` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `matl` int(11) DEFAULT NULL,
  `manxb` int(11) DEFAULT NULL,
  `matg` int(11) DEFAULT NULL,
  `soluong` int(11) NOT NULL,
  `phimuon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `gianhap` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `img` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `sach`
--

INSERT INTO `sach` (`masach`, `tensach`, `tomtat`, `matl`, `manxb`, `matg`, `soluong`, `phimuon`, `gianhap`, `img`) VALUES
(4, 'Không gian các vì sao', 'nói về vũ trụ', 5, 1, 1, 0, '3000', '20000', 'horrible-science-khong-gian-cac-vi-sao-va-nguoi-ngoai-hanh-tinh.jpg'),
(28, 'Trắc nghiệm Nón - Trụ - Cầu', 'Các bài tập trắc nghiệm hình học', 5, 1, 1, 0, '2000', '50000', 'trac-nghiem-nang-cao-non-tru-cau.jpg'),
(36, 'Bài Tập Hình Học', 'Các bài tập về hình học', 5, 1, 1, 0, '2000', '8000', 'huong-dan-giai-bai-tap-hinh-hoc-10.jpg'),
(37, 'Vật Lí truyện bí hiểm', 'Những câu truyện huyền bí liên quan tới vật lý', 5, 1, 1, 0, '2000', '20000', 'horrible-science-vat-ly-cau-chuyen-cua-nhung-luc-bi-hiem.jpg'),
(38, 'Nhận thức lịch sử Việt Nam', 'Phần I: Tư liệu và Tổng quan\r\nNhững công trình mang tính khái quát, thể hiện dấu ấn của GS. Phan Huy Lê, hoặc những bài tổng kết chưa được xuất bản chính thức, hay chưa có điều kiện công bố rộng rãi.\r\n\r\nPhần II: Nhân vật và Sự kiện\r\nTập trung cao cho nội dung hình thành, phát triển, tính chất, chức năng, vai trò và đóng góp của các nhà nước từ thời đại dựng nước đầu tiên cho đến các nhà nước thế kỷ X; lịch sử quân sự và các cuộc chiến tranh giữ nước từ khởi nghĩa Hoan Châu (713-722) cho đến chiến thắng lịch sử Điện Biên Phủ (1954); một số bài viết tiêu biểu về các nhân vật lịch sử.', 5, 1, 1, 10, '20000', '190000', 'lichsuvn.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sachyeuthich`
--

CREATE TABLE `sachyeuthich` (
  `ma` int(11) NOT NULL,
  `masach` int(11) NOT NULL,
  `madocgia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `sachyeuthich`
--

INSERT INTO `sachyeuthich` (`ma`, `masach`, `madocgia`) VALUES
(14, 38, 9),
(15, 4, 9);

-- --------------------------------------------------------

--
-- Table structure for table `tacgia`
--

CREATE TABLE `tacgia` (
  `matg` int(11) NOT NULL,
  `tentg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tacgia`
--

INSERT INTO `tacgia` (`matg`, `tentg`) VALUES
(1, 'KhangHay');

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `tendangnhap` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `matkhau` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `maquyen` int(11) DEFAULT NULL,
  `ngaytao` date DEFAULT NULL,
  `trangthai` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`tendangnhap`, `matkhau`, `maquyen`, `ngaytao`, `trangthai`) VALUES
('admin', 'admin', 0, '2024-05-08', 0),
('khang123456', '$2y$10$.IFDA.itG1pxoNJE.QIxMOoP6xOs5ToLji.x3YbuEgDGZQo8yGDzq', 2, '2025-11-05', 0),
('khangdeptrai', '$2y$10$0VGZEZ6htvCZypLPevt.buEYDIlEHfiDEX6Lfe2wBQcneJZAd4ZhC', 2, '2025-10-31', 0),
('minhhang', '123456kk', 2, '2024-12-01', 0),
('sdasd', '1234567*K', 2, '2024-12-01', 1),
('ttda0864', '90263iZ!', 1, '2024-12-13', 0);

-- --------------------------------------------------------

--
-- Table structure for table `theloai`
--

CREATE TABLE `theloai` (
  `matl` int(11) NOT NULL,
  `tentl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `theloai`
--

INSERT INTO `theloai` (`matl`, `tentl`) VALUES
(1, 'Trinh thám'),
(2, 'Huyền huyễn'),
(3, 'Hài hước'),
(5, 'Giáo dục');

-- --------------------------------------------------------

--
-- Table structure for table `tinhtrangsach`
--

CREATE TABLE `tinhtrangsach` (
  `matinhtrang` int(11) NOT NULL,
  `motatinhtrang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tinhtrangsach`
--

INSERT INTO `tinhtrangsach` (`matinhtrang`, `motatinhtrang`) VALUES
(0, 'bình thường'),
(1, 'Rách trang');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitietphieumuon`
--
ALTER TABLE `chitietphieumuon`
  ADD PRIMARY KEY (`mactpm`),
  ADD KEY `mapm` (`mapm`),
  ADD KEY `mavach` (`mavach`);

--
-- Indexes for table `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD KEY `mapn` (`mapn`),
  ADD KEY `masach` (`masach`);

--
-- Indexes for table `chitietphieutra`
--
ALTER TABLE `chitietphieutra`
  ADD KEY `mapt` (`mapt`),
  ADD KEY `mavach` (`mavach`),
  ADD KEY `maphat` (`maphat`);

--
-- Indexes for table `chitietquyen`
--
ALTER TABLE `chitietquyen`
  ADD KEY `maquyen` (`maquyen`),
  ADD KEY `machucnang` (`machucnang`);

--
-- Indexes for table `chitietsach`
--
ALTER TABLE `chitietsach`
  ADD PRIMARY KEY (`mavach`),
  ADD KEY `masach` (`masach`),
  ADD KEY `matinhtrang` (`matinhtrang`),
  ADD KEY `khu` (`khu`);

--
-- Indexes for table `chucnang`
--
ALTER TABLE `chucnang`
  ADD PRIMARY KEY (`machucnang`);

--
-- Indexes for table `docgia`
--
ALTER TABLE `docgia`
  ADD PRIMARY KEY (`madg`),
  ADD KEY `maloaidocgia` (`maloaidocgia`),
  ADD KEY `matk` (`matk`);

--
-- Indexes for table `giomuontamthoi`
--
ALTER TABLE `giomuontamthoi`
  ADD KEY `masach` (`masach`),
  ADD KEY `mataikhoan` (`madocgia`);

--
-- Indexes for table `hinhthucphat`
--
ALTER TABLE `hinhthucphat`
  ADD PRIMARY KEY (`maphat`);

--
-- Indexes for table `loaidocgia`
--
ALTER TABLE `loaidocgia`
  ADD PRIMARY KEY (`maloaidocgia`);

--
-- Indexes for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`mancc`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`manv`),
  ADD KEY `matk` (`matk`);

--
-- Indexes for table `nhaxuatban`
--
ALTER TABLE `nhaxuatban`
  ADD PRIMARY KEY (`manxb`);

--
-- Indexes for table `phieumuon`
--
ALTER TABLE `phieumuon`
  ADD PRIMARY KEY (`mapm`),
  ADD KEY `manv` (`manv`),
  ADD KEY `madg` (`madg`);

--
-- Indexes for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`mapn`),
  ADD KEY `mancc` (`mancc`),
  ADD KEY `manv` (`manv`);

--
-- Indexes for table `phieutra`
--
ALTER TABLE `phieutra`
  ADD PRIMARY KEY (`mapt`),
  ADD KEY `mapm` (`mapm`),
  ADD KEY `madg` (`madg`),
  ADD KEY `manv` (`manv`);

--
-- Indexes for table `quyen`
--
ALTER TABLE `quyen`
  ADD PRIMARY KEY (`maquyen`);

--
-- Indexes for table `sach`
--
ALTER TABLE `sach`
  ADD PRIMARY KEY (`masach`),
  ADD KEY `manxb` (`manxb`),
  ADD KEY `matg` (`matg`),
  ADD KEY `matl` (`matl`);

--
-- Indexes for table `sachyeuthich`
--
ALTER TABLE `sachyeuthich`
  ADD PRIMARY KEY (`ma`),
  ADD KEY `masach` (`masach`),
  ADD KEY `mataikhoan` (`madocgia`);

--
-- Indexes for table `tacgia`
--
ALTER TABLE `tacgia`
  ADD PRIMARY KEY (`matg`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`tendangnhap`),
  ADD KEY `maquyen` (`maquyen`);

--
-- Indexes for table `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`matl`);

--
-- Indexes for table `tinhtrangsach`
--
ALTER TABLE `tinhtrangsach`
  ADD PRIMARY KEY (`matinhtrang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chitietphieumuon`
--
ALTER TABLE `chitietphieumuon`
  MODIFY `mactpm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `chitietsach`
--
ALTER TABLE `chitietsach`
  MODIFY `mavach` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95867695;

--
-- AUTO_INCREMENT for table `chucnang`
--
ALTER TABLE `chucnang`
  MODIFY `machucnang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `docgia`
--
ALTER TABLE `docgia`
  MODIFY `madg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `hinhthucphat`
--
ALTER TABLE `hinhthucphat`
  MODIFY `maphat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `loaidocgia`
--
ALTER TABLE `loaidocgia`
  MODIFY `maloaidocgia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `mancc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `manv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `nhaxuatban`
--
ALTER TABLE `nhaxuatban`
  MODIFY `manxb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `phieumuon`
--
ALTER TABLE `phieumuon`
  MODIFY `mapm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `phieunhap`
--
ALTER TABLE `phieunhap`
  MODIFY `mapn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `phieutra`
--
ALTER TABLE `phieutra`
  MODIFY `mapt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sach`
--
ALTER TABLE `sach`
  MODIFY `masach` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `sachyeuthich`
--
ALTER TABLE `sachyeuthich`
  MODIFY `ma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tacgia`
--
ALTER TABLE `tacgia`
  MODIFY `matg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `theloai`
--
ALTER TABLE `theloai`
  MODIFY `matl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tinhtrangsach`
--
ALTER TABLE `tinhtrangsach`
  MODIFY `matinhtrang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitietphieumuon`
--
ALTER TABLE `chitietphieumuon`
  ADD CONSTRAINT `chitietphieumuon_ibfk_1` FOREIGN KEY (`mapm`) REFERENCES `phieumuon` (`mapm`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitietphieumuon_ibfk_2` FOREIGN KEY (`mavach`) REFERENCES `chitietsach` (`mavach`);

--
-- Constraints for table `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD CONSTRAINT `chitietphieunhap_ibfk_1` FOREIGN KEY (`mapn`) REFERENCES `phieunhap` (`mapn`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitietphieunhap_ibfk_2` FOREIGN KEY (`masach`) REFERENCES `sach` (`masach`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `chitietphieutra`
--
ALTER TABLE `chitietphieutra`
  ADD CONSTRAINT `chitietphieutra_ibfk_1` FOREIGN KEY (`mapt`) REFERENCES `phieutra` (`mapt`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitietphieutra_ibfk_2` FOREIGN KEY (`mavach`) REFERENCES `chitietsach` (`mavach`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `chitietphieutra_ibfk_3` FOREIGN KEY (`maphat`) REFERENCES `hinhthucphat` (`maphat`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `chitietquyen`
--
ALTER TABLE `chitietquyen`
  ADD CONSTRAINT `ctquyen_chucnang` FOREIGN KEY (`machucnang`) REFERENCES `chucnang` (`machucnang`),
  ADD CONSTRAINT `ctquyen_quyen` FOREIGN KEY (`maquyen`) REFERENCES `quyen` (`maquyen`);

--
-- Constraints for table `chitietsach`
--
ALTER TABLE `chitietsach`
  ADD CONSTRAINT `chitietsach_ibfk_1` FOREIGN KEY (`masach`) REFERENCES `sach` (`masach`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitietsach_ibfk_2` FOREIGN KEY (`matinhtrang`) REFERENCES `tinhtrangsach` (`matinhtrang`) ON UPDATE CASCADE;

--
-- Constraints for table `docgia`
--
ALTER TABLE `docgia`
  ADD CONSTRAINT `docgia_ibfk_1` FOREIGN KEY (`maloaidocgia`) REFERENCES `loaidocgia` (`maloaidocgia`),
  ADD CONSTRAINT `docgia_ibfk_2` FOREIGN KEY (`matk`) REFERENCES `taikhoan` (`tendangnhap`) ON UPDATE CASCADE;

--
-- Constraints for table `giomuontamthoi`
--
ALTER TABLE `giomuontamthoi`
  ADD CONSTRAINT `giomuontamthoi_ibfk_1` FOREIGN KEY (`masach`) REFERENCES `sach` (`masach`);

--
-- Constraints for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `nhanvien_ibfk_1` FOREIGN KEY (`matk`) REFERENCES `taikhoan` (`tendangnhap`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `phieumuon`
--
ALTER TABLE `phieumuon`
  ADD CONSTRAINT `phieumuon_ibfk_1` FOREIGN KEY (`madg`) REFERENCES `docgia` (`madg`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `phieumuon_ibfk_2` FOREIGN KEY (`manv`) REFERENCES `nhanvien` (`manv`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD CONSTRAINT `phieunhap_ibfk_1` FOREIGN KEY (`mancc`) REFERENCES `nhacungcap` (`mancc`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `phieunhap_ibfk_2` FOREIGN KEY (`manv`) REFERENCES `nhanvien` (`manv`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `phieutra`
--
ALTER TABLE `phieutra`
  ADD CONSTRAINT `phieutra_ibfk_1` FOREIGN KEY (`mapm`) REFERENCES `phieumuon` (`mapm`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `phieutra_ibfk_2` FOREIGN KEY (`madg`) REFERENCES `docgia` (`madg`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `phieutra_ibfk_3` FOREIGN KEY (`manv`) REFERENCES `nhanvien` (`manv`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `sach`
--
ALTER TABLE `sach`
  ADD CONSTRAINT `sach_ibfk_1` FOREIGN KEY (`matg`) REFERENCES `tacgia` (`matg`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `sach_ibfk_2` FOREIGN KEY (`manxb`) REFERENCES `nhaxuatban` (`manxb`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `sach_ibfk_3` FOREIGN KEY (`matl`) REFERENCES `theloai` (`matl`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `sachyeuthich`
--
ALTER TABLE `sachyeuthich`
  ADD CONSTRAINT `sachyeuthich_ibfk_1` FOREIGN KEY (`masach`) REFERENCES `sach` (`masach`),
  ADD CONSTRAINT `sachyeuthich_ibfk_2` FOREIGN KEY (`madocgia`) REFERENCES `docgia` (`madg`);

--
-- Constraints for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD CONSTRAINT `taikhoan_ibfk_1` FOREIGN KEY (`maquyen`) REFERENCES `quyen` (`maquyen`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
