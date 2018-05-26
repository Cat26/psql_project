SET client_encoding = 'utf-8';

CREATE TABLE odczynnik
(
  id                  serial            PRIMARY KEY,
  nazwa               varchar(70)       not null
);


CREATE TABLE pracownik
(
    id      serial            PRIMARY KEY,
    tytul_naukowy     varchar(70)    not null,
    specjalizacja     varchar(70)    not null,
    imie              varchar(70)    not null,
    nazwisko          varchar(70)    not null
);

CREATE TABLE laboratorium
(
    id            	  serial            PRIMARY KEY,
    nazwa             varchar(70)    not null
);

CREATE TABLE dokumentacja
(
    id                serial            PRIMARY KEY,
    tytul             varchar(70)    not null,
    pracownik_id      serial         not null,
    CONSTRAINT		  pracownik_fk 		FOREIGN KEY(pracownik_id)		REFERENCES pracownik(id)

);

CREATE TABLE eksperyment
(
    id                serial            PRIMARY KEY,
    nr_powtorzenia    int            not null,
    odczynnik_id      serial,
    laboratorium_id	  serial			NOT NULL,
    dokumentacja_id	  serial			NOT NULL,   
    CONSTRAINT		  laboratorium_fk 		FOREIGN KEY(laboratorium_id)		REFERENCES laboratorium(id),
    CONSTRAINT		  odczynnik_fk 		FOREIGN KEY(odczynnik_id)		REFERENCES odczynnik(id),
    CONSTRAINT		  dokumentacja_fk 		FOREIGN KEY(dokumentacja_id)		REFERENCES dokumentacja(id)

);


CREATE TABLE przeprowadza_eksperyment
(
    data_rozpoczecia    date         not null,
    data_zakonczenia    date,

    eksperyment_id     serial     not null,
    pracownik_id         serial     not null,   
    CONSTRAINT		pracownik_fk	FOREIGN KEY(pracownik_id)		REFERENCES pracownik(id),
    CONSTRAINT		eksperyment_fk	FOREIGN KEY(eksperyment_id)		REFERENCES eksperyment(id)
);
