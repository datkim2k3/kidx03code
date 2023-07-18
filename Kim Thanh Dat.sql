create database QUANLYNHANVIEN
use QUANLYNHANVIEN
drop table if exists Nhanvien
drop table if exists Phongban
drop table if exists Chucvu
create table Chucvu
(
	macv char(6) not null,
	tencv nvarchar(50) not null unique,
	phucapcv money default 300,
	primary key (macv),
	constraint ck_macv check ( macv like '[a-z][a-z]')
)

create table Phongban
(
	mapb char(6) not null,
	tenpb nvarchar(50) not null unique,
	nguoiquanly nvarchar(50) not null,
	primary key (mapb),
	constraint ck_mapb  check ( mapb like '[a-z][a-z]')
)

create table Nhanvien
(
	manv varchar(6) not null,
	hoten nvarchar(50) not null,
	ngaysinh date not null,
	gioitinh bit not null,
	sdt nvarchar(10) not null,
	diachi nvarchar(50) not null,
	luongchinh money default 500,
	macv char(6) not null,
	mapb char(6) not null,
	primary key (manv),
	foreign key (macv) references Chucvu(macv),
	foreign key (mapb) references Phongban(mapb),
	constraint ck_manv  check ( manv like 'NV[0-9][0-9][0-9]')
)

-- CAU 5 --
INSERT INTO Chucvu(macv,tencv)
VALUES ('NV','Nhan Vien')
INSERT INTO Chucvu(macv,tencv)
VALUES ('TT','To Truong')
INSERT INTO Chucvu(macv,tencv)
VALUES ('TP','Truong Phong')
INSERT INTO Chucvu(macv,tencv)
VALUES ('QL','Quan Ly')


INSERT INTO Phongban(mapb,tenpb,nguoiquanly)
VALUES ('KT','Ky Thuat','Kim Thanh Dat')
INSERT INTO Phongban(mapb,tenpb,nguoiquanly)
VALUES ('TS','Kiem Tra','Nguyen Huu Tu')
INSERT INTO Phongban(mapb,tenpb,nguoiquanly)
VALUES ('BH','Bao Hanh','Ho Minh Phuc')
INSERT INTO Phongban(mapb,tenpb,nguoiquanly)
VALUES ('CL','Ban Hang','Dao Thi Hoa')
INSERT INTO Phongban(mapb,tenpb,nguoiquanly)
VALUES ('GH','Giao Hang','Tran Quoc Hien')


insert into Nhanvien(manv,hoten,ngaysinh,gioitinh,sdt,diachi,macv,mapb)
values('NV001','Kim Thanh Dat','11/02/2003','1','0966274496','Tra Vinh','QL','KT')
insert into Nhanvien(manv,hoten,ngaysinh,gioitinh,sdt,diachi,macv,mapb)
values('NV002','Nguyen Huu Tu','12/21/1995','1','0568324569','Binh Duong','QL','TS')
insert into Nhanvien(manv,hoten,ngaysinh,gioitinh,sdt,diachi,macv,mapb)
values('NV003','Tran Quoc Hien','11/14/2001','1','0261534156','Dong Nai','QL','GH')
insert into Nhanvien(manv,hoten,ngaysinh,gioitinh,sdt,diachi,macv,mapb)
values('NV004','Ho Minh Phuc','07/02/2002','1','0756253487','Dong Thap','QL','BH')
insert into Nhanvien(manv,hoten,ngaysinh,gioitinh,sdt,diachi,macv,mapb)
values('NV005','Dao Thi Hoa','11/05/1999','0','0253652145','Tay Ninh','QL','CL')
insert into Nhanvien(manv,hoten,ngaysinh,gioitinh,sdt,diachi,macv,mapb)
values('NV006','Nguyen Thi Tram','02/23/1997','0','0432142567','Ben Tre','TP','CL')
insert into Nhanvien(manv,hoten,ngaysinh,gioitinh,sdt,diachi,macv,mapb)
values('NV007','Bui Xuan Tuan','07/23/2000','1','0468235125','Sai Gon','NV','KT')
insert into Nhanvien(manv,hoten,ngaysinh,gioitinh,sdt,diachi,macv,mapb)
values('NV008','Tran Hoai An','02/15/2001','0','0351242269','Ha Noi','TT','BH')
insert into Nhanvien(manv,hoten,ngaysinh,gioitinh,sdt,diachi,macv,mapb)
values('NV009','Nguyen Minh Long','08/11/2003','1','0966845526','Da Nang','NV','KT')
insert into Nhanvien(manv,hoten,ngaysinh,gioitinh,sdt,diachi,macv,mapb)
values('NV010','Le Do Huy Bach','01/09/2002','1','0688452693','Binh Phuoc','NV','KT')



-- CÂU 6 --
SELECT manv, hoten, ngaysinh, gioitinh, sdt, diachi,format (luongchinh,'c','vi-VN') as luongchinh, tencv, tenpb FROM NhanVien, Chucvu, Phongban
where chucvu.tencv = 'Nhan Vien' and phongban.tenpb = 'Ky Thuat' and Nhanvien.macv = Chucvu.macv and Nhanvien.mapb = Phongban.mapb


-- CÂU 7 --
select hoten, ngaysinh, tencv, tenpb, format (luongchinh,'c','vi-VN')as luongchinh, format (phucapcv,'c','vi-VN')as phucapcv,  format(([luongchinh]+[phucapcv]),'c','vi-VN')  as thuclanh from Chucvu, Phongban, Nhanvien 
where Nhanvien.macv = Chucvu.macv and Nhanvien.mapb = Phongban.mapb


-- CÂU 8 --
							-- Tổng lương của toàn Công ty --
select format(sum([luongchinh]+[phucapcv]),'c','vi-VN') as N'Tổng lương của toàn công ty' from Chucvu, Phongban, Nhanvien
where Nhanvien.macv = Chucvu.macv and Nhanvien.mapb = Phongban.mapb


							-- Tổng lương của từng Phòng ban --
select format(sum([luongchinh]+[phucapcv]),'c','vi-VN') as N'Tổng lương của phòng ban kỹ thuật' from Chucvu, Phongban, Nhanvien
where Nhanvien.macv = Chucvu.macv and Nhanvien.mapb = Phongban.mapb and Phongban.mapb = 'KT'
select format(sum([luongchinh]+[phucapcv]),'c','vi-VN') as N'Tổng lương của phòng ban Kiểm Tra' from Chucvu, Phongban, Nhanvien
where Nhanvien.macv = Chucvu.macv and Nhanvien.mapb = Phongban.mapb and Phongban.mapb = 'TS'
select format(sum([luongchinh]+[phucapcv]),'c','vi-VN') as N'Tổng lương của phòng ban Bảo Hành' from Chucvu, Phongban, Nhanvien
where Nhanvien.macv = Chucvu.macv and Nhanvien.mapb = Phongban.mapb and Phongban.mapb = 'BH'
select format(sum([luongchinh]+[phucapcv]),'c','vi-VN') as N'Tổng lương của phòng ban Bán Hàng' from Chucvu, Phongban, Nhanvien
where Nhanvien.macv = Chucvu.macv and Nhanvien.mapb = Phongban.mapb and Phongban.mapb = 'CL'
select format(sum([luongchinh]+[phucapcv]),'c','vi-VN') as N'Tổng lương của phòng ban Giao Hàng' from Chucvu, Phongban, Nhanvien
where Nhanvien.macv = Chucvu.macv and Nhanvien.mapb = Phongban.mapb and Phongban.mapb = 'GH'


							-- Tổng lương của từng chức vụ --
select format(sum([luongchinh]+[phucapcv]),'c','vi-VN') as N'Tổng lương của chức vụ Nhân viên' from Chucvu, Phongban, Nhanvien
where Nhanvien.macv = Chucvu.macv and Nhanvien.mapb = Phongban.mapb and Chucvu.macv = 'NV'
select format(sum([luongchinh]+[phucapcv]),'c','vi-VN') as N'Tổng lương của chức vụ Tổ Trưởng' from Chucvu, Phongban, Nhanvien
where Nhanvien.macv = Chucvu.macv and Nhanvien.mapb = Phongban.mapb and Chucvu.macv = 'TT'
select format(sum([luongchinh]+[phucapcv]),'c','vi-VN') as N'Tổng lương của chức vụ Trưởng Phòng' from Chucvu, Phongban, Nhanvien
where Nhanvien.macv = Chucvu.macv and Nhanvien.mapb = Phongban.mapb and Chucvu.macv = 'TP'
select format(sum([luongchinh]+[phucapcv]),'c','vi-VN') as N'Tổng lương của chức vụ Quản Lý' from Chucvu, Phongban, Nhanvien
where Nhanvien.macv = Chucvu.macv and Nhanvien.mapb = Phongban.mapb and Chucvu.macv = 'QL'


-- CÂU 9 --
SELECT nguoiquanly, tencv, tenpb, ngaysinh, Gioitinh, sdt, diachi  FROM Phongban , Nhanvien, Chucvu
where Nhanvien.macv = Chucvu.macv and Nhanvien.mapb = Phongban.mapb and chucvu.tencv = 'Quan Ly'
