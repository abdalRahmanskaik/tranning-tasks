-- === Basic Queries====
-- 1.
select *
  from patients;

-- -------------------------
select *
  from patients
 where gender = 'FEMALE';
-- -------------------------
select *
  from patients
 where city = 'Gaza';

-- =========================
-- 2.
select p.patient_id,
       p.first_name
       || ' '
       || p.last_name as patient_name,
       v.visit_id,
       v.visit_date,
       v.diagnosis,
       v.status,
       d.doctor_name,
       d.specialty
  from patients p
  join visits v
on p.patient_id = v.patient_id
  join doctors d
on v.doctor_id = d.doctor_id;
-- =========================
-- 3.
select *
  from visits
 where status = 'COMPLETED';
-- =========================
-- 4.
select *
  from visits
 order by visit_date desc;
-- =========================
-- 5.
update visits
   set
   status = 'COMPLETED'
 where visit_id = 1004;

commit;
-- =========================
-- 6. 
delete from visits
 where visit_id = 1006;

commit;
-- =========================
