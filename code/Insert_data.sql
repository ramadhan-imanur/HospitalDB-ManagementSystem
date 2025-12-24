-- PATIENT
insert into patient values
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
insert into department values
(201,'Penyakit Dalam','Gedung A'),
(202, 'Anak', 'Gedung B'),
(203, 'Bedah', 'Gedung C'),
(204, 'Poli Umum', 'Gedung A'),
(205, 'Gigi', 'Gedung B'),
(206, 'THT', 'Gedung B'),
(207, 'Kulit', 'Gedung C'),
(208, 'Mata', 'Gedung D');

-- MEDICINE
insert into medicine  values
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
insert into staff values
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
insert into room values
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
insert into doctor values
(9001, 'Aldo', 'Pranata', 'Senin-Rabu 08:00-16:00', '081334334443', 201),
(9002, 'Nadia', 'Arumi', 'Selasa-Kamis 08:00-16:00', '081447747444', 202),
(9003, 'Rafael', 'Santoso', 'Senin-Jumat 09:00-17:00', '08166647666', 203),
(9004, 'Kirana', 'Tashmia', 'Rabu-Jumat 08:00-16:00', '081934459999', 204),
(9005, 'Elara', 'Salsabila', 'Senin-Jumat 08:00-15:00', '081122233344', 205),
(9006, 'Gian', 'Hutama', 'Selasa-Kamis 09:00-17:00', '081133344455', 206),
(9007, 'Mira', 'Kalista', 'Senin-Rabu 10:00-18:00', '081144455566', 207),
(9008, 'Azka', 'Wijaya', 'Senin-Jumat 08:00-16:00', '081155566677', 208),
(9009, 'Dara', 'Putri', 'Rabu-Jumat 08:00-16:00', '081166677788', 204),
(9010, 'Faris', 'Darmaja', 'Selasa-Kamis 08:00-16:00', '081177788899', 205);

-- APPOINTMENT
insert into appointment values
(501, 10001, 9001, 201, '08:30', '2025-12-01'),
(502, 10002, 9002, 202, '09:00', '2025-12-01'),
(503, 10003, 9003, 203, '10:00', '2025-12-02'),
(504, 10004, 9004, 204, '11:00', '2025-12-02'),
(505, 10005, 9005, 205, '13:00', '2025-12-03'),
(506, 10006, 9006, 206, '14:00', '2025-12-03'),
(507, 10007, 9007, 207, '10:00', '2025-12-04'),
(508, 10008, 9008, 208, '09:30', '2025-12-04'),
(509, 10009, 9009, 204, '13:30', '2025-12-05'),
(510, 10010, 9010, 205, '15:30', '2025-12-05');

-- MEDICAL RECORD
insert into medical_record values
(20001, 10001, 9001, 501, 201, 'Demam tinggi', 'Rawat jalan: Istirahat, banyak minum air, makan buah'),
(20002, 10002, 9002, 502, 202, 'Batuk pilek', 'Rawat jalan: Istirahat dan konsumsi makanan bergizi'),
(20003, 10003, 9003, 503, 203, 'Luka sayatan di tangan', 'Rawat inap: Pembersihan luka, observasi, dressing rutin'),
(20004, 10004, 9004, 504, 204, 'Gejala tipes', 'Rawat inap: Pantau suhu, pemberian antibiotik, cairan infus, istirahat total'),
(20005, 10005, 9005, 505, 205, 'Sakit gigi berlubang', 'Rawat jalan: Kontrol ke dokter gigi, menjaga kebersihan gigi, obat pereda nyeri'),
(20006, 10006, 9006, 506, 206, 'Telinga berdenging', 'Rawat jalan: Hindari masuk air, jaga kebersihan telinga, obat tetes sesuai resep'),
(20007, 10007, 9007, 507, 207, 'Gatal-gatal di kulit', 'Rawat jalan: Hindari alergen, gunakan salep sesuai resep'),
(20008, 10008, 9008, 508, 208, 'Mata merah dan perih', 'Rawat jalan: Kompres hangat, hindari digosok, obat tetes mata sesuai resep'),
(20009, 10009, 9009, 509, 204, 'Nyeri otot ringan', 'Rawat jalan: Olahraga ringan, pemanasan sebelum aktivitas, obat pereda nyeri jika perlu'),
(20010, 10010, 9010, 510, 205, 'Gusi bengkak', 'Rawat jalan: Kontrol ke dokter gigi, menjaga kebersihan mulut, antibiotik jika disarankan');

-- MEDICAL_RECORD_MEDICINE
insert into medical_record_medicine values
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
insert into inpatient_care values
(301, 10003, 'R103', '2025-12-02', '2025-12-04'),  
(302, 10004, 'R104', '2025-12-02', '2025-12-06');  

-- NURSE ASSIGNMENT
insert into nurse_assignment values
(1, 7001, 301, 'Pagi'),
(2, 7002, 301, 'Siang'),
(3, 7007, 302, 'Pagi'),
(4, 7008, 302, 'Malam');

-- NURSE
insert into nurse (staff_id, spealization) values
(7001, 'Perawat Umum'),       
(7002, 'Perawat Umum'),       
(7007, 'Perawat Umum'),       
(7008, 'Perawat Umum'),       
(7006, 'Perawat Umum');       

