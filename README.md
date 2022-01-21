# 29TranGiaNguyen18133036DAHP.DWH_LTNN.CayTrong
Mô hình kho dữ liệu cây trồng nông nghiệp toàn cầu khai thác sử dụng tại các cơ quan quản lý và kinh doanh lương thực và nông nghiệp
# Quá trình tạo kho dữ liệu cây trồng
- Trích xuất dữ liệu.  
- Làm sạch dữ liệu.  
- Lọc và chuyển đổi dữ liệu.  
- Lưu trữ dữ liệu theo cấu trúc (sắp xếp, hợp nhất và tổng hợp,...)

# Dữ liệu nguồn
Dữ liệu nguồn là FAOSTAT, được lấy ở tổ chức Lương thực và Nông nghiệp Liên Hợp Quốc
# Xác định các Dim và Fact của DWH phân hệ Cây trồng
![image](https://user-images.githubusercontent.com/75612224/150454522-4d2d41c2-24b9-4473-a7ed-0270640bd2a0.png)  
Xác định các Dim và Fact:  
- Fact:  
•	FactThongKe=SUM(Measurement.measurement_value) : tính tổng sản lượng từng loại cây trồng  
- Dim:  
•	DimItem: Loại cây trồng  
•	DimElement: Loại đơn vị  
•	DimYear: Năm (năm trùng mã năm)  
•	DimCountry: Quốc gia  
# Thiết lập các Views tính toán cần thiết để nạp dữ liệu từ DB gốc vào các Factors của phân hệ DWH  
(FAOSTAT_CayTrong_DWH.sql)
# Triển khai phân hệ DWH lên BIDS  
(FAOSTAT_CayTrong.sln)
