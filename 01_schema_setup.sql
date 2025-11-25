-- Create database
CREATE DATABASE MedicalAppAnalytics;
GO

USE MedicalAppAnalytics;
GO

-- Users table
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    signup_date DATE,
    city VARCHAR(50),
    device VARCHAR(50)
);

-- Feature events table
CREATE TABLE feature_events (
    event_id INT PRIMARY KEY,
    user_id INT,
    event_date DATETIME,
    feature_name VARCHAR(50),
    event_type VARCHAR(50),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- Subscriptions table
CREATE TABLE subscriptions (
    subscription_id INT PRIMARY KEY,
    user_id INT,
    start_date DATE,
    end_date DATE,
    user_plan VARCHAR(50),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- Sessions table
CREATE TABLE sessions (
    session_id INT PRIMARY KEY,
    user_id INT,
    session_start DATETIME,
    session_end DATETIME,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);
