-- Check that activity allocations sum to 100% per job
SELECT
    staff_number,
    job_number,
    SUM(allocation_pct) AS total_pct
FROM staff_activity_allocation
GROUP BY staff_number, job_number
HAVING SUM(allocation_pct) <> 100;
