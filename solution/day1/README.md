Tạo CSDL QLBH gồm 3 bảng: 
- **CongTy**(**<u>MaCT</u>**, TenCT, TrangThai, ThanhPho)
- SanPham(**<u>MaSP</u>**, TenSP, MauSac, Gia, SoLuongCo)
- CungUng(**<u>MaCT</u>**, **<u>MaSP</u>**, SoLuongBan)

Thêm các ràng buộc vào các bảng trong CSDL Quản lý bán hàng:
- Bảng sản phẩm:
  - Màu sắc mặc định là màu đỏ
  - Tên sản phẩm phải là duy nhất
- Bảng cung ứng
  - Số lượng bán > 0