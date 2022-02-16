set search_path = 'marking_sample';

CREATE SEQUENCE mark_id;

CREATE OR REPLACE PROCEDURE fill_marks() LANGUAGE plpgsql AS
$$
		DECLARE
		i INTEGER;
		j INTEGER;
	BEGIN
		FOR i IN (SELECT id FROM exam) LOOP
		j = 1 + random() * (5 - 1);
		INSERT INTO mark (id, exam, stud, res)
			select nextval('mark_id'), i, id,
		2 + random() * (5 - 2) FROM marking_sample.student WHERE random() < 0.10;
		END LOOP;
	END;
$$;

CALL fill_marks();