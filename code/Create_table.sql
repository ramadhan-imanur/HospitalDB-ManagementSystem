-- PATIENT
CREATE TABLE patient (
    patient_id      INT PRIMARY KEY,
    first_name      VARCHAR(100) NOT NULL,
    last_name       VARCHAR(100) NOT NULL,
    contact_person  VARCHAR(20)
);

-- DEPARTMENT
CREATE TABLE department (
    dept_id     INT PRIMARY KEY,
    dept_name   VARCHAR(50) NOT NULL,
    building    VARCHAR(50) NOT NULL
);

-- MEDICINE
CREATE TABLE medicine (
    medicine_code  INT PRIMARY KEY,
    name           VARCHAR(50) NOT NULL,
    price          NUMERIC(10,2) NOT NULL CHECK (price >=0),
    stock          INT NOT NULL CHECK (stock >= 0)
);

-- STAFF 
CREATE TABLE staff (
    staff_id        INT PRIMARY KEY,
    first_name      VARCHAR(100) NOT NULL,
    last_name       VARCHAR(100) NOT NULL,
    role            VARCHAR(50) NOT NULL,
    contact_person  VARCHAR(20)
);

-- ROOM
CREATE TABLE room (
    room_code   VARCHAR(5) PRIMARY KEY,
    room_number VARCHAR(10) NOT NULL,
    capacity    INT NOT NULL CHECK (capacity > 0)
);

-- DOCTOR
CREATE TABLE doctor (
    doctor_id       INT PRIMARY KEY,
    first_name      VARCHAR(50) NOT NULL,
    last_name       VARCHAR(50) NOT NULL,
    contact_person  VARCHAR(20),
    dept_id         INT NOT NULL,
    FOREIGN KEY (dept_id) REFERENCES department(dept_id) 
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

-- DOCTOR SCHEDULE
CREATE TABLE doc_schedule (
    schedule_id     SERIAL PRIMARY KEY,
    doctor_id       INT NOT NULL,
    day_of_week     SMALLINT NOT NULL,
    start_time      TIME NOT NULL,
    end_time        TIME NOT NULL,
    FOREIGN KEY (doctor_id) REFERENCES doctor(doctor_id)
        ON DELETE CASCADE, 
    CONSTRAINT chk_day_of_week CHECK (day_of_week BETWEEN 1 AND 7), 
    CONSTRAINT chk_time_order CHECK (start_time < end_time)
);

-- APPOINTMENT
CREATE TABLE appointment (
    appointment_code    INT PRIMARY KEY,
    patient_id          INT NOT NULL,
    dept_id             INT NOT NULL, 
    doctor_id           INT,
    appointment_date    DATE NOT NULL,
    appointment_time    TIME NOT NULL,
    FOREIGN KEY (patient_id) REFERENCES patient(patient_id)
        ON DELETE CASCADE,
    FOREIGN KEY (dept_id) REFERENCES department(dept_id)
        ON DELETE RESTRICT,
    FOREIGN KEY (doctor_id) REFERENCES doctor(doctor_id)
        ON DELETE SET NULL
);

-- MEDICAL RECORD
CREATE TABLE medical_record (
    medical_record_code INT PRIMARY KEY,
    patient_id          INT NOT NULL,
    doctor_id           INT NOT NULL,
    appointment_code    INT UNIQUE NOT NULL,
    diagnosis           VARCHAR(150) NOT NULL,
    treatment           VARCHAR(150),
    FOREIGN KEY (patient_id) REFERENCES patient(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES doctor(doctor_id),
    FOREIGN KEY (appointment_code) REFERENCES appointment(appointment_code)
        ON DELETE CASCADE
);

-- MEDICAL RECORD (UNTUK OBAT)
CREATE TABLE medical_record_medicine (
    medical_record_code INT NOT NULL,
    medicine_code       INT NOT NULL,
    dosage              VARCHAR(20) NOT NULL,
    PRIMARY KEY (medical_record_code, medicine_code),
    FOREIGN KEY (medical_record_code) REFERENCES medical_record(medical_record_code)
        ON DELETE CASCADE,
    FOREIGN KEY (medicine_code) REFERENCES medicine(medicine_code)
);

-- INPATIENT CARE (PERAWATAN LANJUT)
CREATE TABLE inpatient_care (
    inpatientcare_code INT PRIMARY KEY,
    patient_id         INT NOT NULL,
    room_code          VARCHAR(5) NOT NULL,
    assignment_date    DATE NOT NULL,
    end_date           DATE,
    CONSTRAINT chk_date_order CHECK (end_date IS NULL OR end_date >= assignment_date),
    FOREIGN KEY (patient_id) REFERENCES patient(patient_id),
    FOREIGN KEY (room_code) REFERENCES room(room_code)
);

-- NURSE
CREATE TABLE nurse (
    staff_id          INT PRIMARY KEY,
    specialization    VARCHAR(50) NOT NULL,
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id)
        ON DELETE CASCADE
);

-- NURSE ASSIGNMENT
CREATE TABLE nurse_assignment (
    assignment_id       INT PRIMARY KEY,
    staff_id            INT NOT NULL,
    inpatientcare_code  INT NOT NULL,
    shift               VARCHAR(20) NOT NULL,
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id)
        ON DELETE CASCADE,
    FOREIGN KEY (inpatientcare_code) REFERENCES inpatient_care(inpatientcare_code)
        ON DELETE CASCADE
);
