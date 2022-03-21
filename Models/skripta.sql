SET IDENTITY_INSERT [Autobuska stanica] ON;

INSERT INTO [AutobuskeStanice3].[dbo].[Autobuska stanica]([ID],[Ime])
VALUES (1,'Glavna autobuska stanica Niš');

INSERT INTO [AutobuskeStanice3].[dbo].[Autobuska stanica]([ID],[Ime])
VALUES (2,'Glavna autobuska stanica Leskovac');

SET IDENTITY_INSERT [Autobuska stanica] OFF;

SET IDENTITY_INSERT [Autobusi] ON;

INSERT INTO [AutobuskeStanice3].[dbo].[Autobusi]([ID],[Prevoznik], [Kapacitet])
VALUES (1,'Kanis', 85);

INSERT INTO [AutobuskeStanice3].[dbo].[Autobusi]([ID],[Prevoznik], [Kapacitet])
VALUES (2,'Simplon', 77);

INSERT INTO [AutobuskeStanice3].[dbo].[Autobusi]([ID],[Prevoznik], [Kapacitet])
VALUES (3,'Niš Ekspres', 73);

INSERT INTO [AutobuskeStanice3].[dbo].[Autobusi]([ID],[Prevoznik], [Kapacitet])
VALUES (4,'Lasta', 81);

INSERT INTO [AutobuskeStanice3].[dbo].[Autobusi]([ID],[Prevoznik], [Kapacitet])
VALUES (5,'Kavim Jedinstvo', 69);

SET IDENTITY_INSERT [Autobusi] OFF;

SET IDENTITY_INSERT [Odredista] ON;

INSERT INTO [AutobuskeStanice3].[dbo].[Odredista]([ID],[Naziv], [AutobuskaStanicaID])
VALUES (1,'Leskovac', 1);

INSERT INTO [AutobuskeStanice3].[dbo].[Odredista]([ID],[Naziv], [AutobuskaStanicaID])
VALUES (2,'Beograd', 1);

INSERT INTO [AutobuskeStanice3].[dbo].[Odredista]([ID],[Naziv], [AutobuskaStanicaID])
VALUES (3,'Beč', 1);

INSERT INTO [AutobuskeStanice3].[dbo].[Odredista]([ID],[Naziv], [AutobuskaStanicaID])
VALUES (4,'Niš', 2);

INSERT INTO [AutobuskeStanice3].[dbo].[Odredista]([ID],[Naziv], [AutobuskaStanicaID])
VALUES (5,'Beograd', 2);

INSERT INTO [AutobuskeStanice3].[dbo].[Odredista]([ID],[Naziv], [AutobuskaStanicaID])
VALUES (6,'Beč', 2);

SET IDENTITY_INSERT [Odredista] OFF;

SET IDENTITY_INSERT [Putovanja] ON;

INSERT INTO [AutobuskeStanice3].[dbo].[Putovanja]([ID],[VremePolaska], [VremeTrajanjaPuta], [brojPeronaPolaska], [AutobusID], [OdredisteID])
VALUES (1,'08:00','1č 12min', 5,5,1);

INSERT INTO [AutobuskeStanice3].[dbo].[Putovanja]([ID],[VremePolaska],[VremeTrajanjaPuta], [brojPeronaPolaska], [AutobusID], [OdredisteID])
VALUES (2,'09:00','50min', 1,1,1);

INSERT INTO [AutobuskeStanice3].[dbo].[Putovanja]([ID],[VremePolaska], [VremeTrajanjaPuta], [brojPeronaPolaska], [AutobusID], [OdredisteID])
VALUES (3,'10:00','1č 5min', 2,2,1);

INSERT INTO [AutobuskeStanice3].[dbo].[Putovanja]([ID],[VremePolaska], [VremeTrajanjaPuta], [brojPeronaPolaska], [AutobusID], [OdredisteID])
VALUES (4,'11:00','1č 10min', 3,3,1);

INSERT INTO [AutobuskeStanice3].[dbo].[Putovanja]([ID],[VremePolaska], [VremeTrajanjaPuta], [brojPeronaPolaska], [AutobusID], [OdredisteID])
VALUES (5,'12:00','55min', 4,4,1);

INSERT INTO [AutobuskeStanice3].[dbo].[Putovanja]([ID],[VremePolaska], [VremeTrajanjaPuta], [brojPeronaPolaska], [AutobusID], [OdredisteID])
VALUES (6,'13:00','1č 15min', 5,5,1);

INSERT INTO [AutobuskeStanice3].[dbo].[Putovanja]([ID],[VremePolaska], [VremeTrajanjaPuta], [brojPeronaPolaska], [AutobusID], [OdredisteID])
VALUES (7,'14:00','50min', 1,1,1);

INSERT INTO [AutobuskeStanice3].[dbo].[Putovanja]([ID],[VremePolaska], [VremeTrajanjaPuta], [brojPeronaPolaska], [AutobusID], [OdredisteID])
VALUES (8,'15:00','57min', 2,2,1);

INSERT INTO [AutobuskeStanice3].[dbo].[Putovanja]([ID],[VremePolaska], [VremeTrajanjaPuta], [brojPeronaPolaska], [AutobusID], [OdredisteID])
VALUES (9,'16:00','59min', 3,3,1);

INSERT INTO [AutobuskeStanice3].[dbo].[Putovanja]([ID],[VremePolaska], [VremeTrajanjaPuta], [brojPeronaPolaska], [AutobusID], [OdredisteID])
VALUES (10,'17:00','1č', 4,4,1);

INSERT INTO [AutobuskeStanice3].[dbo].[Putovanja]([ID],[VremePolaska], [VremeTrajanjaPuta], [brojPeronaPolaska], [AutobusID], [OdredisteID])
VALUES (11,'18:00','1č 10min', 5,5,1);

INSERT INTO [AutobuskeStanice3].[dbo].[Putovanja]([ID],[VremePolaska], [VremeTrajanjaPuta], [brojPeronaPolaska], [AutobusID], [OdredisteID])
VALUES (12,'19:00','52min', 1,1,1);

INSERT INTO [AutobuskeStanice3].[dbo].[Putovanja]([ID],[VremePolaska], [VremeTrajanjaPuta], [brojPeronaPolaska], [AutobusID], [OdredisteID])
VALUES (13,'20:00','1č 7min', 2,2,1);

INSERT INTO [AutobuskeStanice3].[dbo].[Putovanja]([ID],[VremePolaska], [VremeTrajanjaPuta], [brojPeronaPolaska], [AutobusID], [OdredisteID])
VALUES (14,'21:00','1č 14min', 3,3,1);

INSERT INTO [AutobuskeStanice3].[dbo].[Putovanja]([ID],[VremePolaska], [VremeTrajanjaPuta], [brojPeronaPolaska], [AutobusID], [OdredisteID])
VALUES (15,'22:00','1č 2min', 4,4,1);

INSERT INTO [AutobuskeStanice3].[dbo].[Putovanja]([ID],[VremePolaska], [VremeTrajanjaPuta], [brojPeronaPolaska], [AutobusID], [OdredisteID])
VALUES (16,'06:00','3č 35min', 9,4,2);

INSERT INTO [AutobuskeStanice3].[dbo].[Putovanja]([ID],[VremePolaska], [VremeTrajanjaPuta], [brojPeronaPolaska], [AutobusID], [OdredisteID])
VALUES (17,'08:00','3č 45min', 10,5,2);

INSERT INTO [AutobuskeStanice3].[dbo].[Putovanja]([ID],[VremePolaska], [VremeTrajanjaPuta], [brojPeronaPolaska], [AutobusID], [OdredisteID])
VALUES (18,'10:00','3č 10min', 8,3,2);

INSERT INTO [AutobuskeStanice3].[dbo].[Putovanja]([ID],[VremePolaska], [VremeTrajanjaPuta], [brojPeronaPolaska], [AutobusID], [OdredisteID])
VALUES (19,'12:00','3č 5min', 7,2,2);

INSERT INTO [AutobuskeStanice3].[dbo].[Putovanja]([ID],[VremePolaska], [VremeTrajanjaPuta], [brojPeronaPolaska], [AutobusID], [OdredisteID])
VALUES (20,'14:00','3č 20min', 9,4,2);

INSERT INTO [AutobuskeStanice3].[dbo].[Putovanja]([ID],[VremePolaska], [VremeTrajanjaPuta], [brojPeronaPolaska], [AutobusID], [OdredisteID])
VALUES (21,'16:00','2č 40min', 6,1,2);

INSERT INTO [AutobuskeStanice3].[dbo].[Putovanja]([ID],[VremePolaska], [VremeTrajanjaPuta], [brojPeronaPolaska], [AutobusID], [OdredisteID])
VALUES (22,'18:00','3č 22min', 8,3,2);

INSERT INTO [AutobuskeStanice3].[dbo].[Putovanja]([ID],[VremePolaska], [VremeTrajanjaPuta], [brojPeronaPolaska], [AutobusID], [OdredisteID])
VALUES (23,'20:00','3č 42min', 7,2,2);

INSERT INTO [AutobuskeStanice3].[dbo].[Putovanja]([ID],[VremePolaska], [VremeTrajanjaPuta], [brojPeronaPolaska], [AutobusID], [OdredisteID])
VALUES (24,'22:00','3č 45min', 10,5,2);

INSERT INTO [AutobuskeStanice3].[dbo].[Putovanja]([ID],[VremePolaska], [VremeTrajanjaPuta], [brojPeronaPolaska], [AutobusID], [OdredisteID])
VALUES (25,'23:30','2č 40min', 6,1,2);

INSERT INTO [AutobuskeStanice3].[dbo].[Putovanja]([ID],[VremePolaska], [VremeTrajanjaPuta], [brojPeronaPolaska], [AutobusID], [OdredisteID])
VALUES (26,'02:33','14č 42min', 12,4,3);

INSERT INTO [AutobuskeStanice3].[dbo].[Putovanja]([ID],[VremePolaska], [VremeTrajanjaPuta], [brojPeronaPolaska], [AutobusID], [OdredisteID])
VALUES (27,'17:00','12č 45min', 11,3,3);

INSERT INTO [AutobuskeStanice3].[dbo].[Putovanja]([ID],[VremePolaska], [VremeTrajanjaPuta], [brojPeronaPolaska], [AutobusID], [OdredisteID])
VALUES (28,'08:00','1č 3min', 2,2,4);

INSERT INTO [AutobuskeStanice3].[dbo].[Putovanja]([ID],[VremePolaska], [VremeTrajanjaPuta], [brojPeronaPolaska], [AutobusID], [OdredisteID])
VALUES (29,'09:00','40min', 5,5,4);

INSERT INTO [AutobuskeStanice3].[dbo].[Putovanja]([ID],[VremePolaska], [VremeTrajanjaPuta], [brojPeronaPolaska], [AutobusID], [OdredisteID])
VALUES (30,'10:00','52min', 3,3,4);

INSERT INTO [AutobuskeStanice3].[dbo].[Putovanja]([ID],[VremePolaska], [VremeTrajanjaPuta], [brojPeronaPolaska], [AutobusID], [OdredisteID])
VALUES (31,'11:00','50min', 4,4,4);

INSERT INTO [AutobuskeStanice3].[dbo].[Putovanja]([ID],[VremePolaska], [VremeTrajanjaPuta], [brojPeronaPolaska], [AutobusID], [OdredisteID])
VALUES (32,'12:00','40min', 1,1,4);

INSERT INTO [AutobuskeStanice3].[dbo].[Putovanja]([ID],[VremePolaska], [VremeTrajanjaPuta], [brojPeronaPolaska], [AutobusID], [OdredisteID])
VALUES (33,'13:00','50min', 5,5,4);

INSERT INTO [AutobuskeStanice3].[dbo].[Putovanja]([ID],[VremePolaska], [VremeTrajanjaPuta], [brojPeronaPolaska], [AutobusID], [OdredisteID])
VALUES (34,'14:00','1č 5min', 2,2,4);

INSERT INTO [AutobuskeStanice3].[dbo].[Putovanja]([ID],[VremePolaska], [VremeTrajanjaPuta], [brojPeronaPolaska], [AutobusID], [OdredisteID])
VALUES (35,'15:00','1č 10min', 3,3,4);

INSERT INTO [AutobuskeStanice3].[dbo].[Putovanja]([ID],[VremePolaska], [VremeTrajanjaPuta], [brojPeronaPolaska], [AutobusID], [OdredisteID])
VALUES (36,'16:00','45min', 1,1,4);

INSERT INTO [AutobuskeStanice3].[dbo].[Putovanja]([ID],[VremePolaska], [VremeTrajanjaPuta], [brojPeronaPolaska], [AutobusID], [OdredisteID])
VALUES (37,'17:00','1č 5min', 4,4,4);

INSERT INTO [AutobuskeStanice3].[dbo].[Putovanja]([ID],[VremePolaska], [VremeTrajanjaPuta], [brojPeronaPolaska], [AutobusID], [OdredisteID])
VALUES (38,'18:00','52min', 3,3,4);

INSERT INTO [AutobuskeStanice3].[dbo].[Putovanja]([ID],[VremePolaska], [VremeTrajanjaPuta], [brojPeronaPolaska], [AutobusID], [OdredisteID])
VALUES (39,'19:00','50min', 5,5,4);

INSERT INTO [AutobuskeStanice3].[dbo].[Putovanja]([ID],[VremePolaska], [VremeTrajanjaPuta], [brojPeronaPolaska], [AutobusID], [OdredisteID])
VALUES (40,'20:00','1č', 2,2,4);

INSERT INTO [AutobuskeStanice3].[dbo].[Putovanja]([ID],[VremePolaska], [VremeTrajanjaPuta], [brojPeronaPolaska], [AutobusID], [OdredisteID])
VALUES (41,'21:00','55min', 1,1,4);

INSERT INTO [AutobuskeStanice3].[dbo].[Putovanja]([ID],[VremePolaska], [VremeTrajanjaPuta], [brojPeronaPolaska], [AutobusID], [OdredisteID])
VALUES (42,'06:00','3č 55min', 9,4,5);

INSERT INTO [AutobuskeStanice3].[dbo].[Putovanja]([ID],[VremePolaska], [VremeTrajanjaPuta], [brojPeronaPolaska], [AutobusID], [OdredisteID])
VALUES (43,'08:00','3č 16min', 6,1,5);

INSERT INTO [AutobuskeStanice3].[dbo].[Putovanja]([ID],[VremePolaska], [VremeTrajanjaPuta], [brojPeronaPolaska], [AutobusID], [OdredisteID])
VALUES (44,'10:00','4č 3min', 7,2,5);

INSERT INTO [AutobuskeStanice3].[dbo].[Putovanja]([ID],[VremePolaska], [VremeTrajanjaPuta], [brojPeronaPolaska], [AutobusID], [OdredisteID])
VALUES (45,'12:00','4č 30min', 10,5,5);

INSERT INTO [AutobuskeStanice3].[dbo].[Putovanja]([ID],[VremePolaska], [VremeTrajanjaPuta], [brojPeronaPolaska], [AutobusID], [OdredisteID])
VALUES (46,'14:00','4č 15min', 8,3,5);

INSERT INTO [AutobuskeStanice3].[dbo].[Putovanja]([ID],[VremePolaska], [VremeTrajanjaPuta], [brojPeronaPolaska], [AutobusID], [OdredisteID])
VALUES (47,'16:00','3č 10min', 6,1,5);

INSERT INTO [AutobuskeStanice3].[dbo].[Putovanja]([ID],[VremePolaska], [VremeTrajanjaPuta], [brojPeronaPolaska], [AutobusID], [OdredisteID])
VALUES (48,'18:00','4č', 9,4,5);

INSERT INTO [AutobuskeStanice3].[dbo].[Putovanja]([ID],[VremePolaska], [VremeTrajanjaPuta], [brojPeronaPolaska], [AutobusID], [OdredisteID])
VALUES (49,'20:00','4č 10min', 7,2,5);

INSERT INTO [AutobuskeStanice3].[dbo].[Putovanja]([ID],[VremePolaska], [VremeTrajanjaPuta], [brojPeronaPolaska], [AutobusID], [OdredisteID])
VALUES (50,'22:00','4č 35min', 10,5,5);

INSERT INTO [AutobuskeStanice3].[dbo].[Putovanja]([ID],[VremePolaska], [VremeTrajanjaPuta], [brojPeronaPolaska], [AutobusID], [OdredisteID])
VALUES (51,'23:15','4č 15min', 8,3,5);

INSERT INTO [AutobuskeStanice3].[dbo].[Putovanja]([ID],[VremePolaska], [VremeTrajanjaPuta], [brojPeronaPolaska], [AutobusID], [OdredisteID])
VALUES (52,'06:00','3č 55min', 9,4,5);

INSERT INTO [AutobuskeStanice3].[dbo].[Putovanja]([ID],[VremePolaska], [VremeTrajanjaPuta], [brojPeronaPolaska], [AutobusID], [OdredisteID])
VALUES (53,'03:30','13č 45min', 11,1,6);

INSERT INTO [AutobuskeStanice3].[dbo].[Putovanja]([ID],[VremePolaska], [VremeTrajanjaPuta], [brojPeronaPolaska], [AutobusID], [OdredisteID])
VALUES (54,'15:20','13č 50min', 12,2,6);

SET IDENTITY_INSERT [Putovanja] OFF;

SET IDENTITY_INSERT [Karte] ON;

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (1,'jedan smer', 390,1);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (2,'povratna', 630,1);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (3,'studentska jedan smer', 350,1);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (4,'studentska povratna', 550,1);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (5,'jedan smer', 400, 2);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (6,'povratna', 680,2);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (7,'studentska jedan smer', 360,2);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (8,'studentska povratna', 560,2);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (9,'jedan smer', 400,3);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (10,'povratna', 670,3);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (11,'studentska jedan smer', 300,3);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (12,'studentska povratna', 500,3);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (13,'jedan smer', 500,4);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (14,'povratna', 890,4);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (15,'studentska jedan smer',380,4);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (16,'studentska povratna', 650,4);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (17,'jedan smer', 430,5);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (18,'povratna', 770,5);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (19,'studentska jedan smer', 380,5);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (20,'studentska povratna', 670,5);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (21,'jedan smer', 390,6);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (22,'povratna', 630,6);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (23,'studentska jedan smer', 350,6);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (24,'studentska povratna', 550,6);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (25,'jedan smer', 400, 7);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (26,'povratna', 680,7);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (27,'studentska jedan smer', 360,7);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (28,'studentska povratna', 560,7);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (29,'jedan smer', 400,8);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (30,'povratna', 670,8);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (31,'studentska jedan smer', 300,8);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (32,'studentska povratna', 500,8);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (33,'jedan smer', 500,9);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (34,'povratna', 890,9);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (35,'studentska jedan smer',380,9);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (36,'studentska povratna', 650,9);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (37,'jedan smer', 430,10);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (38,'povratna', 770,10);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (39,'studentska jedan smer', 380,10);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (40,'studentska povratna', 670,10);  

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (41,'jedan smer', 390,11);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (42,'povratna', 630,11);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (43,'studentska jedan smer', 350,11);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (44,'studentska povratna', 550,11);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (45,'jedan smer', 400, 12);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (46,'povratna', 680,12);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (47,'studentska jedan smer', 360,12);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (48,'studentska povratna', 560,12);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (49,'jedan smer', 400,13);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (50,'povratna', 670,13);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (51,'studentska jedan smer', 300,13);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (52,'studentska povratna', 500,13);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (53,'jedan smer', 310,14);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (54,'povratna', 590,14);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (55,'studentska jedan smer',250,14);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (56,'studentska povratna', 480,14);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (57,'jedan smer', 430,15);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (58,'povratna', 770,15);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (59,'studentska jedan smer', 380,15);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (60,'studentska povratna', 670,15);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (61,'jedan smer', 1050,16);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (62,'povratna', 1650,16);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (63,'studentska jedan smer',950,16);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (64,'studentska povratna', 1500,16);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (65,'jedan smer', 1150,17);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (66,'povratna', 1800,17);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (67,'studentska jedan smer', 1000,17);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (68,'studentska povratna', 1600,17);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (69,'jedan smer', 1280,18);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (70,'povratna', 1970,18);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (71,'studentska jedan smer', 1150,18);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (72,'studentska povratna', 1700,18);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (73,'jedan smer', 1200,19);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (74,'povratna', 1800,19);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (75,'studentska jedan smer', 1080,19);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (76,'studentska povratna', 1650,19);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (77,'jedan smer', 1050,20);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (78,'povratna', 1650,20);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (79,'studentska jedan smer',950,20);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (80,'studentska povratna', 1500,20);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (81,'jedan smer', 1250,21);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (82,'povratna', 1900,21);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (83,'studentska jedan smer',1150,21);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (84,'studentska povratna', 1780,21);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (85,'jedan smer', 1100,22);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (86,'povratna', 1600,22);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (87,'studentska jedan smer', 1000,22);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (88,'studentska povratna', 1500,22);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (89,'jedan smer', 1200,23);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (90,'povratna', 1800,23);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (91,'studentska jedan smer', 1080,23);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (92,'studentska povratna', 1650,23);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (93,'jedan smer', 1150,24);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (94,'povratna', 1800,24);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (95,'studentska jedan smer', 1000,24);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (96,'studentska povratna', 1600,24);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (97,'jedan smer', 1250,25);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (98,'povratna', 1900,25);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (99,'studentska jedan smer',1150,25);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (100,'studentska povratna', 1780,25);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (101,'jedan smer', 5250,26);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (102,'povratna', 8250,26);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (103,'jedan smer', 4880,27);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (104,'povratna', 7970,27);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (105,'jedan smer', 400,28);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (106,'povratna', 670,28);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (107,'studentska jedan smer', 300,28);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (108,'studentska povratna', 500,28);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (109,'jedan smer', 390,29);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (110,'povratna', 630,29);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (111,'studentska jedan smer', 350,29);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (112,'studentska povratna', 550,29);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (113,'jedan smer', 500,30);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (114,'povratna', 890,30);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (115,'studentska jedan smer',380,30);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (116,'studentska povratna', 650,30);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (117,'jedan smer', 430,31);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (118,'povratna', 770,31);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (119,'studentska jedan smer', 380,31);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (120,'studentska povratna', 670,31);  

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (121,'jedan smer', 400, 32);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (122,'povratna', 680,32);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (123,'studentska jedan smer', 360,32);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (124,'studentska povratna', 560,32);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (125,'jedan smer', 390,33);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (126,'povratna', 630,33);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (127,'studentska jedan smer', 350,33);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (128,'studentska povratna', 550,33);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (129,'jedan smer', 400,34);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (130,'povratna', 670,34);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (131,'studentska jedan smer', 300,34);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (132,'studentska povratna', 500,34);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (133,'jedan smer', 310,35);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (134,'povratna', 590,35);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (135,'studentska jedan smer',250,35);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (136,'studentska povratna', 480,35);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (137,'jedan smer', 400, 36);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (138,'povratna', 680,36);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (139,'studentska jedan smer', 360,36);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (140,'studentska povratna', 560,36);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (141,'jedan smer', 430,37);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (142,'povratna', 770,37);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (143,'studentska jedan smer', 380,37);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (144,'studentska povratna', 670,37); 

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (145,'jedan smer', 500,38);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (146,'povratna', 890,38);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (147,'studentska jedan smer',380,38);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (148,'studentska povratna', 650,38);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (149,'jedan smer', 390,39);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (150,'povratna', 630,39);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (151,'studentska jedan smer', 350,39);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (152,'studentska povratna', 550,39);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (153,'jedan smer', 400,40);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (154,'povratna', 670,40);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (155,'studentska jedan smer', 300,40);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (156,'studentska povratna', 500,40);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (157,'jedan smer', 400, 41);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (158,'povratna', 680,41);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (159,'studentska jedan smer', 360,41);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (160,'studentska povratna', 560,41);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (161,'jedan smer', 1150, 42);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (162,'povratna', 1850,42);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (163,'studentska jedan smer', 1050,42);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (164,'studentska povratna', 1700,42);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (165,'jedan smer', 1200, 43);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (166,'povratna', 1900,43);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (167,'studentska jedan smer', 1100,43);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (168,'studentska povratna', 1800,43);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (169,'jedan smer', 1180, 44);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (170,'povratna', 1850,44);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (171,'studentska jedan smer', 1080,44);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (172,'studentska povratna', 1740,44);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (173,'jedan smer', 1240, 45);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (174,'povratna', 1880,45);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (175,'studentska jedan smer', 1120,45);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (176,'studentska povratna', 1760,45);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (177,'jedan smer', 1400, 46);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (178,'povratna', 2310,46);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (179,'studentska jedan smer', 1150,46);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (180,'studentska povratna', 2000,46);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (181,'jedan smer', 1200, 47);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (182,'povratna', 1900,47);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (183,'studentska jedan smer', 1100,47);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (184,'studentska povratna', 1800,47);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (185,'jedan smer', 1150, 48);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (186,'povratna', 1850,48);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (187,'studentska jedan smer', 1050,48);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (188,'studentska povratna', 1700,48);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (189,'jedan smer', 1180, 49);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (190,'povratna', 1850,49);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (191,'studentska jedan smer', 1080,49);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (192,'studentska povratna', 1740,49);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (193,'jedan smer', 1240, 50);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (194,'povratna', 1880,50);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (195,'studentska jedan smer', 1120,50);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (196,'studentska povratna', 1760,50);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (197,'jedan smer', 1280, 51);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (198,'povratna', 1970,51);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (199,'studentska jedan smer', 1150,51);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (200,'studentska povratna', 1780,51);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (201,'jedan smer', 1150, 52);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (202,'povratna', 1850,52);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (203,'studentska jedan smer', 1050,52);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (204,'studentska povratna', 1700,52);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (205,'jedan smer', 5400, 53);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (206,'povratna', 8500,53);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (213,'jedan smer', 5380, 54);

INSERT INTO [AutobuskeStanice3].[dbo].[Karte]([ID],[TipKarte],[Cena],[PutovanjeID])
VALUES (214,'povratna', 8450,54);

SET IDENTITY_INSERT [Karte] OFF;


















































































