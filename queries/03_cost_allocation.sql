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
