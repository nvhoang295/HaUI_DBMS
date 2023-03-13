# Day 1

## Data types

### String
| String      | Length               | Unicode |
| ----------- | -------------------- | ------- |
| CHAR(n)     | len == n             |         |
| NCHAR(n)    | len == n             | Y       |
| VARCHAR(n)  | len <= n             |         |
| NVARCHAR(n) | len <= n             | Y       |
| NTEXT       | len <= 1,073,741,823 | Y       |
| TEXT        | len <= 2,147,483,647 |         |

### Integer
| Integer         | Range             |
| --------------- | ----------------- |
| INTEGER <=> INT | -2^31 -> 2^31 -1  |
| TINY INT        | 0 -> 255          |
| SMALLINT        | -2^15 -> 2^15 - 1 |
| BIGINT          | -2^63 -> 2^63 - 1 |

### Float point
| Float point                   | Range                       |
| ----------------------------- | --------------------------- |
| NUMERIC(p,s) <=> DECIMAL(p,s) |                             |
| FLOAT                         | -1.79E + 308 -> 1.79E + 308 |
| REAL                          | -3.40E + 38 -> 3.40E + 38   |

p = 10, s = 5; 123,45 -> 123,45000

### Date time
| Date time     | Precision          |
| ------------- | ------------------ |
| DATETIME      | phần trăm của giây |
| SMALLDATETIME | phút               |

### Binary
| Binary    | Fixed |
| --------- | ----- |
| BIT       |       |
| BINARY    | Y     |
| VARBINARY | N     |
| IMAGE     | N     |

### Money

MONEY

## Một vài quy tắc nhỏ
- Mã: == 10 character
- Tên: <= 20 character
- Thành phố: <= 20 character



## Tạo CSDL

Cú pháp:
```sql
CREATE DATABASE DatabaseName
```

Example:
```sql
CREATE DATABASE SINHVIEN
```

```sql
CREATE DATABASE QLUONG
```

## Tạo table

Tên table nên có tiền tố 'tbl'




## Practice

Bài 1: Tạo CSDL QLBH gồm 3 bảng:
- CongTy(MaCT, TenCT, TrangThai, ThanhPho)
- SanPham(MaSP, TenSP, MauSac, Gia, SoLuongCo)
- Cungung(MaCT, MaSP, SoLuongBan)

Thêm các ràng buộc vào các bảng trong CSDL Quản lý bán hàng:
- Bảng sản phẩm:
  - Màu sắc mặc định là màu đỏ
  - Tên sản phẩm phải là duy nhất
- Bảng cung ứng
  - Số lượng bán > 0

Một vài keyword thao tác:
- Tạo CSDL
- Tạo các bảng của csdl QLBH, set PK, tạo các ràng buộc cho bảng
- Liên kết bảng với Diagrams

Sample solution: