CREATE PROCEDURE [dbo].[str_proc1]
AS
BEGIN
SET NOCOUNT ON
 
    insert into dbo.test_table_new
    select * 
    from dbo.test_table;
    
    -- add select current date time
    SELECT getdate();
 
END
GO
