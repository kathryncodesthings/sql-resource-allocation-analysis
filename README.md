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
- How are salary costs allocated between teaching, research, and administration? [Query 3](https://github.com/kathryncodesthings/sql-resource-allocation-analysis/blob/main/queries/03_cost_allocation.sql)
- Are there staff with a total FTE exceeding 1.0 across multiple jobs? [Query 4](https://github.com/kathryncodesthings/sql-resource-allocation-analysis/blob/main/queries/04_advanced_analysis.sql)

## SQL Techniques Demonstrated
- Common Table Expressions (CTEs) <!-- A CTE is a temporary, named result set defined with WITH that makes complex SQL easier to read and reason about. Similar to a variable -->
- Multi-table joins
- Window functions <!-- "For each row, I’ll look through a ‘window’ of related rows and calculate something, but I won’t remove the row itself." -->
- Conditional aggregation
- Data validation queries

## Example 
Query 3: How are salary costs allocated between teaching, research, and administration?

``` sql
WITH monthly_salary AS (
    SELECT
        f.staff_number,
        f.job_number,
        f.department,
        s.annual_salary_fte * f.fte_sep / 12 AS monthly_salary
    FROM staff_fte f
    JOIN staff_salary s
      ON f.staff_number = s.staff_number
     AND f.job_number   = s.job_number)
SELECT
    department,
    activity_type,
    SUM(monthly_salary * allocation_pct / 100) AS allocated_cost
FROM monthly_salary m
JOIN staff_activity_allocation a
  ON m.staff_number = a.staff_number
 AND m.job_number   = a.job_number
GROUP BY department, activity_type
ORDER BY department, activity_type;
```

The output for Query 3 is as follows:
| department           | activity_type   | allocated_cost|
|---------------------|-----------------|--------------:|
|Business School      | Administration  | 2800.00|
|Chemistry            | Administration  | 607.50|
|Chemistry            | Research        | 3442.50|
|Computer Science     | Administration  | 390.00|
|Computer Science     | Teaching        | 1560.00|
|Economics            | Administration  | 508.33|
|Economics            | Research        | 2033.33|
|Economics            | Teaching        | 2541.67|
|Engineering          | Administration  | 3000.00|
|History               | Administration | 433.33|
|History               | Research       | 1300.00|
|History               | Teaching       | 2600.00|
|Information Services | Administration  | 4833.33|
|Life Sciences        | Administration  | 286.67|
|Life Sciences        | Research        | 2580.00|
|Physics              | Research        | 3541.67|
|Physics              | Teaching        | 1366.67|
|Public Health        | Administration  | 396.67|
|Public Health        | Research        | 1586.67|
|Sociology            | Administration  | 333.33|
|Sociology            | Research        | 1166.67|
|Sociology            | Teaching        | 1833.33|

(Values rounded to 2 d.p. for readability)

## Notes
Queries are written in PostgreSQL-style SQL and are intended for illustrative  purposes. Dummy CSV data is provided to demonstrate expected table structure and relationships.
