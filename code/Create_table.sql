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
    dept_name   VARCHAR(50),
    building    VARCHAR(50)
);

-- MEDICINE
CREATE TABLE medicine (
    medicine_code  INT PRIMARY KEY,
    name           VARCHAR(50),
    price          NUMERIC(8,2),
    stock          INT
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
    room_number VARCHAR(10),
    capacity    INT
);

-- DOCTOR
CREATE TABLE doctor (
    doctor_id       INT PRIMARY KEY,
    first_name      VARCHAR(50) NOT NULL,
    last_name       VARCHAR(50) NOT NULL,
    schedule        VARCHAR(50),
    contact_person  VARCHAR(20),
    dept_id         INT,
    FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);

-- APPOINTMENT
CREATE TABLE appointment (
    appointment_code    INT PRIMARY KEY,
    patient_id          INT,
    doctor_id           INT,
    dept_id             INT,
    appointment_time    TIME,
    appointment_date    DATE,
    FOREIGN KEY (patient_id) REFERENCES patient(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES doctor(doctor_id),
    FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);

-- MEDICAL RECORD
CREATE TABLE medical_record (
    medical_record_code INT PRIMARY KEY,
    patient_id          INT,
    doctor_id           INT,
    appointment_code    INT,
    clinic              INT,
    diagnosis           VARCHAR(150),
    treatment           VARCHAR(150),
    FOREIGN KEY (patient_id) REFERENCES patient(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES doctor(doctor_id),
    FOREIGN KEY (appointment_code) REFERENCES appointment(appointment_code),
    FOREIGN KEY (clinic) REFERENCES department(dept_id)
);

-- MEDICAL RECORD (UNTUK OBAT)
CREATE TABLE medical_record_medicine (
    medical_record_code INT,
    medical_code        INT,
    dosage              VARCHAR(20),
    PRIMARY KEY (medical_record_code, medical_code),
    FOREIGN KEY (medical_record_code) REFERENCES medical_record(medical_record_code),
    FOREIGN KEY (medical_code) REFERENCES medicine(medicine_code)
);

-- INPATIENT CARE (PERAWATAN LANJUT)
CREATE TABLE inpatient_care (
    inpatientcare_code INT PRIMARY KEY,
    patient_id         INT,
    room_code          VARCHAR(5),
    assigment_date     DATE,
    end_date           DATE,
    FOREIGN KEY (patient_id) REFERENCES patient(patient_id),
    FOREIGN KEY (room_code) REFERENCES room(room_code)
);

-- NURSE ASSIGNMENT
CREATE TABLE nurse_assigment (
    assigment_id        INT PRIMARY KEY,
    staff_id            INT,
    inpatientcare_code  INT,
    shift               VARCHAR(20),
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id),
    FOREIGN KEY (inpatientcare_code) REFERENCES inpatient_care(inpatientcare_code)
);

-- NURSE
CREATE TABLE nurse (
    staff_id        INT PRIMARY KEY,
    specialization    VARCHAR(50),
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id)
);



