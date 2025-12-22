CREATE TABLE patient (
    patient_id     INT PRIMARY KEY,
    first_name     VARCHAR(100) NOT NULL,
    last_name      VARCHAR(100) NOT NULL,
    contact_person VARCHAR(150)
);

CREATE TABLE staff (
    staff_id        INT PRIMARY KEY,
    first_name      VARCHAR(100) NOT NULL,
    last_name       VARCHAR(100) NOT NULL,
    role            VARCHAR(50) NOT NULL,
    contact_person  VARCHAR(150)
);
