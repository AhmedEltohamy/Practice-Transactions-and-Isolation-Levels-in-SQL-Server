
-- Start Step 2

USE BobsShoes
GO

BEGIN TRAN;

UPDATE Orders.Orders 
SET OrderRequestedDate = '30000601'
WHERE OrderID = 1;

-- End Step 2

-- Start Step 4

ROLLBACK;

-- End Step 4