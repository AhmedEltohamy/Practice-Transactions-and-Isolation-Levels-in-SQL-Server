
-- Start Step 2

USE BobsShoes;
GO

BEGIN TRAN;
    UPDATE Orders.Orders 
    SET OrderRequestedDate = '30000101'
    WHERE OrderID = 1;
COMMIT;

-- End Step 2

-- Restore previous order requested date

-- Start Step 4

BEGIN TRAN;
    UPDATE Orders.Orders 
    SET OrderRequestedDate = '20190601'
    WHERE OrderID = 1;
COMMIT;

-- End Step 4
