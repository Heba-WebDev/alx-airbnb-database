# 📊 Monitor and Refine Database Performance

## ✅ Objective

Continuously monitor, analyze, and improve the performance of frequently used queries by reviewing execution plans and making effective schema or indexing adjustments.

---

## 🛠 Instructions

### 1. Monitor Query Performance

Use tools like:

- `EXPLAIN` or `EXPLAIN ANALYZE` to analyze query execution steps
- `SHOW PROFILE` (for MySQL) to inspect CPU usage, I/O, etc.

**Example:**
```sql
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = 'some-uuid';
```

### 2. Identify Bottlenecks

Look for signs of inefficiency in the execution plan:

Full table scans
Missing indexes
Expensive joins
High filter or sort costs

```sql
Seq Scan on bookings  (cost=0.00..431.00 rows=12000 width=64)
```

### 3. Apply Optimizations

Based on analysis, apply improvements like:

- Creating indexes on frequently queried columns
- Removing unnecessary joins
- Updating the schema where needed

```sql
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
```

### 4. Re-Analyze Performance

After making changes, re-run the performance analysis:

```sql
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = '...';
```


