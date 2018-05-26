SET client_encoding='utf-8';

insert into odczynnik(nazwa)
   values('Amoniak');
insert into odczynnik(nazwa)
   values('Chlorek wapnia');
insert into odczynnik(nazwa)
   values('Gliceryna');
insert into odczynnik(nazwa)
   values('Kwas palmitynowy');
insert into odczynnik(nazwa)
   values('jodyna');
insert into odczynnik(nazwa)
   values('Siarka mielona');
insert into odczynnik(nazwa)
   values('Chlorek sodu');
insert into odczynnik(nazwa)
   values('Tlenek glinu');
insert into odczynnik(nazwa)
   values('Żelazo proszek');
insert into odczynnik(nazwa)
   values('Wodorotlenek wapnia');
insert into odczynnik(nazwa)
   values('Wodorotlenek sodu');
insert into odczynnik(nazwa)
   values('Woda bromowa');
insert into odczynnik(nazwa)
   values('Węglan wapnia');
insert into odczynnik(nazwa)
   values('Kwas solny 10%');
insert into odczynnik(nazwa)
   values('Oranż metylowy 0,1% r-r wodny');
insert into odczynnik(nazwa)
   values('Kwas octowy 80%');

INSERT INTO pracownik(imie, nazwisko, tytul_naukowy, specjalizacja)
    VALUES('Jan', 'Nowak', 'Magister', 'Biologia Molekularna');
INSERT INTO pracownik(imie, nazwisko, tytul_naukowy, specjalizacja)
    VALUES('Urszula', 'Kos', 'Doktor', 'Biotechnologia');
INSERT INTO pracownik(imie, nazwisko, tytul_naukowy, specjalizacja)
    VALUES('Łukasz', 'Nowak', 'Doktor hab', 'Chemia organiczna');
INSERT INTO pracownik(imie, nazwisko, tytul_naukowy, specjalizacja)
    VALUES('Robert', 'Ogórek', 'Magister', 'Biologia komórki');
INSERT INTO pracownik(imie, nazwisko, tytul_naukowy, specjalizacja)
    VALUES('Lucjan', 'Kowalski', 'Magister', 'Biochemia');
INSERT INTO pracownik(imie, nazwisko, tytul_naukowy, specjalizacja)
    VALUES('Jannina', 'Nowakowska', 'Doktor', 'Chemia nieorganiczna');
INSERT INTO pracownik(imie, nazwisko, tytul_naukowy, specjalizacja)
    VALUES('Jan', 'Tomaszewski', 'Doktor hab', 'Biochemia');
INSERT INTO pracownik(imie, nazwisko, tytul_naukowy, specjalizacja)
    VALUES('Anna', 'Nowak', 'Magister', 'Biologia Molekularna');
INSERT INTO pracownik(imie, nazwisko, tytul_naukowy, specjalizacja)
    VALUES('Anna', 'Szpak', 'Doktor', 'Mikrobiologia');
INSERT INTO pracownik(imie, nazwisko, tytul_naukowy, specjalizacja)
    VALUES('Tomasz', 'Lewandowski', 'Profesor', 'Biochemia');
INSERT INTO pracownik(imie, nazwisko, tytul_naukowy, specjalizacja)
    VALUES('Jakub', 'Miko', 'Profesor', 'Biologia Molekularna');

insert into laboratorium(nazwa)
   values('Laboratorium Biochemi');
insert into laboratorium(nazwa)
   values('Laboratorium Chemi Organicznej');
insert into laboratorium(nazwa)
   values('Laboratorium Biologii Komórki');
insert into laboratorium(nazwa)
   values('Laboratorium Chemi Nieorganicznej');
insert into laboratorium(nazwa)
   values('Laboratorium Biotechnologii');
insert into laboratorium(nazwa)
   values('Laboratorium Biologii Molekularnej');

insert into dokumentacja(tytul, pracownik_id)
    values('Pomiar ilosci bialka', 1);
insert into dokumentacja(tytul, pracownik_id)
    values('proteoliza', 2);
insert into dokumentacja(tytul, pracownik_id)
    values('elektroforeza', 2);
insert into dokumentacja(tytul, pracownik_id)
    values('Pomiar zawartosci aminokwasow', 1);
insert into dokumentacja(tytul, pracownik_id)
    values('reakcja na obecnosc ukladow aromatycznych', 3);
insert into dokumentacja(tytul, pracownik_id)
    values('reakcja biuretowa', 4);
insert into dokumentacja(tytul, pracownik_id)
    values('analiza budowy bialka P', 5);
insert into dokumentacja(tytul, pracownik_id)
    values('chromatografia', 5);
insert into dokumentacja(tytul, pracownik_id)
    values('oznaczanie zawartosci kwasnej fosfatazy', 3);

insert into eksperyment(nr_powtorzenia, odczynnik_id, laboratorium_id, dokumentacja_id)
   values(1, 2, 2, 1);
insert into eksperyment(nr_powtorzenia, odczynnik_id, laboratorium_id, dokumentacja_id)
   values(4, 15, 3, 2);
insert into eksperyment(nr_powtorzenia, odczynnik_id, laboratorium_id, dokumentacja_id)
   values(1, 6, 2, 3);
insert into eksperyment(nr_powtorzenia, odczynnik_id, laboratorium_id, dokumentacja_id)
   values(2, 6, 2, 4);
insert into eksperyment(nr_powtorzenia, odczynnik_id, laboratorium_id, dokumentacja_id)
   values(1, 2, 2, 5);
insert into eksperyment(nr_powtorzenia, odczynnik_id, laboratorium_id, dokumentacja_id)
   values(5, 13, 6, 6);
insert into eksperyment(nr_powtorzenia, odczynnik_id, laboratorium_id, dokumentacja_id)
   values(5, 14, 6, 6);
insert into eksperyment(nr_powtorzenia, odczynnik_id, laboratorium_id, dokumentacja_id)
   values(5, 12, 6, 6);
insert into eksperyment(nr_powtorzenia, odczynnik_id, laboratorium_id, dokumentacja_id)
   values(5, 11, 6, 6);
insert into eksperyment(nr_powtorzenia, odczynnik_id, laboratorium_id, dokumentacja_id)
   values(5, 14, 4, 7);

insert into przeprowadza_eksperyment(eksperyment_id, pracownik_id, data_rozpoczecia, data_zakonczenia)
    values(1,1,'23-03-2017','28-03-2017');
insert into przeprowadza_eksperyment(eksperyment_id, pracownik_id, data_rozpoczecia, data_zakonczenia)
    values(1,2,'23-03-2017','28-03-2017');
insert into przeprowadza_eksperyment(eksperyment_id, pracownik_id, data_rozpoczecia, data_zakonczenia)
    values(2,3,'23-04-2017','28-05-2018');
insert into przeprowadza_eksperyment(eksperyment_id, pracownik_id, data_rozpoczecia, data_zakonczenia)
    values(3,6,'23-02-2017', null);
insert into przeprowadza_eksperyment(eksperyment_id, pracownik_id, data_rozpoczecia, data_zakonczenia)
    values(4,1,'05-03-2018', null);
insert into przeprowadza_eksperyment(eksperyment_id, pracownik_id, data_rozpoczecia, data_zakonczenia)
    values(4,2,'05-03-2018', null);
insert into przeprowadza_eksperyment(eksperyment_id, pracownik_id, data_rozpoczecia, data_zakonczenia)
    values(5,7,'02-03-2017','19-03-2018');