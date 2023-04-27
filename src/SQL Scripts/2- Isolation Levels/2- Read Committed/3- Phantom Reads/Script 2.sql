
-- Start Step 1

USE BobsShoes;
GO

BEGIN TRAN;

INSERT INTO Orders.Orders (
  OrderYear, OrderDate, OrderRequestedDate, CustID)
    VALUES (2019, '20190701', '20190808', 2);

	select * from Orders.Orders
-- End Step 1

-- Start Step 3

ROLLBACK;    

-- End Step 3