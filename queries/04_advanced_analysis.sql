-- Identify staff with total FTE > 1.0 across multiple jobs
SELECT
    staff_number,
    SUM(fte_sep) AS total_fte
FROM staff_fte
GROUP BY staff_number
HAVING SUM(fte_sep) > 1.0;
