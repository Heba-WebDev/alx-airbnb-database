# 🏡 Airbnb Database System – Scalable Relational Design

## Overview

This project is a complete relational database system designed to support the core functionality of an Airbnb-style application. It covers everything from user and property management to bookings, payments, reviews, and messaging. The schema is built with long-term maintainability in mind—optimized for performance, clarity, and real-world data flows.

The entire system is structured to reflect how modern platforms operate behind the scenes, with normalization, indexing, and referential integrity playing key roles.


## What’s Included

- A fully normalized schema (up to 3NF) that handles the essential workflows of a property rental platform.

- SQL scripts to create tables, relationships, constraints, and indexes.

- Data seeding scripts that populate the database with realistic sample data.

- An ERD that visualizes the structure and relationships between entities.


## Tech Highlights

- Clean relational design with well-defined entities: User, Property, Booking, Payment, Review, Message

- All tables include timestamps, constraints, and appropriate foreign key relationships

- ENUMs used to represent roles and status values, enforcing consistency

- Sample data reflects realistic use cases—multiple users, hosts, and guest interactions

- Structured SQL with reusable patterns and naming consistency


## Data Flow in Action

- A host creates a property listing.

- A guest browses and books the property for a specific date range.

- The booking is processed, a payment is made, and both parties can leave a review.

- Users can also exchange messages to coordinate details or ask questions.

- Every part of the system is connected in a way that mirrors how actual platforms manage these interactions.


## Structure

```
├── schema.sql          # Full database schema
├── seed.sql            # Sample data inserts
├── normalization.md    # Step-by-step normalization breakdown
└── README.md           # Project overview
```


## Notes

Built with PostgreSQL in mind, but designed to be portable across modern RDBMS platforms. The schema is modular and easy to evolve—ready to support extensions like availability calendars, notifications, or moderation workflows.

