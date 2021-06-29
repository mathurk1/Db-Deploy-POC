--liquibase formatted sql

--changeset liquibaseadmin:1
--Database: mssql
CREATE schema client1;

--changeset liquibaseadmin:2
CREATE VIEW client1.sample_view AS
SELECT *
FROM dbo.test_table;

