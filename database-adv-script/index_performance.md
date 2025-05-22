## 📌 Database Index Optimization

### 🧠 Objective

Optimize query performance in the User, Property, and Booking tables by identifying high-usage columns and applying appropriate indexes.

### 📝 Task Overview

- Identify frequently used columns in SQL queries (used in WHERE, JOIN, ORDER BY, etc.).
- Create indexes on these high-usage columns.
- Measure and compare query performance before and after adding indexes using EXPLAIN or ANALYZE.

### 🧱 Tables and Key Columns

#### 🔹 User
email (used in login/auth queries)

#### 🔹 Property
location (commonly used in search filters)

#### 🔹 Booking

user_id	(frequently used in JOINs and filters)

### ⚙️ Indexes Created

All index definitions are saved in `database_index.sql`

### 📎 Notes

- Avoid over-indexing: Only index columns that are frequently queried.
- Monitor performance impact on INSERT/UPDATE operations as indexes can slightly slow down write operations.
