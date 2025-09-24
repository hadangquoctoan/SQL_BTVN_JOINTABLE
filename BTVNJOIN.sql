--Liệt kê tất cả hóa đơn kèm tên khách hàng.
Select * from HOADON join KHACHHANG on HOADON.MAKH = KHACHHANG.MAKH

--Liệt kê tất cả hóa đơn kèm tên nhân viên lập hóa đơn.
Select * from HOADON join NHANVIEN  on HOADON.MANV = NHANVIEN.MANV 
--Liệt kê tất cả hóa đơn kèm tên khách hàng và tên nhân viên.
Select * 
from HOADON 
join KHACHHANG 
on HOADON.MAKH = KHACHHANG.MAKH 
join NHANVIEN 
on HOADON.MANV = NHANVIEN.MANV
--Liệt kê chi tiết hóa đơn: số hóa đơn, ngày hóa đơn, tên sản phẩm và số lượng.
Select
HOADON.SOHD, HOADON.NGHD,
SANPHAM.TENSP, CTHD.SL
from HOADON
join CTHD
on CTHD.SOHD = HOADON.SOHD
join SANPHAM
on SANPHAM.MASP = CTHD.MASP
--Liệt kê chi tiết hóa đơn: số hóa đơn, tên khách hàng, tên sản phẩm, số lượng, đơn giá.
SELECT
HOADON.SOHD, KHACHHANG.HOTEN,
SANPHAM.TENSP, CTHD.SL, SANPHAM.GIA
from HOADON
join CTHD
on CTHD.SOHD = HOADON.SOHD
join SANPHAM
ON SANPHAM.MASP = CTHD.MASP
join KHACHHANG
on KHACHHANG.MAKH = HOADON.MAKH
--Liệt kê tất cả khách hàng và các hóa đơn của họ (kể cả khách hàng chưa mua gì).
Select * from KHACHHANG
Select * from HOADON
SELECT *
from KHACHHANG left join HOADON on KHACHHANG.MAKH = HOADON.MAKH
--Liệt kê tất cả sản phẩm và các hóa đơn đã bán ra (kể cả sản phẩm chưa bán).
SELECT 
SANPHAM.TENSP, SANPHAM.MASP, HOADON.SOHD, HOADON.NGHD, HOADON.TRIGIA
from SANPHAM
left join CTHD on SANPHAM.MASP = CTHD.MASP
left join HOADON on HOADON.SOHD = CTHD.SOHD
--Liệt kê khách hàng và số hóa đơn mà họ đã lập (chỉ hiện số hóa đơn, chưa cần đếm).
SELECT 
KHACHHANG.MAKH, KHACHHANG.HOTEN, KHACHHANG.DCHI, KHACHHANG.SODT, KHACHHANG.NGSINH,
HOADON.SOHD
from KHACHHANG
left join HOADON on KHACHHANG.MAKH = HOADON.MAKH
--Liệt kê danh sách nhân viên cùng các hóa đơn mà họ lập.
SELECT
NHANVIEN.HOTEN, NHANVIEN.MANV, HOADON.SOHD, HOADON.NGHD, HOADON.MAKH, HOADON.MANV,HOADON.TRIGIA
from NHANVIEN
left join HOADON on NHANVIEN.MANV = HOADON.MANV

--Liệt kê tất cả sản phẩm và thông tin chi tiết (mã hóa đơn, ngày hóa đơn, số lượng) nếu có.
SELECT * from
HOADON right join CTHD on CTHD.SOHD = HOADON.SOHD
right join SANPHAM on SANPHAM.MASP = CTHD.MASP