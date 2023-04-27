USE BobsShoes
GO
-- Start Step 1

SET TRANSACTION ISOLATION LEVEL READ COMMITTED

BEGIN TRAN;
    -- Before updating
    SELECT * FROM Orders.Orders;

-- End Step 1

-- Start Step 3

    -- After the update
    SELECT * FROM Orders.Orders;
COMMIT;

-- End Step 3