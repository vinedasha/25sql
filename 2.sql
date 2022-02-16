set search_path = 'marking_sample';

create table marking_sample.exam
(
id integer not null primary key,
discip integer not null,
ts timestamp
);

create table marking_sample.mark
(
id integer not null primary key,
exam integer not null,
stud integer not null,
res integer
);

create table marking_sample.student
(
id integer not null primary key,
first varchar(50),
last varchar(50),
sex char(1)
);

create table marking_sample.discipline
(
id integer not null primary key,
descr varchar(50)
);

create unique index mark_ix_1 on marking_sample.mark(exam, stud);

alter table marking_sample.mark
add constraint student_mark
foreign key (stud) references marking_sample.student (id);

alter table  marking_sample.mark
add constraint exam_mark
foreign key (exam) references marking_sample.exam (id);

alter table  marking_sample.exam
add constraint discipline_exam
foreign key (discip) references marking_sample.discipline (id);
