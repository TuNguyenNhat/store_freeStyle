-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 07, 2025 lúc 11:19 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `free-style`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `anhsanpham`
--

CREATE TABLE `anhsanpham` (
  `ma_anhsp` int(11) NOT NULL,
  `ma_sp` int(11) NOT NULL,
  `anh1` varchar(255) NOT NULL,
  `anh2` varchar(255) NOT NULL,
  `anh3` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `ma_chitietdonhang` int(11) NOT NULL,
  `ma_donhang` int(11) NOT NULL,
  `ma_sp` int(11) NOT NULL,
  `ms_kichco` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `thanhtien` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cuoctrochuyen`
--

CREATE TABLE `cuoctrochuyen` (
  `ma_cuoctrochuyen` int(11) NOT NULL,
  `ma_client` int(11) NOT NULL,
  `ma_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diachi`
--

CREATE TABLE `diachi` (
  `ma_diachi` int(11) NOT NULL,
  `ma_tk` int(11) NOT NULL,
  `hotennguoinhan` varchar(100) NOT NULL,
  `sodienthoainguoinhan` varchar(20) NOT NULL,
  `tinhthanh` varchar(100) NOT NULL,
  `quanhuyen` varchar(100) NOT NULL,
  `phuongxa` varchar(100) NOT NULL,
  `diachidaydu` text NOT NULL,
  `macdinh` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `ma_donhang` int(11) NOT NULL,
  `ma_tk` int(11) NOT NULL,
  `ma_diachi` int(11) NOT NULL,
  `tongtien` varchar(25) NOT NULL,
  `trangthai` varchar(25) NOT NULL,
  `phuongthucthanhtoan` varchar(25) NOT NULL,
  `ngaytao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `ma_giohang` int(11) NOT NULL,
  `ma_tk` int(11) NOT NULL,
  `ma_sp` int(11) NOT NULL,
  `ma_kichco` int(11) NOT NULL,
  `soluong` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kichco`
--

CREATE TABLE `kichco` (
  `ma_kichco` int(11) NOT NULL,
  `tenkichco` varchar(15) NOT NULL,
  `gia` varchar(155) NOT NULL,
  `mota` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `ma_sp` int(11) NOT NULL,
  `tensp` varchar(255) NOT NULL,
  `gia` varchar(100) NOT NULL,
  `mota` text NOT NULL,
  `anhdaidiensp` varchar(255) NOT NULL,
  `danhmuc` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham_kichco`
--

CREATE TABLE `sanpham_kichco` (
  `ma_spkc` int(11) NOT NULL,
  `ma_sp` int(11) NOT NULL,
  `ma_kichco` int(11) NOT NULL,
  `tonkho` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `ma_tk` int(11) NOT NULL,
  `ten` varchar(55) NOT NULL,
  `email` varchar(100) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `vaitro` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`ma_tk`, `ten`, `email`, `matkhau`, `vaitro`) VALUES
(1, 'admin', 'admin@gmail.com', '123', 1),
(2, 'usertest', 'nghuyennhattu@icloud.com', '123', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanhtoan`
--

CREATE TABLE `thanhtoan` (
  `ma_thanhtoan` int(11) NOT NULL,
  `ma_donhang` int(11) NOT NULL,
  `ngaythanhtoan` datetime NOT NULL,
  `trangthaithanhtoan` varchar(155) NOT NULL,
  `qr` varchar(155) NOT NULL,
  `tennganhang` varchar(55) NOT NULL,
  `chutaikhoan` varchar(55) NOT NULL,
  `sotaikhoan` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tinnhan`
--

CREATE TABLE `tinnhan` (
  `ma_tinnhan` int(11) NOT NULL,
  `ma_cuoctrochuyen` int(11) NOT NULL,
  `ma_tk` int(11) NOT NULL,
  `noidungchu` text NOT NULL,
  `niodunganh` varchar(255) NOT NULL,
  `thoigian` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `anhsanpham`
--
ALTER TABLE `anhsanpham`
  ADD PRIMARY KEY (`ma_anhsp`),
  ADD KEY `fk_sp_asp` (`ma_sp`);

--
-- Chỉ mục cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`ma_chitietdonhang`),
  ADD KEY `fk_dh_ctdh` (`ma_donhang`),
  ADD KEY `fk_sp_ctdh` (`ma_sp`),
  ADD KEY `fk_kc_ctdh` (`ms_kichco`);

--
-- Chỉ mục cho bảng `cuoctrochuyen`
--
ALTER TABLE `cuoctrochuyen`
  ADD PRIMARY KEY (`ma_cuoctrochuyen`),
  ADD KEY `fk_client_ctc` (`ma_client`),
  ADD KEY `fk_admin_ctc` (`ma_admin`);

--
-- Chỉ mục cho bảng `diachi`
--
ALTER TABLE `diachi`
  ADD PRIMARY KEY (`ma_diachi`),
  ADD KEY `fk_tk_dc` (`ma_tk`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`ma_donhang`),
  ADD KEY `fk_tk_dh` (`ma_tk`),
  ADD KEY `fk_dc_dh` (`ma_diachi`);

--
-- Chỉ mục cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`ma_giohang`),
  ADD KEY `fk_tk_gh` (`ma_tk`),
  ADD KEY `fk_sp_gh` (`ma_sp`),
  ADD KEY `fk_kc_gh` (`ma_kichco`);

--
-- Chỉ mục cho bảng `kichco`
--
ALTER TABLE `kichco`
  ADD PRIMARY KEY (`ma_kichco`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`ma_sp`);

--
-- Chỉ mục cho bảng `sanpham_kichco`
--
ALTER TABLE `sanpham_kichco`
  ADD PRIMARY KEY (`ma_spkc`),
  ADD KEY `fk_kc_spkc` (`ma_kichco`),
  ADD KEY `fk_sp_spkc` (`ma_sp`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`ma_tk`);

--
-- Chỉ mục cho bảng `thanhtoan`
--
ALTER TABLE `thanhtoan`
  ADD PRIMARY KEY (`ma_thanhtoan`),
  ADD KEY `fk_dh_tt` (`ma_donhang`);

--
-- Chỉ mục cho bảng `tinnhan`
--
ALTER TABLE `tinnhan`
  ADD PRIMARY KEY (`ma_tinnhan`),
  ADD KEY `fk_tk_tn` (`ma_tk`),
  ADD KEY `fk_ctc_tn` (`ma_cuoctrochuyen`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `anhsanpham`
--
ALTER TABLE `anhsanpham`
  MODIFY `ma_anhsp` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `ma_chitietdonhang` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `cuoctrochuyen`
--
ALTER TABLE `cuoctrochuyen`
  MODIFY `ma_cuoctrochuyen` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `diachi`
--
ALTER TABLE `diachi`
  MODIFY `ma_diachi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `ma_donhang` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `giohang`
--
ALTER TABLE `giohang`
  MODIFY `ma_giohang` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `kichco`
--
ALTER TABLE `kichco`
  MODIFY `ma_kichco` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `ma_sp` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sanpham_kichco`
--
ALTER TABLE `sanpham_kichco`
  MODIFY `ma_spkc` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `ma_tk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `thanhtoan`
--
ALTER TABLE `thanhtoan`
  MODIFY `ma_thanhtoan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tinnhan`
--
ALTER TABLE `tinnhan`
  MODIFY `ma_tinnhan` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `anhsanpham`
--
ALTER TABLE `anhsanpham`
  ADD CONSTRAINT `fk_sp_asp` FOREIGN KEY (`ma_sp`) REFERENCES `sanpham` (`ma_sp`);

--
-- Các ràng buộc cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `fk_dh_ctdh` FOREIGN KEY (`ma_donhang`) REFERENCES `donhang` (`ma_donhang`),
  ADD CONSTRAINT `fk_kc_ctdh` FOREIGN KEY (`ms_kichco`) REFERENCES `kichco` (`ma_kichco`),
  ADD CONSTRAINT `fk_sp_ctdh` FOREIGN KEY (`ma_sp`) REFERENCES `sanpham` (`ma_sp`);

--
-- Các ràng buộc cho bảng `cuoctrochuyen`
--
ALTER TABLE `cuoctrochuyen`
  ADD CONSTRAINT `fk_admin_ctc` FOREIGN KEY (`ma_admin`) REFERENCES `taikhoan` (`ma_tk`),
  ADD CONSTRAINT `fk_client_ctc` FOREIGN KEY (`ma_client`) REFERENCES `taikhoan` (`ma_tk`);

--
-- Các ràng buộc cho bảng `diachi`
--
ALTER TABLE `diachi`
  ADD CONSTRAINT `fk_tk_dc` FOREIGN KEY (`ma_tk`) REFERENCES `taikhoan` (`ma_tk`);

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `fk_dc_dh` FOREIGN KEY (`ma_diachi`) REFERENCES `diachi` (`ma_diachi`),
  ADD CONSTRAINT `fk_tk_dh` FOREIGN KEY (`ma_tk`) REFERENCES `taikhoan` (`ma_tk`);

--
-- Các ràng buộc cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD CONSTRAINT `fk_kc_gh` FOREIGN KEY (`ma_kichco`) REFERENCES `kichco` (`ma_kichco`),
  ADD CONSTRAINT `fk_sp_gh` FOREIGN KEY (`ma_sp`) REFERENCES `sanpham` (`ma_sp`),
  ADD CONSTRAINT `fk_tk_gh` FOREIGN KEY (`ma_tk`) REFERENCES `taikhoan` (`ma_tk`);

--
-- Các ràng buộc cho bảng `sanpham_kichco`
--
ALTER TABLE `sanpham_kichco`
  ADD CONSTRAINT `fk_kc_spkc` FOREIGN KEY (`ma_kichco`) REFERENCES `kichco` (`ma_kichco`),
  ADD CONSTRAINT `fk_sp_spkc` FOREIGN KEY (`ma_sp`) REFERENCES `sanpham` (`ma_sp`);

--
-- Các ràng buộc cho bảng `thanhtoan`
--
ALTER TABLE `thanhtoan`
  ADD CONSTRAINT `fk_dh_tt` FOREIGN KEY (`ma_donhang`) REFERENCES `donhang` (`ma_donhang`);

--
-- Các ràng buộc cho bảng `tinnhan`
--
ALTER TABLE `tinnhan`
  ADD CONSTRAINT `fk_ctc_tn` FOREIGN KEY (`ma_cuoctrochuyen`) REFERENCES `cuoctrochuyen` (`ma_cuoctrochuyen`),
  ADD CONSTRAINT `fk_tk_tn` FOREIGN KEY (`ma_tk`) REFERENCES `taikhoan` (`ma_tk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
