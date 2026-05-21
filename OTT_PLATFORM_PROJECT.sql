create database ott;
use ott;

CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL,
    created_at DATE
);

INSERT INTO Users VALUES
(1,'Arun Kumar','arun.kumar@gmail.com','Arun@123','2024-01-01'),
(2,'Priya Sharma','priya.sharma@gmail.com','Priya@123','2024-01-02'),
(3,'Karthik Raj','karthik.raj@gmail.com','Karthik@123','2024-01-03'),
(4,'Sneha Reddy','sneha.reddy@gmail.com','Sneha@123','2024-01-04'),
(5,'Rahul Verma','rahul.verma@gmail.com','Rahul@123','2024-01-05'),
(6,'Anjali Mehta','anjali.mehta@gmail.com','Anjali@123','2024-01-06'),
(7,'Vijay Kumar','vijay.kumar@gmail.com','Vijay@123','2024-01-07'),
(8,'Meena Iyer','meena.iyer@gmail.com','Meena@123','2024-01-08'),
(9,'Ajay Singh','ajay.singh@gmail.com','Ajay@123','2024-01-09'),
(10,'Kiran Patel','kiran.patel@gmail.com','Kiran@123','2024-01-10'),
(11,'Rohit Sharma','rohit.sharma@gmail.com','Rohit@123','2024-01-11'),
(12,'Virat Kohli','virat.kohli@gmail.com','Virat@123','2024-01-12'),
(13,'MS Dhoni','ms.dhoni@gmail.com','Dhoni@123','2024-01-13'),
(14,'Deepika Padukone','deepika@gmail.com','Deepika@123','2024-01-14'),
(15,'Alia Bhatt','alia@gmail.com','Alia@123','2024-01-15'),
(16,'Ranbir Kapoor','ranbir@gmail.com','Ranbir@123','2024-01-16'),
(17,'Suriya Sivakumar','suriya@gmail.com','Suriya@123','2024-01-17'),
(18,'Nayanthara','nayan@gmail.com','Nayan@123','2024-01-18'),
(19,'Allu Arjun','allu@gmail.com','Allu@123','2024-01-19'),
(20,'Yash','yash@gmail.com','Yash@123','2024-01-20');


CREATE TABLE Profiles (
    profile_id INT PRIMARY KEY,
    user_id INT,
    profile_name VARCHAR(50),
    age INT,
    
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

INSERT INTO Profiles VALUES
(1,1,'Arun_Main',28),
(2,1,'Arun_Kids',10),

(3,2,'Priya_Main',25),
(4,2,'Priya_Family',12),

(5,3,'Karthik_Profile',30),
(6,3,'Karthik_Guest',20),

(7,4,'Sneha_Profile',27),
(8,4,'Sneha_Kids',9),

(9,5,'Rahul_Main',29),
(10,5,'Rahul_Child',11),

(11,6,'Anjali_Profile',26),
(12,6,'Anjali_Kids',8),

(13,7,'Vijay_Main',35),
(14,7,'Vijay_Family',14),

(15,8,'Meena_Profile',32),
(16,8,'Meena_Kids',7),

(17,9,'Ajay_Main',31),
(18,9,'Ajay_Kids',10),

(19,10,'Kiran_Profile',28),
(20,10,'Kiran_Kids',9),

(21,11,'Rohit_Main',34),
(22,11,'Rohit_Kids',11),

(23,12,'Virat_Profile',35),
(24,12,'Virat_Kids',10),

(25,13,'Dhoni_Main',40),
(26,13,'Dhoni_Family',15),

(27,14,'Deepika_Profile',38),
(28,14,'Deepika_Kids',12),

(29,15,'Alia_Main',32),
(30,15,'Alia_Kids',10),

(31,16,'Ranbir_Profile',39),
(32,16,'Ranbir_Family',14),

(33,17,'Suriya_Main',42),
(34,17,'Suriya_Kids',13),

(35,18,'Nayan_Profile',39),
(36,18,'Nayan_Kids',11),

(37,19,'Allu_Main',40),
(38,19,'Allu_Kids',12),

(39,20,'Yash_Profile',38),
(40,20,'Yash_Kids',10);


CREATE TABLE Content (
    content_id INT PRIMARY KEY,
    title VARCHAR(100),
    type VARCHAR(10),   -- Movie / Series
    release_date DATE,
    duration INT,       -- in minutes (NULL for series)
    language VARCHAR(50)
);

INSERT INTO Content VALUES
(1,'Leo','Movie','2023-10-19',160,'Tamil'),
(2,'Vikram','Movie','2022-06-03',170,'Tamil'),
(3,'Jailer','Movie','2023-08-10',150,'Tamil'),
(4,'Avengers: Endgame','Movie','2019-04-26',181,'English'),
(5,'Inception','Movie','2010-07-16',148,'English'),
(6,'Interstellar','Movie','2014-11-07',169,'English'),
(7,'The Dark Knight','Movie','2008-07-18',152,'English'),
(8,'RRR','Movie','2022-03-25',182,'Telugu'),
(9,'Baahubali','Movie','2015-07-10',159,'Telugu'),
(10,'KGF Chapter 2','Movie','2022-04-14',168,'Kannada'),

(11,'Stranger Things','Series','2022-07-01',NULL,'English'),
(12,'Money Heist','Series','2021-12-03',NULL,'Spanish'),
(13,'Breaking Bad','Series','2013-09-29',NULL,'English'),
(14,'Game of Thrones','Series','2019-05-19',NULL,'English'),
(15,'The Family Man','Series','2021-06-04',NULL,'Hindi'),
(16,'Mirzapur','Series','2020-10-23',NULL,'Hindi'),
(17,'Sacred Games','Series','2019-08-15',NULL,'Hindi'),
(18,'Wednesday','Series','2022-11-23',NULL,'English'),
(19,'Squid Game','Series','2021-09-17',NULL,'Korean'),
(20,'Dark','Series','2020-06-27',NULL,'German'),
(21,'Pushpa','Movie','2021-12-17',179,'Telugu'),
(22,'Master','Movie','2021-01-13',178,'Tamil'),
(23,'Doctor','Movie','2021-10-09',150,'Tamil'),
(24,'Soorarai Pottru','Movie','2020-11-12',153,'Tamil'),
(25,'Dangal','Movie','2016-12-23',161,'Hindi'),
(26,'3 Idiots','Movie','2009-12-25',170,'Hindi'),
(27,'PK','Movie','2014-12-19',153,'Hindi'),
(28,'Baahubali 2','Movie','2017-04-28',167,'Telugu'),
(29,'Kantara','Movie','2022-09-30',148,'Kannada'),
(30,'Drishyam','Movie','2015-07-31',163,'Hindi'),

(31,'Friends','Series','2004-05-06',NULL,'English'),
(32,'The Office','Series','2013-05-16',NULL,'English'),
(33,'Sherlock','Series','2017-01-15',NULL,'English'),
(34,'Peaky Blinders','Series','2022-04-03',NULL,'English'),
(35,'Narcos','Series','2017-09-01',NULL,'English'),
(36,'Loki','Series','2023-10-05',NULL,'English'),
(37,'WandaVision','Series','2021-03-05',NULL,'English'),
(38,'The Boys','Series','2023-06-16',NULL,'English'),
(39,'Delhi Crime','Series','2022-08-26',NULL,'Hindi'),
(40,'Panchayat','Series','2022-05-20',NULL,'Hindi');


CREATE TABLE Episodes (
    episode_id INT PRIMARY KEY,
    content_id INT,
    episode_number INT,
    title VARCHAR(100),
    duration INT,   -- in minutes
    
    FOREIGN KEY (content_id) REFERENCES Content(content_id)
);


INSERT INTO Episodes VALUES

-- Stranger Things (11)
(1,11,1,'The Vanishing',50),
(2,11,2,'The Weirdo',48),
(3,11,3,'Holly Jolly',51),

-- Money Heist (12)
(4,12,1,'Episode 1',45),
(5,12,2,'Episode 2',47),
(6,12,3,'Episode 3',50),

-- Breaking Bad (13)
(7,13,1,'Pilot',58),
(8,13,2,'Cat in Bag',48),
(9,13,3,'River',47),

-- Game of Thrones (14)
(10,14,1,'Winter Is Coming',60),
(11,14,2,'Kingsroad',56),
(12,14,3,'Lord Snow',58),

-- Family Man (15)
(13,15,1,'Mission Start',45),
(14,15,2,'Chase',48),
(15,15,3,'Threat',50),

-- Mirzapur (16)
(16,16,1,'Start',50),
(17,16,2,'Conflict',52),
(18,16,3,'Power',55),

-- Sacred Games (17)
(19,17,1,'Ashwathama',50),
(20,17,2,'Halahala',48),
(21,17,3,'Atapi Vatapi',52),

-- Wednesday (18)
(22,18,1,'Wednesday Child',45),
(23,18,2,'Solitude',48),
(24,18,3,'Friend or Foe',50),

-- Squid Game (19)
(25,19,1,'Red Light Green Light',55),
(26,19,2,'Hell',52),
(27,19,3,'Umbrella',50),

-- Dark (20)
(28,20,1,'Secrets',50),
(29,20,2,'Lies',48),
(30,20,3,'Past and Present',52),

-- Friends (31)
(31,31,1,'Pilot',22),
(32,31,2,'Sonogram',22),
(33,31,3,'Thumb',22),

-- The Office (32)
(34,32,1,'Pilot',23),
(35,32,2,'Diversity Day',22),
(36,32,3,'Health Care',22),

-- Sherlock (33)
(37,33,1,'Study in Pink',88),
(38,33,2,'Blind Banker',89),
(39,33,3,'Great Game',90),

-- Peaky Blinders (34)
(40,34,1,'Episode 1',55),
(41,34,2,'Episode 2',57),
(42,34,3,'Episode 3',60),

-- Narcos (35)
(43,35,1,'Descenso',50),
(44,35,2,'Sword',48),
(45,35,3,'Men of Always',52),

-- Loki (36)
(46,36,1,'Glorious Purpose',50),
(47,36,2,'Variant',48),
(48,36,3,'Lamentis',52),

-- WandaVision (37)
(49,37,1,'Filmed Before Live',30),
(50,37,2,'Don’t Touch Dial',32),
(51,37,3,'Now in Color',34),

-- The Boys (38)
(52,38,1,'The Name of Game',55),
(53,38,2,'Cherry',52),
(54,38,3,'Get Some',50),

-- Delhi Crime (39)
(55,39,1,'Episode 1',50),
(56,39,2,'Episode 2',52),
(57,39,3,'Episode 3',54),

-- Panchayat (40)
(58,40,1,'Gram Panchayat',30),
(59,40,2,'Development',32),
(60,40,3,'Meeting',34);


CREATE TABLE Genres (
    genre_id INT PRIMARY KEY,
    genre_name VARCHAR(50)
);

INSERT INTO Genres VALUES
(1,'Action'),
(2,'Drama'),
(3,'Comedy'),
(4,'Thriller'),
(5,'Sci-Fi'),
(6,'Crime'),
(7,'Fantasy'),
(8,'Horror'),
(9,'Romance'),
(10,'Adventure');

CREATE TABLE Content_Genre (
    content_id INT,
    genre_id INT,
    
    PRIMARY KEY (content_id, genre_id),
    FOREIGN KEY (content_id) REFERENCES Content(content_id),
    FOREIGN KEY (genre_id) REFERENCES Genres(genre_id)
);

INSERT INTO Content_Genre VALUES

-- Movies (1–10)
(1,1),(1,4),
(2,1),(2,6),
(3,1),(3,2),
(4,1),(4,10),
(5,5),(5,4),
(6,5),(6,2),
(7,1),(7,6),
(8,1),(8,2),
(9,1),(9,7),
(10,1),(10,4),

-- Movies (21–30)
(21,1),(21,2),
(22,1),(22,4),
(23,3),(23,4),
(24,2),(24,10),
(25,2),(25,10),
(26,3),(26,2),
(27,3),(27,2),
(28,1),(28,7),
(29,1),(29,4),
(30,6),(30,4),

-- Series (11–20)
(11,5),(11,8),
(12,6),(12,4),
(13,6),(13,2),
(14,7),(14,2),
(15,1),(15,4),
(16,6),(16,2),
(17,6),(17,4),
(18,3),(18,4),
(19,4),(19,6),
(20,5),(20,4),

-- Series (31–40)
(31,3),
(32,3),
(33,6),(33,4),
(34,6),(34,2),
(35,6),(35,2),
(36,1),(36,5),
(37,1),(37,5),
(38,1),(38,4),
(39,6),(39,2),
(40,3),(40,2);

CREATE TABLE Watch_History (
    history_id INT PRIMARY KEY,
    profile_id INT,
    content_id INT,
    episode_id INT NULL,
    watched_at DATETIME,
    watch_duration INT,   -- minutes watched
    
    FOREIGN KEY (profile_id) REFERENCES Profiles(profile_id),
    FOREIGN KEY (content_id) REFERENCES Content(content_id),
    FOREIGN KEY (episode_id) REFERENCES Episodes(episode_id)
);


INSERT INTO Watch_History VALUES
(1,1,1,NULL,'2024-02-01 10:00:00',120),
(2,2,2,NULL,'2024-02-01 12:00:00',100),

(3,3,11,1,'2024-02-02 14:00:00',45),
(4,4,12,4,'2024-02-02 16:00:00',40),

(5,5,3,NULL,'2024-02-03 18:00:00',110),
(6,6,13,7,'2024-02-03 20:00:00',50),

(7,7,4,NULL,'2024-02-04 09:00:00',130),
(8,8,14,10,'2024-02-04 11:00:00',55),

(9,9,5,NULL,'2024-02-05 13:00:00',90),
(10,10,15,13,'2024-02-05 15:00:00',48),

(11,11,6,NULL,'2024-02-06 17:00:00',140),
(12,12,16,16,'2024-02-06 19:00:00',50),

(13,13,7,NULL,'2024-02-07 10:00:00',125),
(14,14,17,19,'2024-02-07 12:00:00',52),

(15,15,8,NULL,'2024-02-08 14:00:00',150),
(16,16,18,22,'2024-02-08 16:00:00',45),

(17,17,9,NULL,'2024-02-09 18:00:00',135),
(18,18,19,25,'2024-02-09 20:00:00',50),

(19,19,10,NULL,'2024-02-10 09:00:00',120),
(20,20,20,28,'2024-02-10 11:00:00',48),

(21,21,21,NULL,'2024-02-11 13:00:00',100),
(22,22,31,31,'2024-02-11 15:00:00',22),

(23,23,22,NULL,'2024-02-12 17:00:00',110),
(24,24,32,34,'2024-02-12 19:00:00',23),

(25,25,23,NULL,'2024-02-13 10:00:00',105),
(26,26,33,37,'2024-02-13 12:00:00',80),

(27,27,24,NULL,'2024-02-14 14:00:00',95),
(28,28,34,40,'2024-02-14 16:00:00',55),

(29,29,25,NULL,'2024-02-15 18:00:00',115),
(30,30,35,43,'2024-02-15 20:00:00',50),

(31,31,26,NULL,'2024-02-16 09:00:00',120),
(32,32,36,46,'2024-02-16 11:00:00',48),

(33,33,27,NULL,'2024-02-17 13:00:00',110),
(34,34,37,49,'2024-02-17 15:00:00',30),

(35,35,28,NULL,'2024-02-18 17:00:00',100),
(36,36,38,52,'2024-02-18 19:00:00',50),

(37,37,29,NULL,'2024-02-19 10:00:00',105),
(38,38,39,55,'2024-02-19 12:00:00',52),

(39,39,30,NULL,'2024-02-20 14:00:00',115),
(40,40,40,58,'2024-02-20 16:00:00',35);

CREATE TABLE Continue_Watching (
    continue_id INT PRIMARY KEY,
    profile_id INT NOT NULL,
    episode_id INT NULL,
    last_position_mins INT,
    last_watched DATE,

    FOREIGN KEY (profile_id) REFERENCES Profiles(profile_id),
    FOREIGN KEY (episode_id) REFERENCES Episodes(episode_id)
);



INSERT INTO Continue_Watching VALUES
(1,1,NULL,80,'2024-02-01'),
(2,2,NULL,90,'2024-02-01'),

(3,11,1,30,'2024-02-02'),
(4,12,4,25,'2024-02-02'),

(5,3,NULL,70,'2024-02-03'),
(6,13,7,40,'2024-02-03'),

(7,4,NULL,100,'2024-02-04'),
(8,14,10,35,'2024-02-04'),

(9,5,NULL,60,'2024-02-05'),
(10,15,13,20,'2024-02-05'),

(11,6,NULL,85,'2024-02-06'),
(12,16,16,30,'2024-02-06'),

(13,7,NULL,75,'2024-02-07'),
(14,17,19,45,'2024-02-07'),

(15,8,NULL,95,'2024-02-08'),
(16,18,22,25,'2024-02-08'),

(17,9,NULL,88,'2024-02-09'),
(18,19,25,30,'2024-02-09'),

(19,10,NULL,92,'2024-02-10'),
(20,20,28,40,'2024-02-10'),

(21,21,NULL,70,'2024-02-11'),
(22,31,31,10,'2024-02-11'),

(23,22,NULL,85,'2024-02-12'),
(24,32,34,15,'2024-02-12'),

(25,23,NULL,90,'2024-02-13'),
(26,33,37,60,'2024-02-13'),

(27,24,NULL,65,'2024-02-14'),
(28,34,40,35,'2024-02-14'),

(29,25,NULL,100,'2024-02-15'),
(30,35,43,45,'2024-02-15'),

(31,26,NULL,80,'2024-02-16'),
(32,36,46,30,'2024-02-16'),

(33,27,NULL,75,'2024-02-17'),
(34,37,49,20,'2024-02-17'),

(35,28,NULL,60,'2024-02-18'),
(36,38,52,40,'2024-02-18'),

(37,29,NULL,85,'2024-02-19'),
(38,39,55,35,'2024-02-19'),

(39,30,NULL,95,'2024-02-20'),
(40,40,58,25,'2024-02-20');


CREATE TABLE Watchlist (
    watchlist_id INT PRIMARY KEY,
    profile_id INT,
    content_id INT,
    added_on DATE,

    FOREIGN KEY (profile_id) REFERENCES Profiles(profile_id),
    FOREIGN KEY (content_id) REFERENCES Content(content_id)
);

INSERT INTO Watchlist VALUES
(1,1,11,'2024-02-01'),
(2,2,12,'2024-02-01'),
(3,3,13,'2024-02-02'),
(4,4,14,'2024-02-02'),
(5,5,15,'2024-02-03'),
(6,6,16,'2024-02-03'),
(7,7,17,'2024-02-04'),
(8,8,18,'2024-02-04'),
(9,9,19,'2024-02-05'),
(10,10,20,'2024-02-05'),

(11,11,21,'2024-02-06'),
(12,12,22,'2024-02-06'),
(13,13,23,'2024-02-07'),
(14,14,24,'2024-02-07'),
(15,15,25,'2024-02-08'),
(16,16,26,'2024-02-08'),
(17,17,27,'2024-02-09'),
(18,18,28,'2024-02-09'),
(19,19,29,'2024-02-10'),
(20,20,30,'2024-02-10'),

(21,21,31,'2024-02-11'),
(22,22,32,'2024-02-11'),
(23,23,33,'2024-02-12'),
(24,24,34,'2024-02-12'),
(25,25,35,'2024-02-13'),
(26,26,36,'2024-02-13'),
(27,27,37,'2024-02-14'),
(28,28,38,'2024-02-14'),
(29,29,39,'2024-02-15'),
(30,30,40,'2024-02-15'),

(31,31,1,'2024-02-16'),
(32,32,2,'2024-02-16'),
(33,33,3,'2024-02-17'),
(34,34,4,'2024-02-17'),
(35,35,5,'2024-02-18'),
(36,36,6,'2024-02-18'),
(37,37,7,'2024-02-19'),
(38,38,8,'2024-02-19'),
(39,39,9,'2024-02-20'),
(40,40,10,'2024-02-20');

CREATE TABLE Ratings (
    rating_id INT PRIMARY KEY,
    profile_id INT,
    content_id INT,

    rating INT CHECK (rating BETWEEN 1 AND 5),

    rated_on DATE,

    FOREIGN KEY (profile_id) REFERENCES Profiles(profile_id),
    FOREIGN KEY (content_id) REFERENCES Content(content_id)
);

INSERT INTO Ratings VALUES
(1,1,1,5,'2024-02-01'),
(2,2,2,4,'2024-02-01'),

(3,3,11,5,'2024-02-02'),
(4,4,12,4,'2024-02-02'),

(5,5,3,4,'2024-02-03'),
(6,6,13,5,'2024-02-03'),

(7,7,4,5,'2024-02-04'),
(8,8,14,4,'2024-02-04'),

(9,9,5,4,'2024-02-05'),
(10,10,15,5,'2024-02-05'),

(11,11,6,5,'2024-02-06'),
(12,12,16,4,'2024-02-06'),

(13,13,7,5,'2024-02-07'),
(14,14,17,4,'2024-02-07'),

(15,15,8,5,'2024-02-08'),
(16,16,18,4,'2024-02-08'),

(17,17,9,4,'2024-02-09'),
(18,18,19,5,'2024-02-09'),

(19,19,10,5,'2024-02-10'),
(20,20,20,4,'2024-02-10'),

(21,21,21,4,'2024-02-11'),
(22,22,31,5,'2024-02-11'),

(23,23,22,4,'2024-02-12'),
(24,24,32,5,'2024-02-12'),

(25,25,23,5,'2024-02-13'),
(26,26,33,4,'2024-02-13'),

(27,27,24,4,'2024-02-14'),
(28,28,34,5,'2024-02-14'),

(29,29,25,5,'2024-02-15'),
(30,30,35,4,'2024-02-15'),

(31,31,26,4,'2024-02-16'),
(32,32,36,5,'2024-02-16'),

(33,33,27,5,'2024-02-17'),
(34,34,37,4,'2024-02-17'),

(35,35,28,4,'2024-02-18'),
(36,36,38,5,'2024-02-18'),

(37,37,29,5,'2024-02-19'),
(38,38,39,4,'2024-02-19'),

(39,39,30,5,'2024-02-20'),
(40,40,40,4,'2024-02-20');


CREATE TABLE Plan (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    price INT,
    quality VARCHAR(20),   -- HD / Full HD / 4K
    screens INT,           -- number of devices allowed
    validity INT           -- days (e.g., 30)
);

alter table plan rename column name to plan_name;

INSERT INTO Plan VALUES
(1,'Basic',199,'HD',1,30),
(2,'Standard',499,'Full HD',2,30),
(3,'Premium',799,'4K',4,30);


CREATE TABLE Subscriptions (
    id INT PRIMARY KEY,
    user_id INT,
    plan_id INT,
    start_date DATE,
    end_date DATE,
    status VARCHAR(20),

    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (plan_id) REFERENCES Plan(id)
);

INSERT INTO Subscriptions VALUES
(1,1,3,'2024-01-01','2024-02-01','Active'),
(2,2,2,'2024-01-02','2024-02-02','Active'),
(3,3,1,'2024-01-03','2024-02-03','Expired'),
(4,4,3,'2024-01-04','2024-02-04','Active'),
(5,5,2,'2024-01-05','2024-02-05','Expired'),

(6,6,1,'2024-01-06','2024-02-06','Active'),
(7,7,3,'2024-01-07','2024-02-07','Active'),
(8,8,2,'2024-01-08','2024-02-08','Expired'),
(9,9,1,'2024-01-09','2024-02-09','Active'),
(10,10,3,'2024-01-10','2024-02-10','Active'),

(11,11,2,'2024-01-11','2024-02-11','Expired'),
(12,12,1,'2024-01-12','2024-02-12','Active'),
(13,13,3,'2024-01-13','2024-02-13','Active'),
(14,14,2,'2024-01-14','2024-02-14','Expired'),
(15,15,1,'2024-01-15','2024-02-15','Active'),

(16,16,3,'2024-01-16','2024-02-16','Active'),
(17,17,2,'2024-01-17','2024-02-17','Active'),
(18,18,1,'2024-01-18','2024-02-18','Expired'),
(19,19,3,'2024-01-19','2024-02-19','Active'),
(20,20,2,'2024-01-20','2024-02-20','Active');



CREATE TABLE Payments (
    id INT PRIMARY KEY,
    user_id INT,
    subscription_id INT,
    amount INT,
    payment_method VARCHAR(50),   -- UPI, Card, Net Banking
    payment_date DATE,
    transaction_id VARCHAR(50),

    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (subscription_id) REFERENCES Subscriptions(id)
);

INSERT INTO Payments VALUES
(1,1,1,799,'UPI','2024-01-01','TXN9F3K8L2A'),
(2,2,2,499,'Card','2024-01-02','TXN7XH29QW1'),
(3,3,3,199,'UPI','2024-01-03','TXN4KD92LS8'),
(4,4,4,799,'Net Banking','2024-01-04','TXN8PL2ZQ91'),
(5,5,5,499,'Card','2024-01-05','TXN1MN83QWE'),

(6,6,6,199,'UPI','2024-01-06','TXN5GH72JKL'),
(7,7,7,799,'Card','2024-01-07','TXN9RT45YUI'),
(8,8,8,499,'UPI','2024-01-08','TXN2ZX91QWE'),
(9,9,9,199,'Net Banking','2024-01-09','TXN8CV34BNM'),
(10,10,10,799,'Card','2024-01-10','TXN6AS78DFG'),

(11,11,11,499,'UPI','2024-01-11','TXN3PO98IUY'),
(12,12,12,199,'Card','2024-01-12','TXN7LK23HGF'),
(13,13,13,799,'UPI','2024-01-13','TXN1QW45ERT'),
(14,14,14,499,'Net Banking','2024-01-14','TXN8ZX67CVB'),
(15,15,15,199,'Card','2024-01-15','TXN4TY90UIO'),

(16,16,16,799,'UPI','2024-01-16','TXN2GH56JKL'),
(17,17,17,499,'Card','2024-01-17','TXN9BN34MKO'),
(18,18,18,199,'UPI','2024-01-18','TXN5PL78QAZ'),
(19,19,19,799,'Net Banking','2024-01-19','TXN6WS23XED'),
(20,20,20,499,'Card','2024-01-20','TXN3RF56VBN');



CREATE TABLE Devices (
    id INT PRIMARY KEY,
    user_id INT,
    device_type VARCHAR(50),   -- Mobile, TV, Laptop
    device_name VARCHAR(100),  -- iPhone, Samsung TV, etc.
    os VARCHAR(50),            -- Android, iOS, Windows
    last_used DATE,

    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

INSERT INTO Devices VALUES
(1,1,'Mobile','iPhone 13','iOS','2024-02-01'),
(2,1,'TV','Samsung Smart TV','Tizen','2024-02-02'),

(3,2,'Mobile','OnePlus 11','Android','2024-02-01'),
(4,2,'Laptop','Dell Inspiron','Windows','2024-02-03'),

(5,3,'Mobile','Redmi Note 12','Android','2024-02-02'),

(6,4,'TV','LG Smart TV','WebOS','2024-02-04'),
(7,4,'Mobile','iPhone 12','iOS','2024-02-03'),

(8,5,'Laptop','HP Pavilion','Windows','2024-02-02'),

(9,6,'Mobile','Samsung Galaxy S21','Android','2024-02-05'),
(10,6,'TV','Sony Bravia','Android TV','2024-02-04'),

(11,7,'Mobile','iPhone 14','iOS','2024-02-03'),

(12,8,'Laptop','MacBook Air','macOS','2024-02-05'),

(13,9,'Mobile','Realme 11','Android','2024-02-04'),

(14,10,'TV','Mi TV','Android TV','2024-02-05'),

(15,11,'Mobile','iPhone 11','iOS','2024-02-06'),
(16,11,'Laptop','Lenovo ThinkPad','Windows','2024-02-06'),

(17,12,'Mobile','Vivo V27','Android','2024-02-07'),

(18,13,'TV','Samsung Smart TV','Tizen','2024-02-07'),

(19,14,'Mobile','iPhone 13','iOS','2024-02-08'),

(20,15,'Laptop','Asus Vivobook','Windows','2024-02-08'),

(21,16,'Mobile','OnePlus Nord','Android','2024-02-09'),

(22,17,'TV','LG OLED TV','WebOS','2024-02-09'),

(23,18,'Mobile','Redmi Note 11','Android','2024-02-10'),

(24,19,'Laptop','HP Envy','Windows','2024-02-10'),

(25,20,'Mobile','Samsung Galaxy S22','Android','2024-02-11'),

(26,3,'TV','Sony Bravia','Android TV','2024-02-05'),
(27,5,'Mobile','iPhone SE','iOS','2024-02-06'),
(28,7,'Laptop','MacBook Pro','macOS','2024-02-07'),
(29,9,'TV','LG Smart TV','WebOS','2024-02-08'),
(30,12,'Mobile','Pixel 7','Android','2024-02-09');

CREATE TABLE Active_Sessions (
    id INT PRIMARY KEY,
    profile_id INT,
    device_id INT,
    login_time DATETIME,
    logout_time DATETIME NULL,
    status VARCHAR(20),   -- Active / Ended

    FOREIGN KEY (profile_id) REFERENCES Profiles(profile_id),
    FOREIGN KEY (device_id) REFERENCES Devices(id)
);

INSERT INTO Active_Sessions VALUES
(1,1,1,'2024-02-01 10:00:00',NULL,'Active'),
(2,2,3,'2024-02-01 11:00:00','2024-02-01 12:00:00','Ended'),

(3,3,5,'2024-02-02 14:00:00',NULL,'Active'),
(4,4,6,'2024-02-02 15:00:00','2024-02-02 16:30:00','Ended'),

(5,5,8,'2024-02-03 18:00:00',NULL,'Active'),
(6,6,9,'2024-02-03 19:00:00','2024-02-03 20:00:00','Ended'),

(7,7,11,'2024-02-04 09:00:00',NULL,'Active'),
(8,8,12,'2024-02-04 10:00:00','2024-02-04 11:30:00','Ended'),

(9,9,13,'2024-02-05 13:00:00',NULL,'Active'),
(10,10,14,'2024-02-05 14:00:00','2024-02-05 15:00:00','Ended'),

(11,11,15,'2024-02-06 16:00:00',NULL,'Active'),
(12,12,17,'2024-02-06 17:00:00','2024-02-06 18:00:00','Ended'),

(13,13,18,'2024-02-07 10:00:00',NULL,'Active'),
(14,14,19,'2024-02-07 11:00:00','2024-02-07 12:30:00','Ended'),

(15,15,20,'2024-02-08 14:00:00',NULL,'Active'),
(16,16,21,'2024-02-08 15:00:00','2024-02-08 16:00:00','Ended'),

(17,17,22,'2024-02-09 18:00:00',NULL,'Active'),
(18,18,23,'2024-02-09 19:00:00','2024-02-09 20:00:00','Ended'),

(19,19,24,'2024-02-10 09:00:00',NULL,'Active'),
(20,20,25,'2024-02-10 10:00:00','2024-02-10 11:00:00','Ended'),

(21,21,26,'2024-02-11 12:00:00',NULL,'Active'),
(22,22,27,'2024-02-11 13:00:00','2024-02-11 14:00:00','Ended'),

(23,23,28,'2024-02-12 15:00:00',NULL,'Active'),
(24,24,29,'2024-02-12 16:00:00','2024-02-12 17:00:00','Ended'),

(25,25,30,'2024-02-13 18:00:00',NULL,'Active');


SELECT * FROM Users;
SELECT * FROM Profiles;
SELECT * FROM Content;
SELECT * FROM Episodes;
SELECT * FROM Genres;
SELECT * FROM Content_Genre;
SELECT * FROM Watch_History;
SELECT * FROM Continue_Watching;
SELECT * FROM Watchlist;
SELECT * FROM Ratings;
SELECT * FROM Plan;
SELECT * FROM Subscriptions;
SELECT * FROM Devices;
SELECT * FROM Active_Sessions;
SELECT * FROM Payments;
show tables;

-- 1. Show all movies only.
select*from Content where type = 'Movie';
select*from Content where type='series';

-- 2.Find content available in hindi 
select title,language from Content where language='Hindi';

-- 3.Find profiles under age 18.
select profile_name,age from Profiles where age < 18;

-- 4.Show active subscriptions.
select u.name,
       s.status,
       p.plan_name 
from Users u
join Subscriptions s 
on u.user_id=s.user_id
join plan p
on s.plan_id=p.id
where status='Active';

-- 5.Find users using the Premium plan.
select u.name,
       p.plan_name 
from Users u 
join Subscriptions s 
on u.user_id=s.user_id
join plan p
on s.plan_id=p.id 
where plan_name='Premium';

-- 6. Calculate total revenue earned.
select sum(amount) as total_revenue from payments ;

-- 7.Find average rating of each content.
select c.title,
       avg(r.rating) as avg_rating
from Content c 
join ratings r
on c.content_id=r.content_id 
group by c.title;

-- 8.Find top rated content.
select c.title,
       avg(r.rating) as avg_rating
from Content c
join Ratings r 
on c.content_id=r.content_id
group by c.title order by avg_rating desc limit 1;

-- 9.Count users in each subscription plan.
select count(u.user_id) as total_plan_users,
       p.plan_name
from Users u
join Subscriptions s 
on u.user_id=s.user_id
join plan p 
on s.plan_id=p.id 
group by p.plan_name;

-- 10.Find all content and their ratings, including unrated content.
select c.title,r.rating
from content c 
left join ratings r
on c.content_id=r.content_id;

-- 11.Find all devices including devices without active sessions.
select d.device_name, 
       d.device_type,
       a.status
from devices d 
left join active_sessions a 
on d.id=a.device_id;

-- 12. Find users who have more than one profile.
select u.name,u.user_id,count(p.profile_id) as total_profiles
from Users u
join Profiles p 
on u.user_id=p.user_id
group by user_id 
having count(p.profile_id)>1;

-- 13.Find the total number of profiles for each user.
select p.user_id,count(p.profile_id) as total_profiles,u.name
from profiles p 
join users u
on p.user_id=u.user_id
group by user_id ;

-- 14.Display movies with duration greater than 160 minutes. 
select title,duration from content having duration>160;

-- 15.Find the top 5 highest rated contents.
select c.title,avg(r.rating) as tot_avg
from content c
join ratings r 
on c.content_id = r.content_id
group by c.title
order by tot_avg desc 
limit 5;

-- 16.Find users who paid more than the average payment amount.
select user_id,amount from payments where amount >
(select avg(amount) as avg_amount from payments);

-- 17.Find users who paid more than the average payment amount also print the name 
select u.user_id,
	u.name,
    p.amount
from users u 
join payments p 
on p.user_id=u.user_id
where amount> 
(select avg(amount) as avg_amt from payments );

-- 18.Find content with rating higher than average rating.
select title from content where content_id in
  (select content_id from ratings where rating > 
  (select avg(rating) as avg_rating from ratings)
);

select title,
  (select rating from ratings r 
  where c.content_id=r.content_id)
as rating 
from content c 
where content_id in 
   (select content_id from ratings where rating >
   (select avg(rating) as avg_rating from ratings));

-- 19.Find the profile with maximum watch duration.
select profile_id,
sum(watch_duration) as total_duration 
from watch_history 
group by profile_id
 having sum(watch_duration)=
(select max(total_duration) from
(select sum(watch_duration) as total_duration
 from watch_history
 group by profile_id)
 as duration_table
);

-- 20. Find the second highest payment amount.
select max(amount) as second_highest_amount 
from payments 
where amount < 
 (select max(amount) 
 from payments);

-- 21. Rank movies based on duration within each language.
select title,
	   language,
       duration, 
       RANK() over(
       partition by language 
       order by duration desc) 
       AS movie_rank 
       from content 
       where type='movie';
	
-- 22. Assign row numbers to contents within each genre.
select c.title,
       g.genre_name, 
       row_number() over(
       partition by g.genre_name
       order by c.title)as row_num
       from content c
       join content_genre p 
       on c.content_id=p.content_id
       join genres g
       on p.genre_id=g.genre_id;
       
-- 23. Find sessions where users have logged out.
select*from active_sessions where logout_time is not null;

-- 24. Display logout time, replacing NULL with 'Still Active'.
select logout_time,ifnull(logout_time,"Still Active") from active_sessions;

-- 25. Create a table with CHECK constraint ensuring age is at least 18.
create table age_table (
user_name varchar(20), age int check(age<=18)
);
select*From age_table;

-- 26. Convert all user names to uppercase.
select upper(name) from users;

-- 27. Find the length of each content title
select title,length(title) from content;

-- 28. Display the current system date.
select current_date();

-- 29. Find subscription duration in days.
select id,start_date,end_date,datediff(end_date,start_date) from subscriptions;

-- 30. Display 5 most recently released contents after skipping first 3
select title, release_date from content order by release_date desc limit 5 offset 3;

-- 31. Fetch the second highest rated movie.
select c.title,avg(r.rating) as avg_rating
 from content c 
 join ratings r 
 on c.content_id=r.content_id
 where c.type='Movie'
 group by c.title
 order by avg_rating desc limit 1 offset 1;
 
 