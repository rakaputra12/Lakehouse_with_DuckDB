--Durchschnittlicher Kaufbetrag pro Kunde

CREATE TABLE Gold_Customer_Average_Spend AS
SELECT 
    "Customer ID",
    AVG(PurchaseAmount) AS AveragePurchaseAmount
FROM Silver
GROUP BY "Customer ID";


--Top 5 Produkte und Kategorien

CREATE TABLE Gold_Top_Products AS
SELECT 
    "Item Purchased",
    Category,
    COUNT(*) AS PurchaseCount
FROM Silver
GROUP BY "Item Purchased", Category
ORDER BY PurchaseCount DESC
LIMIT 5;

--Durchschnittlicher Kaufbetrag für Abonnenten vs. Nicht-Abonnenten

CREATE TABLE Gold_Subscription_Comparison AS
SELECT 
    SubscriptionStatus,
    AVG(PurchaseAmount) AS AveragePurchaseAmount
FROM Silver
GROUP BY SubscriptionStatus;

