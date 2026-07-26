SELECT * FROM [xomdata_dataset].[banking].[cards]
SELECT * FROM [xomdata_dataset].[banking].[mcc_codes]
SELECT * FROM [xomdata_dataset].[banking].[users]
SELECT * FROM [xomdata_dataset].[banking].[transactions]
---------------------CAU HOI---------------------
-- Q1. Em cho anh tổng số giao dịch thẻ của Xóm Bank trong năm 2019 — 1 con số. Anh cần cho slide annual review.
SELECT COUNT(*) AS N'TỔNG SỐ GIAO DỊCH THẺ' 
FROM [banking].[transactions] 
WHERE DATE >= '2019-1-1' AND DATE < '2020-1-1'

-- Q2. Chị cần top 5 thành phố merchant có nhiều giao dịch nhất + tổng số tiền giao dịch ở đó. Để team marketing chọn địa điểm chạy campaign thẻ mới.
SELECT TOP (5) MERCHANT_CITY, MERCHANT_STATE, SUM(AMOUNT) AS N'TỔNG SỐ TIỀN GIAO DỊCH' 
FROM [banking].[transactions]
WHERE MERCHANT_CITY IS NOT NULL
GROUP BY MERCHANT_CITY, MERCHANT_STATE 
ORDER BY N'TỔNG SỐ TIỀN GIAO DỊCH' DESC

-- Q3. Em cho anh phân phối khách theo credit score chia 5 nhóm: dưới 580 (poor), 580-669 (fair), 670-739 (good), 740-799 (very good), 800+ (excellent). Cần để đánh giá chất lượng portfolio khách.
WITH CreditScoreGroups AS
(
	SELECT 
		CASE 
			WHEN credit_score >= 800 THEN 'Excellent'
			WHEN credit_score BETWEEN 740 AND 799 THEN 'Very good'
			WHEN credit_score BETWEEN 670 AND 739 THEN 'Good'
			WHEN credit_score BETWEEN 580 AND 669 THEN 'Fair'
			WHEN credit_score < 580 THEN 'Poor'
			ELSE 'Unknow'
		END AS credit_rating
	FROM [banking].[users]
)
SELECT credit_rating AS N'Nhóm tín dụng',
	COUNT(*) AS N'Số khách hàng'
FROM CreditScoreGroups
GROUP BY credit_rating
ORDER BY
	CASE credit_rating
		WHEN 'Excellent' THEN 1
		WHEN 'Very good' THEN 2
		WHEN 'Good' THEN 3
		WHEN 'Fair' THEN 4
		WHEN 'Poor' THEN 5
		ELSE 6
	END