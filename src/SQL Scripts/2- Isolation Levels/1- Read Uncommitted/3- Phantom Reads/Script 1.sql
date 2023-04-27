
-- Start Step 2

USE BobsShoes;
GO

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

BEGIN TRAN;

    SELECT * FROM Orders.Orders;

-- End Step 2

-- Start Step 4

    SELECT * FROM Orders.Orders;

COMMIT;

-- End Step 4