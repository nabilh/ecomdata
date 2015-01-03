--
-- looks like derby does not use passwords to connect to a database
-- Probably uses the password when trying to access a specific schema that
-- has a password.
--
-- This script connects to the database created by MyEclipse and 
-- started when MyEclipse starts.
--
-- Database name is MyEclipse. One schema 'classiccars' is defined out of the box.
-- Another schema 'ecommerce' is defined without a password.
-- password for myeclipse database is defined as 'myeclipse'
-- No password defined for the ecommerce schema
-- 
connect 'jdbc:derby://localhost:1527/myeclipse';
set schema ecommerce;
show tables in ecommerce;
describe customer;
select * from customer;

