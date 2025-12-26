-- PATIENT
insert into patient (patient_id, first_name, last_name, contact_person) values
(10001, 'Dani', 'Saputra', '08881188117'),
(10002, 'Amelia', 'Nasir', '08199011164'),
(10003, 'Rayn', 'Wardana', '08134443454'),
(10004, 'Daniela', 'Rosche', '08111666333'),
(10005, 'Kevin', 'Putra', '088813447999'),
(10006, 'Amanda', 'Gwen', '088776661111'),
(10007, 'Alya', 'Sabila', '088899912344'),
(10008, 'Raka', 'Wijaya', '081345557889'),
(10009, 'Jihan', 'Naira', '08144449900'),
(10010, 'Kusuma', 'Putra', '088813447999');

-- DEPARTMENT
insert into department (dept_id, dept_name, building) values
(201,'Penyakit Dalam','Gedung A'),
(202, 'Anak', 'Gedung B'),
(203, 'Bedah', 'Gedung C'),
(204, 'Poli Umum', 'Gedung A'),
(205, 'Gigi', 'Gedung B'),
(206, 'THT', 'Gedung B'),
(207, 'Kulit', 'Gedung C'),
(208, 'Mata', 'Gedung D');

-- MEDICINE
insert into medicine (medicine_code, name, price, stock) values
(001, 'Paracetamol', 5000.00, 100),
(002, 'Amoxicillin', 10000.00, 50),
(003, 'Ibuprofen', 7000.00, 80),
(004, 'Vitamin C', 3000.00, 150),
(005, 'Ambroxol', 6000.00, 40),
(006, 'Salep Kulit', 12000.00, 60),
(007, 'Cetirizine', 9000.00, 30),
(008, 'Antasida', 4000.00, 120),
(009, 'Obat Tetes Mata', 20000.00, 70),
(010, 'Amoxicillin Syrup', 28000.00, 50);

-- STAFF
insert into staff (staff_id, first_name, last_name, role, contact_person) values
(7001, 'Rina', 'Putri', 'Perawat', '081144411411'),
(7002, 'Budi', 'Santoso', 'Perawat', '08222552252'),
(7003, 'Andi', 'Wijaya', 'Security', '081334334443'),
(7004, 'Dewi', 'Lestari', 'Food Service', '081447747444'),
(7005, 'Sari', 'Amelia', 'Admin', '08155559595'),
(7006, 'Wahyu', 'Pratama', 'Perawat', '08166647666'),
(7007, 'Alisa', 'Rahma', 'Perawat', '08107770777'),
(7008, 'Anggun', 'Santika', 'Perawat', '08189008888'),
(7009, 'Panji', 'Hidayat', 'Cleaning Service', '081934459999'),
(7010, 'Nina', 'Sari', 'Apoteker', '081123456789');

-- ROOM
insert into room (room_code, room_number, capacity) values
('R101', 'Ruang 101', 2),
('R102', 'Ruang 102', 1),
('R103', 'Ruang 103', 2),
('R104', 'Ruang 104', 3),
('R105', 'Ruang 105', 1),
('R106', 'Ruang 106', 2),
('R201', 'Ruang 201', 2),
('R202', 'Ruang 202', 1),
('R203', 'Ruang 203', 3),
('R204', 'Ruang 204', 2);

-- DOCTOR
insert into doctor (doctor_id, first_name, last_name, contact_person, dept_id) values
(9001, 'Aldo', 'Pranata', '081334334443', 201),
(9002, 'Nadia', 'Arumi', '081447747444', 202),
(9003, 'Rafael', 'Santoso', '08166647666', 203),
(9004, 'Kirana', 'Tashmia', '081934459999', 204),
(9005, 'Elara', 'Salsabila', '081122233344', 205),
(9006, 'Gian', 'Hutama', '081133344455', 206),
(9007, 'Mira', 'Kalista', '081144455566', 207),
(9008, 'Azka', 'Wijaya', '081155566677', 208),
(9009, 'Dara', 'Putri', '081166677788', 204),
(9010, 'Faris', 'Darmaja', '081177788899', 205);

-- DOCTOR SCHEDULE
insert into doc_schedule (schedule_id, doctor_id, day_of_week, start_time, end_time) values
(1, 9001, 1, '08:00', '16:00'),
(2, 9001, 3, '08:00', '16:00'),
(3, 9002, 2, '08:00', '16:00'),
(4, 9002, 4, '08:00', '16:00'),
(5, 9003, 2, '09:00', '17:00'),
(6, 9003, 5, '09:00', '17:00'),
(7, 9004, 1, '08:00', '16:00'),
(8, 9004, 3, '08:00', '14:00'),
(9, 9005, 4, '13:00', '20:00'),
(10, 9006, 5, '09:00', '15:00'),
(11, 9007, 5, '10:00', '18:00'),
(12, 9008, 6, '08:00', '12:00'),
(13, 9009, 2, '07:00', '14:00'),
(14, 9009, 4, '07:00', '14:00'),
(15, 9010, 6, '14:00', '21:00');

-- APPOINTMENT
insert into appointment (appointment_code, patient_id, dept_id, doctor_id, appointment_date, appointment_time) values
(501, 10001, 201, 9001, '2025-12-01', '08:30'),
(502, 10002, 202, 9002, '2025-12-02', '09:30'),
(503, 10003, 203, 9003, '2025-12-02', '12:20'),
(504, 10004, 204, 9004, '2025-12-03', '10:30'),
(505, 10005, 205, 9005, '2025-12-04', '15:30'),
(506, 10006, 206, 9006, '2025-12-05', '10:00'),
(507, 10007, 207, 9007, '2025-12-05', '15:00'),
(508, 10008, 208, 9008, '2025-12-06', '09:30'),
(509, 10009, 204, 9009, '2025-12-09', '11:15'),
(510, 10010, 205, 9010, '2025-12-13', '19:30');

-- MEDICAL RECORD
insert into medical_record (medical_record_code, patient_id, doctor_id, appointment_code, diagnosis, treatment) values
(20001, 10001, 9001, 501, 201, 'Demam tinggi', 'Pemasangan infus cairan dan kompres hangat'),
(20002, 10002, 9002, 502, 202, 'Batuk pilek', 'Terapi uap (Nebulizer) untuk pengencer dahak'),
(20003, 10003, 9003, 503, 203, 'Luka sayatan di tangan', 'Pembersihan luka dan jahit luka serta persiapan rawat inap untuk observasi'),
(20004, 10004, 9004, 504, 204, 'Gejala tipes', 'Pemasangan infus cairan dan persiapan rawat inap (Bed Rest)'),
(20005, 10005, 9005, 505, 205, 'Sakit gigi berlubang', 'Pembersihan karies gigi dan tambal gigi'),
(20006, 10006, 9006, 506, 206, 'Telinga berdenging', 'Pembersihan telinga dan tes pendengaran'),
(20007, 10007, 9007, 507, 207, 'Gatal-gatal di kulit', 'Pemberian suntikan anti-alergi dan penggunaan salep di area yang gatal'),
(20008, 10008, 9008, 508, 208, 'Mata merah dan perih', 'Pencucian mata dengan cairan steril dan kompres'),
(20009, 10009, 9009, 509, 204, 'Nyeri otot ringan', 'Pemasangan perban elastis pada area nyeri'),
(20010, 10010, 9010, 510, 205, 'Gusi bengkak', 'Scaling dan polishing (pembersihan karang gigi)');

-- MEDICAL_RECORD_MEDICINE
insert into medical_record_medicine (medical_record_code, medicine_code, dosage) values
(20001, 001, '500 mg 3x1/hari'),       
(20002, 007, '10 mg 2x1/hari'),        
(20003, 003, '400 mg 3x1/hari'),       
(20004, 002, '500 mg 2x1/hari'),       
(20005, 001, '500 mg 2x1/hari'),       
(20006, 004, '500 mg, 1x sehari'),                   
(20007, 007, '10 mg 1x1/hari'),        
(20008, 009, '2 tetes 2x/hari'),       
(20009, 003, '400 mg 2x1/hari'),       
(20010, 002, '500 mg 2x1/hari');

-- INPATIENT_CARE (pasien yang rawat inap: 20003, 20004)
insert into inpatient_care (inpatientcare_code, patient_id, room_code, assignment_date, end_date) values
(301, 10003, 'R103', '2025-12-02', '2025-12-04'),  
(302, 10004, 'R104', '2025-12-02', '2025-12-06');  

-- NURSE
insert into nurse (staff_id, specialization) values
(7001, 'Perawat Umum'),       
(7002, 'Perawat Umum'),       
(7007, 'Perawat Umum'),       
(7008, 'Perawat Umum'),       
(7006, 'Perawat Umum');     

-- NURSE ASSIGNMENT
insert into nurse_assigment (assignment_id, staff_id, inpatientcare_code, shift) values
(1, 7001, 301, 'Pagi'),
(2, 7002, 301, 'Siang'),
(3, 7007, 302, 'Pagi'),
(4, 7008, 302, 'Malam');

  






