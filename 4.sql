set search_path = 'marking_sample';

create sequence exam_id;

insert into exam (id, discip, ts) select
	nextval('exam_id'),
	1 + random() * (5 - 1),
	timestamp '2021-09-01 00:00:00' + random() * (
	 timestamp '2022-07-01 00:00:00' -
	timestamp '2022-09-01 00:00:00')
from generate_series(1, 20);