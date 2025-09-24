--------------------BTVN---------------------
Select * from KHACHHANG
Select TENSP, GIA from SANPHAM
select HOTEN, SODT from NHANVIEN
Select SOHD, NGHD from HOADON where MAKH = 'KH01'
Select * from SANPHAM where NUOCSX = 'VN' and GIA < 50000
Select * from HOADON where NGHD >= '2022-01-01' AND NGHD < '2022-12-31'
Select * from KHACHHANG where HOTEN like 'Nguyen%'
Select * from HOADON where TRIGIA > 1000000
Select * from KHACHHANG where YEAR(NGSINH) = 2000
Select * from NHANVIEN where YEAR(NGVL) = 2020
Select distinct MAKH from HOADON
Select * from SANPHAM where GIA >= 20000 and GIA <= 100000
Select * from KHACHHANG order by DOANHSO DESC
Select * from HOADON where NGHD between dateadd(day, -7,getdate()) and getdate()