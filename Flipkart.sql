CREATE DATABASE flipkarts;
USE flipkarts;
SELECT * FROM mobiles;
SELECT Brand,
SUM(CASE WHEN MRP BETWEEN 0 AND 9999 THEN 1 ELSE 0 END) AS 'Price Below 10k',
sUM(CASE WHEN MRP BETWEEN 10000 AND 19999 THEN 1 ELSE 0 END) AS 'Price Below 10-20k',
sUM(CASE WHEN MRP BETWEEN 20000 AND 39999 THEN 1 ELSE 0 END) AS 'Price Below 20-40k',
SUM(CASE WHEN MRP >= 40000 THEN 1 ELSE 0 END) AS 'Price Above 40k'
FROM mobiles
GROUP BY Brand
ORDER BY Brand;
SELECT Brand,
MAX(MRP-MSP) AS MaxDiscount
FROM mobiles
GROUP BY Brand
ORDER BY MaxDiscount DESC
LIMIT 1;
SELECT Brand,
AVG(Ratings) AS Avg_Rating
FROM mobiles
GROUP BY Brand
ORDER BY Avg_Rating DESC
LIMIT 5;
SELECT Brand,
SUM(No_of_reviews) AS Total_Reviews
FROM mobiles
GROUP BY Brand
ORDER BY Total_Reviews DESC
LIMIT 5;
SELECT * FROM mobiles
WHERE Ratings > 4.5;
SELECT * FROM mobiles
WHERE Discount > 40;
SELECT Brand, 
AVG(Ratings) AS Avg_Rating,
SUM(No_of_reviews) AS Total_Reviews
FROM mobiles
GROUP BY Brand
ORDER BY Avg_Rating DESC;
SELECT * FROM mobiles
ORDER BY Discount DESC
LIMIT 5;
SELECT DISTINCT Brand
FROM mobiles;

