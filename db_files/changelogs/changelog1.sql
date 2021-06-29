--liquibase formatted sql

--changeset liquibaseadmin:1
--Database: mssql
CREATE TABLE test_table (test_id INT, test_column VARCHAR, PRIMARY KEY (test_id)

--changeset liquibaseadmin:2
--Database: mssql
INSERT INTO test_table VALUES (1, 'a');
INSERT INTO test_table VALUES (2, 'b');


--changeset liquibaseadmin:3
--Database: msssql
CREATE TABLE test_table_new (test_id INT, test_column VARCHAR(10), PRIMARY KEY (test_id))

--changeset liquibaseadmin:4
ALTER TABLE test_table ALTER COLUMN test_column VARCHAR(10);