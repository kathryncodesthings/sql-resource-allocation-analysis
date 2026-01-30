# Staff Analysis using SQL

## Overview

This project demonstrates analytical SQL used to model and analyse staff costing, FTE allocation, and activity-based cost distribution within a university-style organisation.

The focus is on query logic and analytical thinking, rather than database deployment.

## Data Model

The model consists of four core tables:
- staff – staff identifiers and contact details
- staff_fte – monthly FTE by job and department
- staff_salary – annual salary at full-time equivalent
- staff_activity_allocation – percentage split of activity types

## Key Business Questions
- How is staff FTE distributed across departments?
- What is the monthly salary cost by department?
- How are salary costs allocated between teaching, research, and administration?
- Are there staff with total FTE exceeding 1.0 across multiple jobs?

## SQL Techniques Demonstrated
- Common Table Expressions (CTEs)
- Multi-table joins
- Window functions
- Conditional aggregation
- Data validation queries

## Notes
Queries are written in PostgreSQL-style SQL and are intended for illustrative  purposes. Sample CSV data is provided to demonstrate expected table structure and relationships.
