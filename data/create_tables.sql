CREATE TABLE staff (
    staff_id INTEGER PRIMARY KEY,
    role TEXT,
    grade TEXT,
    fte NUMERIC
);

CREATE TABLE activity (
    staff_id INTEGER,
    activity_type TEXT,
    hours NUMERIC,
    year INTEGER
);

CREATE TABLE projects (
    project_id INTEGER PRIMARY KEY,
    funder_type TEXT
);

CREATE TABLE finance (
    project_id INTEGER,
    staff_id INTEGER,
    cost_type TEXT,
    amount NUMERIC,
    year INTEGER
);

