USE BobsShoes;
GO
 
SELECT 
    IIF(@@OPTIONS & 2 = 2, 
    'Implicit Transaction Mode ON', 
    'Implicit Transaction Mode OFF'
    ) AS 'Transaction Mode' 

SET IMPLICIT_TRANSACTIONS ON

SELECT @@TRANCOUNT AS TranCount

SELECT * FROM Orders.CityState

SELECT @@TRANCOUNT AS TranCount

COMMIT

SELECT @@TRANCOUNT AS TranCount

SET IMPLICIT_TRANSACTIONS OFF

SELECT 
    IIF(@@OPTIONS & 2 = 2, 
    'Implicit Transaction Mode ON', 
    'Implicit Transaction Mode OFF'
    ) AS 'Transaction Mode' 

GO
