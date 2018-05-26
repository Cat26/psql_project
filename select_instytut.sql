SET client_encoding='utf-8';

-- zliczenie ilości pracowników o danej specjalizacji
SELECT specjalizacja,count (specjalizacja) FROM pracownik GROUP BY specjalizacja
;

-- wypisanie danych pracowników prowadzących dokumentacje
SELECT imie, nazwisko FROM pracownik 
  WHERE id IN (
    SELECT pracownik_id FROM dokumentacja 
    )
      ORDER BY nazwisko
;

-- wypisanie danych pracowników którzy nie prowadzą równoczesnie eksperymentu i dokumentacji
SELECT imie, nazwisko FROM pracownik R
   WHERE NOT EXISTS (
   SELECT *
     FROM dokumentacja D INNER JOIN przeprowadza_eksperyment P 
     ON  R.id=D.pracownik_id
     AND D.pracownik_id=P.pracownik_id
)
;

-- wypisanie danych pracowników przeprowadzających więcej niz jeden eksperyment
SELECT imie, nazwisko FROM pracownik
    WHERE id IN (
        SELECT pracownik_id FROM przeprowadza_eksperyment
        GROUP BY pracownik_id HAVING count (pracownik_id) > 1
    );

-- wypisanie danych pracowników prowadzących eksperyment oraz labolatorium w jakim sie to odbywa
SELECT imie, nazwisko, L.nazwa
   FROM ((( pracownik INNER JOIN przeprowadza_eksperyment P
             ON pracownik.id = P.pracownik_id
         ) INNER JOIN eksperyment E
             ON P.eksperyment_id = E.id
             ) INNER JOIN laboratorium L
             ON E.laboratorium_id = L.id
        )
;

-- dodanie to nazw labolatoriów dopisku 'instytut Biochemi'
UPDATE laboratorium set nazwa=nazwa||'; instytyt Biochemi';

-- dodanie dokumentacji eksperymentu bez daty zakonczenia dopisku 'brak daty zakonczenia'
update dokumentacja set tytul=tytul||': brak daty zakonczenia'
    where id in 
     (select dokumentacja_id from
         eksperyment INNER JOIN przeprowadza_eksperyment P
         ON eksperyment.id = P.eksperyment_id
         where data_zakonczenia is not null
     );
-- usunięcie pracowników o tytule magistra którzy nie prowadzą dokumentacji ani eksperymentu
DELETE FROM pracownik
  WHERE tytul_naukowy LIKE 'Magister%' AND id NOT IN (
    SELECT pracownik_id FROM dokumentacja
    ) AND id not in (SELECT pracownik_id FROM przeprowadza_eksperyment)
;
DELETE FROM przeprowadza_eksperyment
  WHERE data_zakonczenia IS NULL
;

-- pary dokumentacji tego samoego pracownika
SELECT D1.id AS dok1, D2.id AS dok2, D2.pracownik_id
FROM dokumentacja AS D1, dokumentacja D2
WHERE D1.pracownik_id=D2.pracownik_id
      AND D1.id<D2.id;

-- stworzenie widoku id eksperymentów gdzie uzywana jest Siarka
CREATE VIEW eksperyment_siarka AS
    SELECT id
    FROM eksperyment
    WHERE odczynnik_id in
    (select odczynnik_id from eksperyment E INNER JOIN odczynnik O
    ON O.id = E.odczynnik_id
    where nazwa like 'Siarka%');

SELECT * FROM eksperyment_siarka
;
DROP VIEW eksperyment_siarka
;