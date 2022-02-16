set search_path = 'marking_sample';

create sequence discip_id;

insert into discipline (id,  descr) values (nextval('discip_id'), 'Math');
insert into discipline (id,  descr) values (nextval('discip_id'), 'Physics');
insert into discipline (id,  descr) values (nextval('discip_id'), 'Computer Science');
insert into discipline (id,  descr) values (nextval('discip_id'), 'History');
insert into discipline (id,  descr) values (nextval('discip_id'), 'Foreign Language');