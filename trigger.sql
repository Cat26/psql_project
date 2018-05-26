SET client_encoding TO 'UTF-8';

-- zwiekesznie nr powtorzenia, archiwizuje wcześniejsze powtórzenie eksperymentu.
CREATE TABLE eksperyment_log (
	id int, 
	nr_powtorzenia int, 
	"czas zmiany" timestamp
);

CREATE FUNCTION archiwizuj_eksperyment()
	RETURNS TRIGGER AS $$
BEGIN
	IF old.nr_powtorzenia<>new.nr_powtorzenia 
	THEN INSERT INTO eksperyment_log VALUES (old.id, old.nr_powtorzenia, current_timestamp);
	RAISE NOTICE 'zmiana nr powtorzenia: %',old.id;
	END IF;
	RETURN NULL;
END
$$ LANGUAGE 'plpgsql'
;

CREATE TRIGGER archiwizuj_eksperyment
	AFTER UPDATE ON eksperyment 
FOR EACH ROW EXECUTE PROCEDURE archiwizuj_eksperyment()
;