
-- Start Step 1

USE BobsShoes;
GO

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE

BEGIN TRAN;

    SELECT * FROM Orders.Orders;

-- End Step 1

-- Start Step 3

    SELECT * FROM Orders.Orders;

COMMIT;

-- End Step 3
