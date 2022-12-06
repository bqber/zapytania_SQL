CREATE TABLE `Zaloga` (
  `Id_Zaloganta` int AUTO_INCREMENT,
  `Imie_Nazwisko` text,
  `PESEL` varchar(255),
  `Tel` int,
  `Email` text,
  `Stanowisko` text,
  PRIMARY KEY (`Id_Zaloganta`)
);

CREATE TABLE `Samolot` (
  `Id_Samolot` int AUTO_INCREMENT,
  `Liczba_miejsc` varchar(255),
  `Zasieg` varchar(255),
  `Model` varchar(255),
  PRIMARY KEY (`Id_Samolot`)
);


CREATE TABLE `Pasazer` (
  `Id_Pasazera` int AUTO_INCREMENT,
  `Imie_Nazwisko` text,
  `PESEL` varchar(255),
  `Tel` int,
  `Email` text,
  PRIMARY KEY (`Id_Pasazera`)
);

CREATE TABLE `Destynacja` (
  `Id_Destynacji` int AUTO_INCREMENT,
  `Waluta` varchar(255),
  `Nazwa_Destynacji` varchar(255),
  PRIMARY KEY (`Id_Destynacji`)
);


INSERT INTO samolot (Liczba_miejsc, Zasieg, Model)
VALUES ('364','17370','Boeing 777');
INSERT INTO samolot (Liczba_miejsc, Zasieg, Model)
VALUES ('266','7500','Airbus A300');
INSERT INTO samolot (Liczba_miejsc, Zasieg, Model)
VALUES ('186','5420','Boeing 737');

INSERT INTO pasazer (Imie_Nazwisko, PESEL, Tel, Email)
VALUES ('Miroslaw Janowski','79080999362','145672649','Mirosław_Janowski@gmail.com');
INSERT INTO pasazer (Imie_Nazwisko, PESEL, Tel, Email)
VALUES ('Jan Mirowski','62090566723','126341180','Jan_Mirowski@gmail.com');
INSERT INTO pasazer (Imie_Nazwisko, PESEL, Tel, Email)
VALUES ('Katarzyna Kejsi','88021749696','113445879','Katarzyna_Kejsi@gmail.com');
INSERT INTO pasazer (Imie_Nazwisko, PESEL, Tel, Email)
VALUES ('Michał Dziąg','58112234987','850514709','Michał_Dziąg@gmail.com');
INSERT INTO pasazer (Imie_Nazwisko, PESEL, Tel, Email)
VALUES ('Roman Janszewski','97082349879','763284629','Roman_Janszewski@gmail.com');
INSERT INTO pasazer (Imie_Nazwisko, PESEL, Tel, Email)
VALUES ('Daniel Domber','81091258851','276873624','Daniel_Domber@gmail.com');
INSERT INTO pasazer (Imie_Nazwisko, PESEL, Tel, Email)
VALUES ('Kornel Smogorzewski','60050466759','920209022','Kornel_Smogorzewski@gmail.com');
INSERT INTO pasazer (Imie_Nazwisko, PESEL, Tel, Email)
VALUES ('Krzysztof Tyszkiewicz','55081556775','456325907','Krzysztof_Tyszkiewicz@gmail.com');
INSERT INTO pasazer (Imie_Nazwisko, PESEL, Tel, Email)
VALUES ('Carla_Hegeda','94110388822','210704201','Carla_Hegeda@gmail.com');
INSERT INTO pasazer (Imie_Nazwisko, PESEL, Tel, Email)
VALUES ('Duży Drip','48050229792','202008311','Duzy_Drip@gmail.com');
INSERT INTO pasazer (Imie_Nazwisko, PESEL, Tel, Email)
VALUES ('Jakub Baran','12345678901','983219023','jaba@gmail.com');

INSERT INTO zaloga (Imie_Nazwisko, PESEL, Tel, Email, Stanowisko)
VALUES ('Chris Peters','28229868394','112997998','Chris_Peters@gmail.com', 'Pilot');
INSERT INTO zaloga (Imie_Nazwisko, PESEL, Tel, Email, Stanowisko)
VALUES ('Michal Danielczyk','25915082542','899789211','Michal_Danielczyk@gmail.com', 'Pilot');
INSERT INTO zaloga (Imie_Nazwisko, PESEL, Tel, Email, Stanowisko)
VALUES ('Daniel Michalczyk','97150008552','634202137','Daniel_Michalczyk@gmail.com', 'Pilot');
INSERT INTO zaloga (Imie_Nazwisko, PESEL, Tel, Email, Stanowisko)
VALUES ('Adam Mirowski','19536090037','100420105','Adam_Mirowski@gmail.com', 'Pilot');
INSERT INTO zaloga (Imie_Nazwisko, PESEL, Tel, Email, Stanowisko)
VALUES ('Miroslaw Adamski','87209039522','767932001','Miroslaw_Adamski@gmail.com', 'Pilot');
INSERT INTO zaloga (Imie_Nazwisko, PESEL, Tel, Email, Stanowisko)
VALUES ('Marshall Mathers','77994313331','702140025','Marshall_Mathers@gmail.com', 'Pilot');
INSERT INTO zaloga (Imie_Nazwisko, PESEL, Tel, Email, Stanowisko)
VALUES ('Filip Szczesniak','73313492522','980230199','Filip_Szczesniak@gmail.com', 'Pilot');
INSERT INTO zaloga (Imie_Nazwisko, PESEL, Tel, Email, Stanowisko)
VALUES ('Agata_Magowska','85649357739','165711035','Agata_Magowska@gmail.com', 'Pilot');
INSERT INTO zaloga (Imie_Nazwisko, PESEL, Tel, Email, Stanowisko)
VALUES ('Adrian_Nowak','25975787344','175816569','Adrian_Nowak@gmail.com', 'Pilot');
INSERT INTO zaloga (Imie_Nazwisko, PESEL, Tel, Email, Stanowisko)
VALUES ('Mateusz_Izydor','82798173215','920371232','Mateusz_Izydor@gmail.com', 'Pilot');

INSERT INTO destynacja (Nazwa_Destynacji, Waluta)
VALUES ('Lotnisko Chopina Warszawa','PLN');
INSERT INTO destynacja (Nazwa_Destynacji, Waluta)
VALUES ('Lotnisko Charlesa de Gaullea Paryz','EUR');
INSERT INTO destynacja (Nazwa_Destynacji, Waluta)
VALUES ('Lotnisko Amsterdam-Schiphol','EUR');
INSERT INTO destynacja (Nazwa_Destynacji, Waluta)
VALUES ('Lotnisko Londyn-City','GBP');
INSERT INTO destynacja (Nazwa_Destynacji, Waluta)
VALUES ('Lotnisko Johna F. Kennedyego Nowy Jork','DOL');
INSERT INTO destynacja (Nazwa_Destynacji, Waluta)
VALUES ('Międzynarodowe Lotnisko w Los Angeles','DOL');
INSERT INTO destynacja (Nazwa_Destynacji, Waluta)
VALUES ('Port lotniczy Tokio-Haneda Tokio','JPY');
INSERT INTO destynacja (Nazwa_Destynacji, Waluta)
VALUES ('Port lotniczy Dubaj','AED');
INSERT INTO destynacja (Nazwa_Destynacji, Waluta)
VALUES ('Port lotniczy Stambul','TRY');
INSERT INTO destynacja (Nazwa_Destynacji, Waluta)
VALUES ('Port lotniczy Madryt-Barajas','EUR');


CREATE TABLE `Lot` (
  `Id_Lotu` int AUTO_INCREMENT,
  `Id_Samolot` int,
  `Id_Destynacji` int,
  `Id_Pasazera` int,
  `Liczba_Miejsc` int,
  `Koszt_Biletu` varchar(255),
  `Data_Odlotu` date,
  `Godzina_Odlotu` time,
  `Data_Przylotu` date,
  `Godzina_Przylotu` time,
  `Id_Zaloganta` int,
  PRIMARY KEY (`Id_Lotu`),
  FOREIGN KEY (`Id_Zaloganta`) REFERENCES `Zaloga`(`Id_Zaloganta`),
  FOREIGN KEY (`Id_Pasazera`) REFERENCES `Pasazer`(`Id_Pasazera`),
  FOREIGN KEY (`Id_Samolot`) REFERENCES `Samolot`(`Id_Samolot`),
  FOREIGN KEY (`Id_Destynacji`) REFERENCES `Destynacja`(`Id_Destynacji`)
);

INSERT INTO lot (Id_Samolot,Id_Destynacji,Id_Pasazera,Liczba_Miejsc,Koszt_Biletu,Data_Odlotu,Godzina_Odlotu,Data_Przylotu,Godzina_Przylotu,Id_Zaloganta)
VALUES (1,1,16,140,'180zł','12.05.2023','16:20','12.05.2023','19:50',1);
INSERT INTO lot (Id_Samolot,Id_Destynacji,Id_Pasazera,Liczba_Miejsc,Koszt_Biletu,Data_Odlotu,Godzina_Odlotu,Data_Przylotu,Godzina_Przylotu,Id_Zaloganta)
VALUES (2,2,17,237,'350zł','17.05.2023','11:20','17.05.2023','20:15',2);
INSERT INTO lot (Id_Samolot,Id_Destynacji,Id_Pasazera,Liczba_Miejsc,Koszt_Biletu,Data_Odlotu,Godzina_Odlotu,Data_Przylotu,Godzina_Przylotu,Id_Zaloganta)
VALUES (3,3,18,215,'310zł','14.05.2023','22:00','15.05.2023','05:30',3);
INSERT INTO lot (Id_Samolot,Id_Destynacji,Id_Pasazera,Liczba_Miejsc,Koszt_Biletu,Data_Odlotu,Godzina_Odlotu,Data_Przylotu,Godzina_Przylotu,Id_Zaloganta)
VALUES (4,4,19,119,'120zł','25.05.2023','14:20','25.05.2023','16:00',4);
