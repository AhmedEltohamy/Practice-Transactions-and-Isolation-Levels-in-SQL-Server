
-- Start Step 1

USE BobsShoes;
GO

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

BEGIN TRAN;

-- End Step 1

-- Start Step 3

    SELECT * FROM Orders.Orders;

-- End Step 3

-- Start Step 5

    SELECT * FROM Orders.Orders;

COMMIT;

-- End Step 5
