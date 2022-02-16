alter table marking_sample.mark
drop constraint student_mark;

alter table  marking_sample.mark
drop constraint exam_mark;

alter table  marking_sample.exam
drop constraint discipline_exam;

drop table marking_sample.student;
drop table marking_sample.discipline;
drop table marking_sample.mark;
drop table marking_sample.exam;
drop sequence discip_id;