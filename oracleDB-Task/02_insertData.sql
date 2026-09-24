-- === Insert Data ===

-- 1. Insert Doctors Table
-- -------------------------------
insert into doctors (
   doctor_id,
   doctor_name,
   specialty,
   phone,
   hire_date
) values
   ( 1,
     'Rania Alzaeem',
     'Cardiology',
     '0599000001',
     date '2020-01-15' );

insert into doctors (
   doctor_id,
   doctor_name,
   specialty,
   phone,
   hire_date
) values
   ( 2,
     'Ahmed Khalaf',
     'Dermatology',
     '0599000002',
     date '2021-03-20' );

insert into doctors (
   doctor_id,
   doctor_name,
   specialty,
   phone,
   hire_date
) values
   ( 3,
     'Omar Khaled',
     'Neurology',
     '0599000003',
     date '2019-07-10' );

insert into doctors (
   doctor_id,
   doctor_name,
   specialty,
   phone,
   hire_date
) values
   ( 4,
     'Lina Ahmad',
     'Pediatrics',
     '0599000004',
     date '2022-02-05' );

insert into doctors (
   doctor_id,
   doctor_name,
   specialty,
   phone,
   hire_date
) values
   ( 5,
     'Mohammed Salah',
     'Orthopedics',
     '0599000005',
     date '2020-11-18' );


-- 2. Insert Patients Table
-- -------------------------------
insert into patients (
   patient_id,
   first_name,
   last_name,
   gender,
   birth_date,
   phone,
   city
) values
   ( 101,
     'Sara',
     'Ali',
     'FEMALE',
     date '1988-05-10',
     '0599111111',
     'Gaza' );

insert into patients (
   patient_id,
   first_name,
   last_name,
   gender,
   birth_date,
   phone,
   city
) values
   ( 102,
     'Khaled',
     'Nasser',
     'MALE',
     date '1992-08-15',
     '0599111112',
     'Nablus' );

insert into patients (
   patient_id,
   first_name,
   last_name,
   gender,
   birth_date,
   phone,
   city
) values
   ( 103,
     'Fatma',
     'Sami',
     'FEMALE',
     date '1995-02-20',
     '0599111113',
     'Ramallah' );

insert into patients (
   patient_id,
   first_name,
   last_name,
   gender,
   birth_date,
   phone,
   city
) values
   ( 104,
     'Yousef',
     'Omar',
     'MALE',
     date '1985-11-03',
     '0599111114',
     'Gaza' );

insert into patients (
   patient_id,
   first_name,
   last_name,
   gender,
   birth_date,
   phone,
   city
) values
   ( 105,
     'Nour',
     'Hassan',
     'FEMALE',
     date '2000-06-12',
     '0599111115',
     'Hebron' );


-- 3. Insert Visits Table
-- -------------------------------
insert into visits (
   visit_id,
   patient_id,
   doctor_id,
   visit_date,
   diagnosis,
   status
) values
   ( 1001,
     101,
     1,
     date '2026-01-10',
     'High Blood Pressure',
     'COMPLETED' );

insert into visits (
   visit_id,
   patient_id,
   doctor_id,
   visit_date,
   diagnosis,
   status
) values
   ( 1002,
     102,
     2,
     date '2026-01-15',
     'Skin Allergy',
     'COMPLETED' );

insert into visits (
   visit_id,
   patient_id,
   doctor_id,
   visit_date,
   diagnosis,
   status
) values
   ( 1003,
     103,
     3,
     date '2026-02-05',
     'Migraine',
     'COMPLETED' );

insert into visits (
   visit_id,
   patient_id,
   doctor_id,
   visit_date,
   diagnosis,
   status
) values
   ( 1004,
     104,
     4,
     date '2026-02-20',
     'Flu',
     'COMPLETED' );

insert into visits (
   visit_id,
   patient_id,
   doctor_id,
   visit_date,
   diagnosis,
   status
) values
   ( 1005,
     105,
     5,
     date '2026-03-01',
     'Back Pain',
     'SCHEDULED' );

-- -------------------------------
commit;
