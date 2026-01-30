# Staff Analysis using SQL

## Overview

This project demonstrates analytical SQL used to model and analyse staff costing, FTE allocation, and activity-based cost distribution within a university-type organisation.

I've shown query logic and analytical thinking, rather than database deployment.

## Data Model

The model consists of four core tables:
- staff – staff identifiers and contact details
- staff_fte – monthly FTE by job and department
- staff_salary – annual salary at full-time equivalent
- staff_activity_allocation – percentage split of activity types

## Key Business Questions
- How is staff FTE distributed across departments?: [Query 1](https://github.com/kathryncodesthings/sql-resource-allocation-analysis/blob/main/queries/01_data_validation.sql)
- What is the monthly salary cost by department? [Query 2](https://github.com/kathryncodesthings/sql-resource-allocation-analysis/blob/main/queries/02_core_metrics.sql)
- How are salary costs allocated between teaching, research, and administration? [Query 3](https://github.com/kathryncodesthings/sql-resource-allocation-analysis/blob/main/queries/02_core_metrics.sql)
- Are there staff with a total FTE exceeding 1.0 across multiple jobs? [Query 4](https://github.com/kathryncodesthings/sql-resource-allocation-analysis/blob/main/queries/04_advanced_analysis.sql)

## SQL Techniques Demonstrated
- Common Table Expressions (CTEs)
- Multi-table joins
- Window functions
- Conditional aggregation
- Data validation queries

## Notes
Queries are written in PostgreSQL-style SQL and are intended for illustrative  purposes. Dummy CSV data is provided to demonstrate expected table structure and relationships.
