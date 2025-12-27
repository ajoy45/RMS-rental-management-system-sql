# Vehicle Booking Management System (SQL Project)
## Project Overview
This project demonstrates a relational database design and SQL querying approach for a Vehicle Booking Management System.
The system manages users, vehicles, and bookings, and provides analytical queries to retrieve meaningful business information such as booking history, availability, and usage statistics.

The primary objective of this project is to practice SQL JOINs, subqueries, aggregation, filtering, and EXISTS/NOT EXISTS logic in a real-world–inspired scenario.
# Database Schema
The project consists of the following core tables:
# 1. users table
Key columns:
user_id (Primary Key),
name,
email,
phone,
role (Customer / Admin)

# 2.vehicles table
Key columns:
vehicle_id (Primary Key),
name
type (car, bike, truck)
model,
registration_number,
rental_price,
status (available, rented, maintenance)

# 3. bookings
Key columns:
booking_id (Primary Key),
user_id (Foreign Key → users),
vehicle_id (Foreign Key → vehicles),
start_date,
end_date,
status,
total_cost,
# Implemented SQL Queries
# 1. Retrieve Booking Information with Customer and Vehicle Names

This query retrieves complete booking details along with the customer name and vehicle name using INNER JOIN.

Concepts used:

INNER JOIN

Table aliasing

Foreign key relationships

Use case:
Display booking history in a user-friendly format.