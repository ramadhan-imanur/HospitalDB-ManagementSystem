-- QUERY SELECT (SATU TABEL)
-- Menampilkan seluruh data pasien yang tersimpan pada tabel patient
SELECT * FROM patient;

-- QUERY SELECT DENGAN JOIN
-- patient + appoinment
SELECT 
    p.patient_id,
    p.first_name || ' ' || p.last_name AS patient_name,
    a.appointment_code,
    a.appointment_date,
    a.appointment_time
FROM patient p
JOIN appointment a
    ON p.patient_id = a.patient_id;

-- doctor + department
SELECT 
    d.doctor_id,
    d.first_name || ' ' || d.last_name AS doctor_name,
    dep.dept_name,
    dep.building
FROM doctor d
JOIN department dep
    ON d.dept_id = dep.dept_id;

-- patient + medical_record + doctor
SELECT 
    p.patient_id,
    p.first_name || ' ' || p.last_name AS patient_name,
    d.first_name || ' ' || d.last_name AS doctor_name,
    m.diagnosis,
    m.treatment
FROM medical_record m
JOIN patient p
    ON m.patient_id = p.patient_id
JOIN doctor d
    ON m.doctor_id = d.doctor_id;

-- appoinment + patient + doctor + department
SELECT 
    a.appointment_code,
    p.first_name || ' ' || p.last_name AS patient_name,
    d.first_name || ' ' || d.last_name AS doctor_name,
    dep.dept_name,
    a.appointment_date,
    a.appointment_time
FROM appointment a
JOIN patient p
    ON a.patient_id = p.patient_id
JOIN doctor d
    ON a.doctor_id = d.doctor_id
JOIN department dep
    ON a.dept_id = dep.dept_id;

-- patient + inpatient_care + nurse_assigment + staff
SELECT 
    p.first_name || ' ' || p.last_name AS patient_name,
    i.room_code,
    n.shift,
    s.first_name || ' ' || s.last_name AS nurse_name
FROM inpatient_care i
JOIN patient p
    ON i.patient_id = p.patient_id
JOIN nurse_assigment n
    ON i.inpatientcare_code = n.inpatientcare_code
JOIN staff s
    ON n.staff_id = s.staff_id;

-- QUERY UPDATE & DELETE
-- upadate nomor HP
UPDATE patient
SET contact_person = '081111111111'
WHERE patient_id = 10001;

UPDATE patient
SET contact_person = '082222222222'
WHERE patient_id = 10002;

-- delete staff bukan nurse/doctor
DELETE FROM staff
WHERE staff_id = 7003;

DELETE FROM staff
WHERE staff_id = 7009;

