-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 16, 2023 lúc 02:45 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quan_ly_nhan_khau`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cach_ly`
--

CREATE TABLE `cach_ly` (
  `id_cachly` int(11) NOT NULL,
  `id_nhankhau` int(11) NOT NULL,
  `noi_cach_ly` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tgian_bat_dau` datetime NOT NULL,
  `muc_do_cach_ly` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `is_tested` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `cach_ly`
--

INSERT INTO `cach_ly` (`id_cachly`, `id_nhankhau`, `noi_cach_ly`, `tgian_bat_dau`, `muc_do_cach_ly`, `is_tested`) VALUES
(1, 30, 'Bệnh viện Thanh Nhàn', '2020-12-09 09:00:00', 'F1', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chung_minh_thu`
--

CREATE TABLE `chung_minh_thu` (
  `ID` int(11) NOT NULL,
  `idNhanKhau` int(11) DEFAULT NULL,
  `soCMT` varchar(12) NOT NULL,
  `ngayCap` date DEFAULT NULL,
  `noiCap` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chung_minh_thu`
--

INSERT INTO `chung_minh_thu` (`ID`, `idNhanKhau`, `soCMT`, `ngayCap`, `noiCap`) VALUES
(13, 26, '20200001', NULL, NULL),
(14, 27, '20200002', NULL, NULL),
(15, 28, '20200003', NULL, NULL),
(16, 29, '20200004', NULL, NULL),
(17, 30, '20200005', NULL, NULL),
(18, 31, '20200006', NULL, NULL),
(19, 32, '20200007', NULL, NULL),
(20, 33, '20200008', NULL, NULL),
(21, 34, '20200009', NULL, NULL),
(22, 35, '20200010', NULL, NULL),
(23, 36, '20200011', NULL, NULL),
(24, 37, '20200012', NULL, NULL),
(25, 38, '20200013', NULL, NULL),
(26, 39, '111111111111', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dinh_chinh`
--

CREATE TABLE `dinh_chinh` (
  `ID` int(11) NOT NULL,
  `idHoKhau` int(11) DEFAULT NULL,
  `thongTinThayDoi` varchar(100) DEFAULT NULL,
  `thayDoiTu` varchar(100) DEFAULT NULL,
  `thayDoiThanh` varchar(100) DEFAULT NULL,
  `ngayThayDoi` date DEFAULT NULL,
  `nguoiThayDoi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gia_dinh`
--

CREATE TABLE `gia_dinh` (
  `ID` int(11) NOT NULL,
  `idNhanKhau` int(11) DEFAULT NULL,
  `hoTen` varchar(100) DEFAULT NULL,
  `namSinh` date DEFAULT NULL,
  `gioiTinh` varchar(100) DEFAULT NULL,
  `quanHeVoiNhanKhau` varchar(100) DEFAULT NULL,
  `ngheNghiep` varchar(100) DEFAULT NULL,
  `diaChiHienTai` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `gia_dinh`
--

INSERT INTO `gia_dinh` (`ID`, `idNhanKhau`, `hoTen`, `namSinh`, `gioiTinh`, `quanHeVoiNhanKhau`, `ngheNghiep`, `diaChiHienTai`) VALUES
(2, 27, 'Hoàng Minh Ngọc', '1995-05-31', 'Nam', 'Chồng', 'Kỹ sư', 'Số 2 Tạ Quang Bửu, Hai Bà Trưng, Hà Nội'),
(3, 28, 'Trần Thanh Duyên', '1997-12-23', 'Nữ', 'Vợ', 'Nhân viên văn phòng', 'Số 2 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội'),
(4, 29, 'Vũ Mỹ Linh', '1965-12-06', 'Nữ', 'Vợ', 'Nội trợ', 'Số 3 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội'),
(5, 29, 'Trần Văn Hiếu', '1990-09-09', 'Nam', 'Con trai', 'Kỹ sư điện', 'Số 3 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội'),
(6, 29, 'Nguyễn Trà My', '1997-12-12', 'Nữ', 'Con gái', 'Luật sư', 'Số 3 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội'),
(7, 30, 'Phạm Trung Đức', '1964-06-03', 'Nam', 'Chồng', 'Phó giám đốc', 'Số 3 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội'),
(8, 30, 'Nguyễn Hoàng Long', '1990-09-09', 'Nam', 'Con trai', 'Kỹ sư điện', 'Số 3 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội'),
(9, 30, 'Nguyễn Trà My', '1997-12-12', 'Nữ', 'Con Gái', 'Luật sư', ''),
(10, 31, 'Nguyễn Văn Kiên', '1964-06-03', 'Nam', 'Bố', 'Phó giám đốc', 'Số 3 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội'),
(11, 31, 'Nguyễn Thị Quỳnh Nga', '1965-12-06', 'Nữ', 'Mẹ', 'Nội trợ', 'Số 3 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội'),
(12, 31, 'Nguyễn Trà My', '1997-12-12', 'Nữ', 'Em gái', 'Luật sư', 'Số 3 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội'),
(13, 32, 'Nguyễn Tiến Dũng', '1964-06-03', 'Nam', 'Bố', 'Phó giám đốc', 'Số 3 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội'),
(14, 32, 'Vũ Mỹ Linh', '1965-12-06', 'Nữ', 'Mẹ', 'Nội trợ', 'Số 3 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội'),
(15, 32, 'Nguyễn Tiến Đạt', '1990-09-09', 'Nam', 'Anh trai', 'Kỹ sư điện', 'Số 3 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội'),
(16, 33, 'Nguyễn Minh Tuyết', '1985-09-02', 'Nữ', 'Vợ', 'Bác sĩ', 'Số 4 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội'),
(17, 33, 'Trần Trung Kiên', '2008-12-25', 'Nam', 'Con trai', 'Học sinh', 'Số 4 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội'),
(18, 33, 'Trần Thúy Ngọc', '2013-01-15', 'Nữ', 'Con gái', 'Học sinh', 'Số 4 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội'),
(19, 34, 'Trần Trung Kiên', '2008-12-25', 'Nam', 'Con trai', 'Học sinh', 'Số 4 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội'),
(20, 34, 'Trần Thúy Ngọc', '2013-01-15', 'Nữ', 'Con gái', 'Học sinh', 'Số 4 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội'),
(21, 34, 'Trần Văn Nam', '1980-07-09', 'Nam', 'Chồng', 'Giảng viên đại học', 'Số 4 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội'),
(22, 35, 'Trần Văn Nam', '1980-07-09', 'Nam', 'Bố', 'Giảng viên đại học', 'Số 4 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội'),
(23, 35, 'Nguyễn Minh Tuyết', '1985-09-02', 'Nữ', 'Mẹ', 'Bác sĩ', 'Số 4 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội'),
(24, 35, 'Trần Thúy Ngọc', '2013-01-15', 'Nữ', 'Em gái', 'Học sinh', 'Số 4 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội'),
(25, 36, 'Trần Văn Nam', '1980-07-09', 'Nam', 'Bố', 'Giảng viên đại học', 'Số 4 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội'),
(26, 36, 'Nguyễn Minh Tuyết', '1985-09-02', 'Nữ ', 'Mẹ', 'Bác sĩ', 'Số 4 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội'),
(27, 36, 'Trần Trung Kiên', '2008-12-25', 'Nam', 'Anh trai', 'Học sinh', 'Số 4 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội'),
(28, 37, 'Bùi Thị Hà', '1948-02-03', 'Nữ', 'Vợ', 'Nội trợ', 'Số 5 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội'),
(29, 37, 'Lý Thành Nam', '1968-06-12', 'Nam', 'Con Trai', 'Công nhân', 'Số 89, ngõ 98 Trường Chinh, Hà Nội'),
(30, 37, 'Lý Thu Thủy', '1971-03-05', 'Nữ', 'Con Gái', 'Nhân viên văn phòng', 'Số 3, ngõ 568 Đường Láng, Hà Nội'),
(31, 38, 'Lý Văn Công', '1945-06-04', 'Nam', 'Chồng', 'Bộ đội về hưu', 'Số 5 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội'),
(32, 38, 'Lý Thành Nam', '1968-06-12', 'Nam', 'Con trai', 'Công nhân', 'Số 89, ngõ 98 Trường Chinh, Hà Nội'),
(33, 38, 'Lý Thu Thủy', '1971-03-05', 'Nữ', 'Con gái', 'Nhân viên văn phòng', 'Số 3, ngõ 568 Đường Láng, Hà Nội');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ho_khau`
--

CREATE TABLE `ho_khau` (
  `ID` int(11) NOT NULL,
  `maHoKhau` varchar(100) DEFAULT NULL,
  `idChuHo` int(11) DEFAULT NULL,
  `maKhuVuc` varchar(100) DEFAULT NULL,
  `diaChi` varchar(100) DEFAULT NULL,
  `ngayLap` date DEFAULT NULL,
  `ngayChuyenDi` date DEFAULT NULL,
  `lyDoChuyen` text DEFAULT NULL,
  `nguoiThucHien` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ho_khau`
--

INSERT INTO `ho_khau` (`ID`, `maHoKhau`, `idChuHo`, `maKhuVuc`, `diaChi`, `ngayLap`, `ngayChuyenDi`, `lyDoChuyen`, `nguoiThucHien`) VALUES
(13, 'TQB002', 28, 'HN03', 'Số 2 Tạ Quang Bửu, quần Hai Bà Trưng, Hà Nội', '2019-12-08', NULL, NULL, NULL),
(14, 'TQB001', 26, 'HN03', 'Số 1 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', '2019-12-08', NULL, NULL, NULL),
(15, 'TQB003', 29, 'HN03', 'Số 3 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', '2019-12-08', NULL, NULL, NULL),
(16, 'TQB004', 33, 'HN03', 'Số 4 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', '2019-12-08', NULL, NULL, NULL),
(17, '123', 36, '23423', '213', '2023-07-16', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khai_bao`
--

CREATE TABLE `khai_bao` (
  `id_khaibao` int(11) NOT NULL,
  `id_nhankhau` int(11) NOT NULL,
  `vung_dich` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `bieu_hien` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ngay_khai_bao` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `khai_bao`
--

INSERT INTO `khai_bao` (`id_khaibao`, `id_nhankhau`, `vung_dich`, `bieu_hien`, `ngay_khai_bao`) VALUES
(1, 30, 'Hà Nội', 'ốm, sốt', '2023-07-16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khai_tu`
--

CREATE TABLE `khai_tu` (
  `ID` int(11) NOT NULL,
  `soGiayKhaiTu` varchar(100) DEFAULT NULL,
  `idNguoiKhai` int(11) DEFAULT NULL,
  `idNguoiChet` int(11) DEFAULT NULL,
  `ngayKhai` date DEFAULT NULL,
  `ngayChet` date DEFAULT NULL,
  `lyDoChet` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhan_khau`
--

CREATE TABLE `nhan_khau` (
  `ID` int(11) NOT NULL,
  `maNhanKhau` varchar(100) DEFAULT NULL,
  `hoTen` varchar(100) DEFAULT NULL,
  `bietDanh` varchar(100) DEFAULT NULL,
  `namSinh` date DEFAULT NULL,
  `gioiTinh` varchar(100) DEFAULT NULL,
  `noiSinh` varchar(100) DEFAULT NULL,
  `nguyenQuan` varchar(100) DEFAULT NULL,
  `danToc` varchar(100) DEFAULT NULL,
  `tonGiao` varchar(100) DEFAULT NULL,
  `quocTich` varchar(100) DEFAULT NULL,
  `soHoChieu` varchar(100) DEFAULT NULL,
  `noiThuongTru` varchar(100) DEFAULT NULL,
  `diaChiHienNay` varchar(100) DEFAULT NULL,
  `trinhDoHocVan` varchar(100) DEFAULT NULL,
  `TrinhDoChuyenMon` varchar(100) DEFAULT NULL,
  `bietTiengDanToc` varchar(100) DEFAULT NULL,
  `trinhDoNgoaiNgu` varchar(100) DEFAULT NULL,
  `ngheNghiep` varchar(100) DEFAULT NULL,
  `noiLamViec` varchar(100) DEFAULT NULL,
  `tienAn` varchar(100) DEFAULT NULL,
  `ngayChuyenDen` date DEFAULT NULL,
  `lyDoChuyenDen` varchar(100) DEFAULT NULL,
  `ngayChuyenDi` date DEFAULT NULL,
  `lyDoChuyenDi` varchar(100) DEFAULT NULL,
  `diaChiMoi` varchar(100) DEFAULT NULL,
  `ngayTao` date DEFAULT NULL,
  `idNguoiTao` int(11) DEFAULT NULL,
  `ngayXoa` date DEFAULT NULL,
  `idNguoiXoa` int(11) DEFAULT NULL,
  `lyDoXoa` varchar(100) DEFAULT NULL,
  `ghiChu` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhan_khau`
--

INSERT INTO `nhan_khau` (`ID`, `maNhanKhau`, `hoTen`, `bietDanh`, `namSinh`, `gioiTinh`, `noiSinh`, `nguyenQuan`, `danToc`, `tonGiao`, `quocTich`, `soHoChieu`, `noiThuongTru`, `diaChiHienNay`, `trinhDoHocVan`, `TrinhDoChuyenMon`, `bietTiengDanToc`, `trinhDoNgoaiNgu`, `ngheNghiep`, `noiLamViec`, `tienAn`, `ngayChuyenDen`, `lyDoChuyenDen`, `ngayChuyenDi`, `lyDoChuyenDi`, `diaChiMoi`, `ngayTao`, `idNguoiTao`, `ngayXoa`, `idNguoiXoa`, `lyDoXoa`, `ghiChu`) VALUES
(26, 'TA26', 'Trần Văn Hiếu', '', '1990-12-07', 'Nam', NULL, 'Hà Nội', 'Kinh', 'Không', 'Việt Nam', '', 'Số 1 Tạ Quang Bưu, Hai Bà Trưng, Hà Nội', 'Số 1 Tạ Quang Bưu, Hai Bà Trưng, Hà Nội', '12/12 chính quy', 'Thạc sĩ', 'Không', 'Anh trình đọ B', 'Giáo Viên', 'Trường THCS Chu Văn An', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL),
(27, 'TD27', 'Phạm Trung Đức', '', '1997-12-23', 'Nữ', NULL, 'Hải Phòng', 'Kinh', 'Không', 'Việt Nam', '', 'Số 3, đường Đình Đông, phường Đình Đông, quận Ngô Quyền, Hải Phòng', 'Số 2 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', '12/12 chính quy', 'Thạc sĩ', 'Không', 'Anh trình độ D', 'Nhân viên văn phòng', 'Công ty ABC', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL),
(28, 'NQ28', 'Hoàng Minh Ngọc', '', '1995-05-31', 'Nam', NULL, 'Hà Nội', 'Kinh', 'Không', 'Việt Nam', '', 'Số 2 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', 'Số 2 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', '12/12 chính quy', 'Thạc sĩ', 'Không', 'Anh trình độ D', 'Kỹ sư', 'Viettel', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL),
(29, 'ND29', 'Hoàng Văn Kiên', '', '1964-06-03', 'Nam', NULL, 'Hải Dương', 'Kinh', 'Thiên chúa giáo', 'Việt Nam', '', 'Số 3 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', 'Số 4 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', '12/12 chính quy', 'Kỹ sư', 'Không', 'Không', 'Phó giám đốc', 'Công ty EXE', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL),
(30, 'VL30', 'Nguyễn Thị Quỳnh Nga', '', '1965-12-06', 'Nữ', NULL, 'Hà Nội', 'Kinh', 'Không', 'Việt Nam', '', 'Số 3 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', 'Số 3 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', '12/12', 'Cử Nhân', 'Không', 'Không', 'Nội trợ', 'Tại nhà', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL),
(31, 'ND31', 'Nguyễn Hoàng Nam', '', '1990-09-09', 'Nam', NULL, 'Hải Dương', 'Kinh', 'Thiên chúa giáo', 'Việt Nam', '', 'Số 3 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', 'Số 3 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', '12/12 chính quy', 'Kỹ sư', 'không', 'Anh trình độ C', 'Kỹ sư điện', 'Công ty điện EVN', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL),
(32, 'NM32', 'Nguyễn Trà My', '', '1997-12-12', 'Nữ', NULL, 'Hải Dương', 'Kinh', 'Thiên chúa giáo', 'Việt Nam', '', 'Số 3 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', 'Số 3 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', '12/12 chính quy', 'Thạc sĩ', 'không', 'Anh trình đố D', 'Luật sư', 'Văn phòng luật sư 123', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL),
(33, 'TN33', 'Nguyễn Hoàng Long', '', '1980-07-09', 'Nam', NULL, 'Hà Nội', 'Kinh', 'Không', 'Việt Nam', '', 'Số 4 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', 'Số 4 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', '12/12 chính quy', 'Tiến sĩ', 'Không', 'Anh trình độ D', 'Giảng viên đại học', 'Đại học Bách khoa Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL),
(34, 'NT34', 'Nguyễn Minh Tuyết', '', '1985-09-02', 'Nữ', NULL, 'Nam Định', 'Kinh', 'Không', 'Việt Nam', '', 'Số 4 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', 'Số 4 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', '12/12 chính quy', 'Thạc sĩ', 'Không', 'Anh trình độ D', 'Bác sĩ', 'Bệnh viện quốc tế HJK', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL),
(35, 'TK35', 'Trần Trung Kiên', '', '2008-12-25', 'Nam', NULL, 'Hà Nội', 'Kinh', 'Không', 'Việt Nam', '', 'Số 4 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', 'Số 4 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', '6/12 chính quy', 'Không', 'Không', 'Không', 'Học sinh', 'Trường THCS Chu Văn An', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL),
(36, 'TN36', 'Trần Thúy Ngọc', '', '2013-01-15', 'Nữ', NULL, 'Hà Nội', 'Kinh', 'Không', 'Việt Nam', '', 'Số 4 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', 'Số 4 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', '1/12 chính quy', 'Không', 'Không', 'Không', 'Học sinh', 'Trường tiểu học Chu Văn An', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL),
(37, 'LC37', 'Lý Văn Công', '', '1945-06-04', 'Nam', NULL, 'Hà Nội', 'Kinh', 'Không', 'Việt Nam', '', 'Số 5 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', 'Số 5 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', '10/12 chính quy', 'Không', 'Không', 'Không', 'Về hưu', 'Không', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL),
(38, 'BH38', 'Bùi Thị Hà', '', '1948-02-03', 'Nữ', NULL, 'Hải Phòng', 'Kinh', 'Không', 'Việt Nam', '', 'Số 5 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', 'Số 5 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', '10/12', 'Không', 'Không', 'Không', 'Nội trợ', 'Tại nhà', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL),
(39, NULL, 'HMN', 'sf', '2023-07-16', 'Nam', NULL, 'dà', 'sd', 'sf', 'sfd', 'sfd', 'sfd', 'sf', 'sfd', 'sfd', 'sfd', 'sfd', 'sfd', 'sfd', NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-16', 3, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tam_tru`
--

CREATE TABLE `tam_tru` (
  `ID` int(11) NOT NULL,
  `idNhanKhau` int(11) DEFAULT NULL,
  `maGiayTamtru` varchar(100) DEFAULT NULL,
  `soDienThoaiNguoiDangKy` varchar(100) DEFAULT NULL,
  `tuNgay` date NOT NULL,
  `denNgay` date NOT NULL,
  `lyDo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tam_tru`
--

INSERT INTO `tam_tru` (`ID`, `idNhanKhau`, `maGiayTamtru`, `soDienThoaiNguoiDangKy`, `tuNgay`, `denNgay`, `lyDo`) VALUES
(2, 26, '24234', '23424', '2023-07-16', '2023-07-16', '23424');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tam_vang`
--

CREATE TABLE `tam_vang` (
  `ID` int(11) NOT NULL,
  `idNhanKhau` int(11) DEFAULT NULL,
  `maGiayTamVang` varchar(100) DEFAULT NULL,
  `noiTamtru` varchar(100) DEFAULT NULL,
  `tuNgay` date DEFAULT NULL,
  `denNgay` date DEFAULT NULL,
  `lyDo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `test`
--

CREATE TABLE `test` (
  `id_test` int(11) NOT NULL,
  `id_nhankhau` int(11) NOT NULL,
  `thoi_diem_test` datetime NOT NULL,
  `hinh_thuc_test` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ket_qua` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `test`
--

INSERT INTO `test` (`id_test`, `id_nhankhau`, `thoi_diem_test`, `hinh_thuc_test`, `ket_qua`) VALUES
(1, 30, '2023-07-16 07:00:00', 'nhanh', 'âm tính');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanh_vien_cua_ho`
--

CREATE TABLE `thanh_vien_cua_ho` (
  `idNhanKhau` int(11) NOT NULL,
  `idHoKhau` int(11) NOT NULL,
  `quanHeVoiChuHo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thanh_vien_cua_ho`
--

INSERT INTO `thanh_vien_cua_ho` (`idNhanKhau`, `idHoKhau`, `quanHeVoiChuHo`) VALUES
(26, 14, 'Chủ hộ'),
(27, 13, 'Vợ'),
(29, 15, 'Chủ hộ'),
(30, 15, 'Vợ'),
(31, 15, 'Con trai'),
(32, 15, 'Con gái'),
(33, 16, 'Chủ hộ'),
(34, 16, 'Vợ'),
(35, 16, 'Con trai'),
(35, 17, 'Con');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tieu_su`
--

CREATE TABLE `tieu_su` (
  `ID` int(11) NOT NULL,
  `idNhanKhau` int(11) DEFAULT NULL,
  `tuNgay` date DEFAULT NULL,
  `denNgay` date DEFAULT NULL,
  `diaChi` varchar(100) DEFAULT NULL,
  `ngheNghiep` varchar(100) DEFAULT NULL,
  `noiLamViec` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tieu_su`
--

INSERT INTO `tieu_su` (`ID`, `idNhanKhau`, `tuNgay`, `denNgay`, `diaChi`, `ngheNghiep`, `noiLamViec`) VALUES
(2, 27, '2015-09-05', '2015-09-05', 'Số 45, ngõ 56, Nguyễn Khang, Cầu Giấy, Hà Nội', 'Sinh Viên', 'Đại học Thương mại'),
(3, 28, '2012-09-05', '2017-09-05', '556 La Thành, Hà Nội', 'Sinh Viên', 'Đại học Bách khoa Hà Nội'),
(4, 29, '1989-05-10', '2000-08-25', 'Số 5 Nguyễn Khuyến, Hà Nội', 'Quản lý nhận sự', 'Công ty BCC'),
(5, 30, '1987-05-23', '1997-03-01', 'Số 3 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', 'Nhân viên văn phòng', 'Công ty Zezs'),
(6, 31, '2008-09-05', '2013-09-05', 'Số 3 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', 'Sinh viên', 'Đại học Bách khoa Hà Nội'),
(7, 32, '2015-09-05', '2019-09-05', 'Số 3 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', 'Sinh viên', 'Đại học Luật Hà Nội'),
(8, 33, '1998-09-05', '2003-09-05', 'Số 66, ngõ 445 Nguyễn Khang, Cầu Giấy, Hà Nội', 'Sinh Vvên', 'Đại học Bách khoa Hà Nội'),
(9, 33, '2003-10-03', '2018-08-06', 'Số 4 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', 'Giảng viên', 'Đại học Công ngiệp Hà Nội'),
(10, 34, '2003-09-05', '2011-09-05', 'Số 8 Tôn Thất Tùng, Hà Nội', 'Sinh viên', 'Đại học Y Hà Nội'),
(11, 34, '2011-10-03', '2015-08-09', 'Số 8 Tôn Thất Tùng, Hà Nội', 'Bác sĩ nội trú', 'Bệnh viện Bạch Mai'),
(12, 37, '1961-01-01', '1963-01-01', 'Không rõ', 'Bộ đội', 'Hà Nội');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `passwd` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`ID`, `userName`, `passwd`) VALUES
(1, 'admin', '1'),
(2, 'hoangminhngoc', '123123'),
(3, 'ngoc.hm200440@sis.hust.edu.vn', '123123');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cach_ly`
--
ALTER TABLE `cach_ly`
  ADD PRIMARY KEY (`id_cachly`),
  ADD KEY `fk_nhankhau_id_2` (`id_nhankhau`);

--
-- Chỉ mục cho bảng `chung_minh_thu`
--
ALTER TABLE `chung_minh_thu`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idNhanKhau` (`idNhanKhau`);
ALTER TABLE `chung_minh_thu` ADD FULLTEXT KEY `soCMT` (`soCMT`);

--
-- Chỉ mục cho bảng `dinh_chinh`
--
ALTER TABLE `dinh_chinh`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idHoKhau` (`idHoKhau`),
  ADD KEY `nguoiThayDoi` (`nguoiThayDoi`);

--
-- Chỉ mục cho bảng `gia_dinh`
--
ALTER TABLE `gia_dinh`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idNhanKhau` (`idNhanKhau`);

--
-- Chỉ mục cho bảng `ho_khau`
--
ALTER TABLE `ho_khau`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idChuHo` (`idChuHo`);
ALTER TABLE `ho_khau` ADD FULLTEXT KEY `maHoKhau` (`maHoKhau`);

--
-- Chỉ mục cho bảng `khai_bao`
--
ALTER TABLE `khai_bao`
  ADD PRIMARY KEY (`id_khaibao`),
  ADD KEY `fk_nhankhau_id_1` (`id_nhankhau`);

--
-- Chỉ mục cho bảng `khai_tu`
--
ALTER TABLE `khai_tu`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idNguoiKhai` (`idNguoiKhai`),
  ADD KEY `idNguoiChet` (`idNguoiChet`);

--
-- Chỉ mục cho bảng `nhan_khau`
--
ALTER TABLE `nhan_khau`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idNguoiTao` (`idNguoiTao`),
  ADD KEY `idNguoiXoa` (`idNguoiXoa`);
ALTER TABLE `nhan_khau` ADD FULLTEXT KEY `hoTen` (`hoTen`,`bietDanh`);

--
-- Chỉ mục cho bảng `tam_tru`
--
ALTER TABLE `tam_tru`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idNhanKhau` (`idNhanKhau`);

--
-- Chỉ mục cho bảng `tam_vang`
--
ALTER TABLE `tam_vang`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idNhanKhau` (`idNhanKhau`);

--
-- Chỉ mục cho bảng `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id_test`),
  ADD KEY `fk_nhankhau_id_3` (`id_nhankhau`);

--
-- Chỉ mục cho bảng `thanh_vien_cua_ho`
--
ALTER TABLE `thanh_vien_cua_ho`
  ADD PRIMARY KEY (`idNhanKhau`,`idHoKhau`),
  ADD KEY `idHoKhau` (`idHoKhau`);

--
-- Chỉ mục cho bảng `tieu_su`
--
ALTER TABLE `tieu_su`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idNhanKhau` (`idNhanKhau`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cach_ly`
--
ALTER TABLE `cach_ly`
  MODIFY `id_cachly` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `chung_minh_thu`
--
ALTER TABLE `chung_minh_thu`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `dinh_chinh`
--
ALTER TABLE `dinh_chinh`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `gia_dinh`
--
ALTER TABLE `gia_dinh`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `ho_khau`
--
ALTER TABLE `ho_khau`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `khai_bao`
--
ALTER TABLE `khai_bao`
  MODIFY `id_khaibao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `khai_tu`
--
ALTER TABLE `khai_tu`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nhan_khau`
--
ALTER TABLE `nhan_khau`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `tam_tru`
--
ALTER TABLE `tam_tru`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tam_vang`
--
ALTER TABLE `tam_vang`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `test`
--
ALTER TABLE `test`
  MODIFY `id_test` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tieu_su`
--
ALTER TABLE `tieu_su`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cach_ly`
--
ALTER TABLE `cach_ly`
  ADD CONSTRAINT `fk_nhankhau_cachly` FOREIGN KEY (`id_nhankhau`) REFERENCES `nhan_khau` (`ID`);

--
-- Các ràng buộc cho bảng `chung_minh_thu`
--
ALTER TABLE `chung_minh_thu`
  ADD CONSTRAINT `chung_minh_thu_ibfk_1` FOREIGN KEY (`idNhanKhau`) REFERENCES `nhan_khau` (`ID`);

--
-- Các ràng buộc cho bảng `dinh_chinh`
--
ALTER TABLE `dinh_chinh`
  ADD CONSTRAINT `dinh_chinh_ibfk_1` FOREIGN KEY (`idHoKhau`) REFERENCES `ho_khau` (`ID`),
  ADD CONSTRAINT `dinh_chinh_ibfk_2` FOREIGN KEY (`nguoiThayDoi`) REFERENCES `users` (`ID`);

--
-- Các ràng buộc cho bảng `gia_dinh`
--
ALTER TABLE `gia_dinh`
  ADD CONSTRAINT `gia_dinh_ibfk_1` FOREIGN KEY (`idNhanKhau`) REFERENCES `nhan_khau` (`ID`);

--
-- Các ràng buộc cho bảng `ho_khau`
--
ALTER TABLE `ho_khau`
  ADD CONSTRAINT `ho_khau_ibfk_1` FOREIGN KEY (`idChuHo`) REFERENCES `nhan_khau` (`ID`);

--
-- Các ràng buộc cho bảng `khai_bao`
--
ALTER TABLE `khai_bao`
  ADD CONSTRAINT `fk_nhankhau_khaibao` FOREIGN KEY (`id_nhankhau`) REFERENCES `nhan_khau` (`ID`);

--
-- Các ràng buộc cho bảng `khai_tu`
--
ALTER TABLE `khai_tu`
  ADD CONSTRAINT `khai_tu_ibfk_1` FOREIGN KEY (`idNguoiKhai`) REFERENCES `nhan_khau` (`ID`),
  ADD CONSTRAINT `khai_tu_ibfk_2` FOREIGN KEY (`idNguoiChet`) REFERENCES `nhan_khau` (`ID`);

--
-- Các ràng buộc cho bảng `nhan_khau`
--
ALTER TABLE `nhan_khau`
  ADD CONSTRAINT `nhan_khau_ibfk_1` FOREIGN KEY (`idNguoiTao`) REFERENCES `users` (`ID`),
  ADD CONSTRAINT `nhan_khau_ibfk_2` FOREIGN KEY (`idNguoiXoa`) REFERENCES `users` (`ID`);

--
-- Các ràng buộc cho bảng `tam_tru`
--
ALTER TABLE `tam_tru`
  ADD CONSTRAINT `tam_tru_ibfk_1` FOREIGN KEY (`idNhanKhau`) REFERENCES `nhan_khau` (`ID`);

--
-- Các ràng buộc cho bảng `tam_vang`
--
ALTER TABLE `tam_vang`
  ADD CONSTRAINT `tam_vang_ibfk_1` FOREIGN KEY (`idNhanKhau`) REFERENCES `nhan_khau` (`ID`);

--
-- Các ràng buộc cho bảng `test`
--
ALTER TABLE `test`
  ADD CONSTRAINT `fk_nhankhau_test` FOREIGN KEY (`id_nhankhau`) REFERENCES `nhan_khau` (`ID`);

--
-- Các ràng buộc cho bảng `thanh_vien_cua_ho`
--
ALTER TABLE `thanh_vien_cua_ho`
  ADD CONSTRAINT `thanh_vien_cua_ho_ibfk_1` FOREIGN KEY (`idNhanKhau`) REFERENCES `nhan_khau` (`ID`),
  ADD CONSTRAINT `thanh_vien_cua_ho_ibfk_2` FOREIGN KEY (`idHoKhau`) REFERENCES `ho_khau` (`ID`);

--
-- Các ràng buộc cho bảng `tieu_su`
--
ALTER TABLE `tieu_su`
  ADD CONSTRAINT `tieu_su_ibfk_1` FOREIGN KEY (`idNhanKhau`) REFERENCES `nhan_khau` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
