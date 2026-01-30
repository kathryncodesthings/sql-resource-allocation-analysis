CREATE TABLE staff (
    staff_number INTEGER PRIMARY KEY,
    staff_email TEXT,
    first_name TEXT,
    last_name TEXT
);

CREATE TABLE staff_fte (
    staff_number INTEGER,
    job_number TEXT,
    job_title TEXT,
    fte_aug NUMERIC,
    fte_sep NUMERIC,
    fte_oct NUMERIC,
    fte_nov NUMERIC,
    fte_dec NUMERIC,
    fte_jan NUMERIC,
    fte_feb NUMERIC,
    fte_mar NUMERIC,
    fte_apr NUMERIC,
    fte_may NUMERIC,
    fte_jun NUMERIC,
    fte_jul NUMERIC,
    job_classification TEXT,
    department TEXT
);

CREATE TABLE staff_salary (
    staff_number INTEGER,
    job_number TEXT,
    grade TEXT,
    annual_salary_fte NUMERIC,
    salary_cost_centre TEXT
);

CREATE TABLE staff_activity_allocation (
    staff_number INTEGER,
    job_number TEXT,
    activity_type TEXT,
    allocation_pct NUMERIC
);