select * from [xomdata_dataset].[retails].[customers]
select * from [xomdata_dataset].[retails].[products]
select * from [xomdata_dataset].[retails].[sales]
select * from [xomdata_dataset].[retails].[stores]

--Q1: Em ơi, tổng hợp nhanh giúp anh: năm 2021 mình bán được bao nhiêu đơn hàng trên toàn chain? Anh cần con số này cho slide đầu tiên của bài thuyết trình sáng mai. 1 số thôi, không cần chi tiết.
select count(distinct product_key) as N'Số đơn hàng bán được' from [xomdata_dataset].[retails].[sales]
where year(order_date) = 2021

--Q2: Em liệt kê giúp chị toàn bộ category sản phẩm mình đang bán, kèm số SKU trong mỗi category. Chị cần để làm product mix overview cho slide marketing. Sắp theo alphabet.
select category, count(distinct product_key) as N'Số SKU'
from [xomdata_dataset].[retails].[products]
group by category
order by category


--Q3: Anh cần top 10 thành phố có nhiều khách hàng nhất để team CRM chọn địa điểm tổ chức event tri ân. Gửi anh: tên city, state, country, và số lượng customer.
select top(10) city, state, country, count(*) as so_luong_khach_hang
from [xomdata_dataset].[retails].[customers]
group by  city, state, country
order by so_luong_khach_hang desc