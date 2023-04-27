USE BobsShoes;
GO

BEGIN TRANSACTION

    SELECT @@TRANCOUNT AS TranCount_AfterBegin
    SELECT * FROM Orders.CityState;

COMMIT
-- ROLLBACK
SELECT @@TRANCOUNT AS TranCount_AfterCommit

GO