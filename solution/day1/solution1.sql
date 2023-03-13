-- Step 1: Chuyen sang CSDL Master
USE MASTER
GO

-- Step 2
CREATE DATABASE QLBH
ON PRIMARY(
    name = 'QLBH_dat',
    filename = 'D:\Data\QLBH.mdf',
    size = 10MB,
    maxsize = 100MB,
    filegrowth = 10MB
)

-- FILE LOG THÌ COPY LẠI PHẦN BÊN TRONG ON PRIMARY RỒI SỬA LẠI MỘT CHÚT
LOG ON(
    name = 'QLBH_log',
    filename = 'D:\Data\QLBH.ldf',
    size = 1MB,
    maxsize = 5MB,
    filegrowth = 20%
)

-- Step 3: Chuyen sang csdl hien hanh: QLBH
GO
USE QLBH
GO

-- Step 4: Tao cac bang du lieu vao trong CSDL QLBH
CREATE TABLE CongTy(
	MaCT NCHAR(10) NOT NULL PRIMARY KEY,
	TenCT NVARCHAR(20) NOT NULL,
	TrangThai nchar(10),
	ThanhPho nvarchar(20)
)

CREATE TABLE SanPham(
	MaSP NCHAR(10) NOT NULL PRIMARY KEY,
	TenSP NVARCHAR(20), 
	MauSac NCHAR(10) DEFAULT N'Đỏ',
	Gia MONEY,
	SoLuongCo int,

	CONSTRAINT unique_TenSP unique(TenSP)
)

CREATE TABLE Cungung(
	MaCT NCHAR(10) NOT NULL,
	MaSP NCHAR(10) NOT NULL,
	SoLuongBan int,

	CONSTRAINT PK_CungUng PRIMARY KEY(MaCT, MaSP),
	CONSTRAINT chk_SoLuongBan check(SoLuongBan > 0),

	-- Lien ket diagram
	CONSTRAINT FK_CungUng_SanPham FOREIGN KEY(MaSP)
		REFERENCES SanPham(MaSP),
	CONSTRAINT FK_CungUng_CongTy FOREIGN KEY(MaCT)
		REFERENCES CongTy(MaCT),
)