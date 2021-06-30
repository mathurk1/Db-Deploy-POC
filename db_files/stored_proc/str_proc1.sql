/** MSSQL Stored Proc **/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[str_proc1]
AS
BEGIN
SET NOCOUNT ON
 
    insert into dbo.test_table_new
    select * 
    from dbo.test_table
 
END
GO
