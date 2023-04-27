
SELECT 
    IIF(@@OPTIONS & 2 = 2, 
    'Implicit Transaction Mode ON', 
    'Implicit Transaction Mode OFF'
    ) AS 'Transaction Mode' 

---------------------------------------------------------------

SET IMPLICIT_TRANSACTIONS ON -- {ON | OF} 

---------------------------------------------------------------

SET LOCK_TIMEOUT -1 --WAIT FOREVER

---------------------------------------------------------------

SELECT 
    CASE transaction_isolation_level 
        WHEN 0 THEN 'Unspecified' 
        WHEN 1 THEN 'ReadUncommitted' 
        WHEN 2 THEN 'ReadCommitted' 
        WHEN 3 THEN 'Repeatable' 
        WHEN 4 THEN 'Serializable' 
        WHEN 5 THEN 'Snapshot' 
    END AS TRANSACTION_ISOLATION_LEVEL 
FROM sys.dm_exec_sessions 
where session_id = @@SPID;

---------------------------------------------------------------
-- Enable RCSI
ALTER DATABASE BobsShoes SET READ_COMMITTED_SNAPSHOT ON -- {ON | OFF}

---------------------------------------------------------------
-- Show snapshot settings

SELECT DB_NAME(database_id), 
    is_read_committed_snapshot_on,
    snapshot_isolation_state_desc 
    
FROM sys.databases
WHERE database_id = DB_ID()

---------------------------------------------------------------
-- Permit snapshot isolation 
ALTER DATABASE BobsShoes SET ALLOW_SNAPSHOT_ISOLATION OFF -- {ON | OFF}
