DELETE FROM eksperyment_log
;
SELECT * FROM eksperyment_log
	WHERE laboratorium_id = 2
;
SELECT * FROM eksperyment_log
;
UPDATE eksperyment SET nr_powtorzenia=nr_powtorzenia + 1 
	WHERE laboratorium_id = 2
;
SELECT * FROM eksperyment
	WHERE laboratorium_id =2
;
SELECT * FROM eksperyment_log
;