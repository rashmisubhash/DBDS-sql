USE userdb;
DROP TABLE IF EXISTS userdb.member;

-- Create the database
CREATE DATABASE IF NOT EXISTS userdb;
USE userdb;

-- Create the member table
CREATE TABLE IF NOT EXISTS member (
    uname VARCHAR(50) NOT NULL PRIMARY KEY,    -- Username, used as primary key
    password VARCHAR(255) NOT NULL,            -- Password (consider hashing it for security)
    email VARCHAR(100) NOT NULL UNIQUE,        -- Email, must be unique
    first_name VARCHAR(50) NOT NULL,           -- First name of the user
    last_name VARCHAR(50) NOT NULL,             -- Last name of the user
    user_type ENUM('customer', 'admin', 'customer_rep') NOT NULL  -- User type (customer, admin, or customer rep)
);

