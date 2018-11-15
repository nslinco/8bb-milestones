--create database
CREATE DATABASE HighScores;

DROP TABLE IF EXISTS scores;
--create high scores table
CREATE TABLE scores
(
playerID int unique NOT NULL AUTOINCRMEMENT,
rank int,
name varchar(5) default NULL,
score int default NULL,
PRIMARY KEY (playerID)
);


--Sample data, real data will be populated in a c# 
--script in unity's backend but queries will be similar.
INSERT INTO scores VALUES(101,1,"joe",2000);
INSERT INTO scores VALUES(32,2,"bob",1899);
INSERT INTO scores VALUES(13,3,"rob",1500);
INSERT INTO scores VALUES(45,4,"ted",1320);
INSERT INTO scores VALUES(59,5,"henry",1000);
INSERT INTO scores VALUES(106,6,"nick",999);
INSERT INTO scores VALUES(7,7,"matt",679);
INSERT INTO scores VALUES(80,8,"john",150);
INSERT INTO scores VALUES(29,9,"joe",125);
INSERT INTO scores VALUES(1,10,"scoob",100);












