CREATE TABLE Silver AS
SELECT 
    "Customer ID",  
    CAST(AGE AS INTEGER) AS Age,
    Gender,
    "Item Purchased",
    Category,
    CAST("Purchase Amount (USD)" AS DECIMAL) AS PurchaseAmount,  
    Location,
    Size,
    Color,
    Season,
    CASE 
        WHEN "Review Rating" IS NULL THEN 0 
        ELSE CAST("Review Rating" AS INTEGER) 
    END AS ReviewRating,
    CASE 
        WHEN "Subscription Status" = 'Yes' THEN TRUE 
        ELSE FALSE 
    END AS SubscriptionStatus,
    "Shipping Type",
    "Discount Applied",
    "Promo Code Used",
    CAST("Previous Purchases" AS INTEGER) AS PreviousPurchases,
    "Payment Method",
    "Frequency of Purchases"
FROM Bronze
WHERE "Customer ID" IS NOT NULL AND "Purchase Amount (USD)" > 0;
