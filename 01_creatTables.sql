-- === Creat Tables ===

create table doctors (
   doctor_id   number primary key,
   doctor_name varchar2(100) not null,
   specialty   varchar2(100) not null,
   phone       varchar2(20),
   hire_date   date default sysdate
);

create table patients (
   patient_id number primary key,
   first_name varchar2(50) not null,
   last_name  varchar2(50) not null,
   gender     varchar2(10),
   birth_date date,
   phone      varchar2(20),
   city       varchar2(100)
);

create table visits (
   visit_id   number primary key,
   patient_id number not null,
   doctor_id  number not null,
   visit_date date default sysdate,
   diagnosis  varchar2(200),
   status     varchar2(20),
   constraint fk_visit_patient foreign key ( patient_id )
      references patients ( patient_id ),
   constraint fk_visit_doctor foreign key ( doctor_id )
      references doctors ( doctor_id )
);