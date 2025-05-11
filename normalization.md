## ✅ First Normal Form (1NF)

All entities satisfy 1NF:
- Attributes contain only atomic values.
- No repeating groups or arrays.
- All records are uniquely identifiable by a primary key.

---

## ✅ Second Normal Form (2NF)

All entities satisfy 2NF:
- Every non-primary-key attribute is fully functionally dependent on the entire primary key.
- Since all tables use single-column UUIDs as primary keys, no partial dependencies exist.

---

## ✅ Third Normal Form (3NF)

All entities satisfy 3NF:
- No transitive dependencies are present.
- Non-key attributes are not dependent on other non-key attributes.

---

## 🟡 Opportunities for Additional Normalization (Optional)

These enhancements are not required but may improve flexibility, maintainability, or data integrity depending on project needs.

### 1. Property.location → Location Table

**Current:**

```sql
location: VARCHAR, NOT NULL
```
We can create a seprate table for locations and reference properties 

```
Location (
  location_id UUID PRIMARY KEY,
  name VARCHAR NOT NULL
)

```