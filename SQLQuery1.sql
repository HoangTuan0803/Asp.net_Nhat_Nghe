﻿--Tạo CSDL
CREATE DATABASE Mvc5;
--Chọn CSDL làm việc
USE Mvc5;
--Tạo bảng
CREATE TABLE Loai
(
	MaLoai NVARCHAR(5) NOT NULL,
	TenLoai NVARCHAR(50) NOT NULL,
	PRIMARY KEY(MaLoai)
);
CREATE TABLE HangHoa
(
	MaHH NVARCHAR(5) NOT NULL,
	TenHH NVARCHAR(50) NOT NULL,
	DonGia FLOAT DEFAULT 0,
	MaLoai NVARCHAR(5) NOT NULL,
	PRIMARY KEY(MaHH),
	FOREIGN KEY(MaLoai) REFERENCES Loai(MaLoai)
		ON DELETE CASCADE ON UPDATE CASCADE,
	UNIQUE (TenHH)
);

--Sao lưu CSDL
BACKUP DATABASE Mvc5
	TO DISK='c:/temp/Mvc5.bak';
	
--Xóa CSDL
USE master;
DROP DATABASE Mvc5;

--Phục hồi CSDL
RESTORE DATABASE Mvc5
	FROM DISK='c:/temp/Mvc5.bak'