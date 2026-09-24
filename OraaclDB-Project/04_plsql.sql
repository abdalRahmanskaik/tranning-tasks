-- 7.
create or replace procedure get_patient_visits (
   p_patient_id in patients.patient_id%type,
   p_cursor     out sys_refcursor
) is
begin
   open p_cursor for select v.visit_id,
                            v.visit_date,
                            v.diagnosis,
                            v.status,
                            d.doctor_name
                                         from visits v
                                         join doctors d
                                       on v.doctor_id = d.doctor_id
                      where v.patient_id = p_patient_id;
end get_patient_visits;
/
-- =========================
-- 8.
create or replace function get_patient_visits_count (
   p_patient_id in patients.patient_id%type
) return number is
   v_count number := 0;
begin
   select count(*)
     into v_count
     from visits
    where patient_id = p_patient_id;

   return v_count;
end get_patient_visits_count;
/
-- =========================
-- 9.
create or replace package patient_pkg is
   procedure get_patient_visits (
      p_patient_id in patients.patient_id%type,
      p_cursor     out sys_refcursor
   );

   function get_patient_visits_count (
      p_patient_id in patients.patient_id%type
   ) return number;

end patient_pkg;
/
-- ---------------------------
create or replace package body patient_pkg is

   procedure get_patient_visits (
      p_patient_id in patients.patient_id%type,
      p_cursor     out sys_refcursor
   ) is
   begin
      open p_cursor for select v.visit_id,
                               v.visit_date,
                               v.diagnosis,
                               v.status,
                               d.doctor_name
                                            from visits v
                                            join doctors d
                                          on v.doctor_id = d.doctor_id
                         where v.patient_id = p_patient_id;
   end get_patient_visits;

   function get_patient_visits_count (
      p_patient_id in patients.patient_id%type
   ) return number is
      v_count number := 0;
   begin
      select count(*)
        into v_count
        from visits
       where patient_id = p_patient_id;

      return v_count;
   end get_patient_visits_count;

end patient_pkg;
/
-- =========================