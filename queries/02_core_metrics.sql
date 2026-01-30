-- Total FTE by department (September snapshot)
SELECT
    department,
    SUM(fte_sep) AS total_fte
FROM staff_fte
GROUP BY department
ORDER BY total_fte DESC;