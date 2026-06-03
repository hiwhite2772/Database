SELECT TOP (1000) [transaction_id]
      ,[transaction_date]
      ,[transaction_time]
      ,[transaction_qty]
      ,[store_id]
      ,[store_location]
      ,[product_id]
      ,[unit_price]
      ,[product_category]
      ,[product_type]
      ,[product_detail]
  FROM [xomdata_dataset].[coffee_shop].[transactions];

SELECT TOP(1000) * FROM [xomdata_dataset].[coffee_shop].[transactions] ORDER BY [transaction_id] DESC;

-- Q1: Em cho anh tổng doanh thu 6 tháng qua — 1 con số. Anh cần cho review họp thứ 2.
SELECT SUM([transaction_qty]*[unit_price]) AS N'Tổng doanh thu 6 tháng qua' 
FROM [xomdata_dataset].[coffee_shop].[transactions] WHERE [transaction_date] >= DATEADD(MONTH, -6, '2025-06-30');

-- Q2: Chị cần tổng số giao dịch (không phải line item) tại mỗi store trong 6 tháng. Để so sánh volume 3 chi nhánh.
SELECT store_location, COUNT(DISTINCT transaction_id) AS N'Tổng số giao dịch'
FROM [xomdata_dataset].[coffee_shop].[transactions] GROUP BY store_location;

-- Q3: Em cho anh top 10 sản phẩm bán chạy nhất theo số lượng. Để quyết định reorder ưu tiên.
SELECT TOP(10) product_category, sum(transaction_qty) AS tong_so_luong_ban
FROM [xomdata_dataset].[coffee_shop].[transactions] GROUP BY product_category ORDER BY tong_so_luong_ban DESC;

-- Q4: Chị cần doanh thu tổng theo từng category sản phẩm (Coffee, Tea, Bakery, Drinking Chocolate...). Sắp giảm dần.
SELECT product_category, SUM(transaction_qty * unit_price) AS tong_doanh_thu_theo_category 
FROM [xomdata_dataset].[coffee_shop].[transactions] GROUP BY product_category ORDER BY tong_doanh_thu_theo_category DESC;

-- Q5: Em cho anh đơn giá trung bình của từng category để đánh giá category nào high-ticket.
SELECT product_category, AVG(unit_price) 
AS gia_trung_binh FROM [xomdata_dataset].[coffee_shop].[transactions] GROUP BY product_category;