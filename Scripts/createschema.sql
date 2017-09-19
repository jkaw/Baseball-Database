CREATE TABLE Teams(
Name varchar(30) NOT NULL Primary Key,
Record varchar(10)
);

CREATE TABLE Player(
Name varchar(30) NOT NULL,
Num int NOT NULL,
TeamName varchar(22) references Teams(Name) ON UPDATE CASCADE,
PRIMARY KEY(Name, Num, TeamName),
Constraint NumCheck Check (Num < 100 and Num > -1)
);

CREATE TABLE Pitcher(
PHanded varchar(10),
PName varchar(30) NOT NULL,
PTeamName varchar(30),
PNum int,
PRIMARY KEY(PName, PTeamName, PNum),
foreign key (PName, PTeamName, PNum) references Player(Name, TeamName, Num) ON UPDATE CASCADE
);



CREATE TABLE PosPlayer(
PPHanded varchar(10),
Position varchar(2),
PPName varchar(30),
PPNum int,
BTeamName varchar(30),
PRIMARY KEY(PPName, PPNum, BTeamName),
foreign key (PPName, PPNum, BTeamName) references Player(Name, Num, TeamName) ON UPDATE CASCADE
);

CREATE TABLE Games(
Id int Primary Key,
SchedDate DATE,
PlayedDate DATE,
HomeName varchar(30),
VisitName varchar(30),
Winner varchar(30)
);


CREATE TABLE Pitches
(
PID int,
Outcome varchar(10),
Bcount int,
Scount int,
Runners int,
Type varchar(10),
Speed int,
Pitchnum int,
PitName varchar(30),
PitNum int,
PitTeamName varchar(30),
BatName varchar(30),
BatNum int,
BatTeamName varchar(30),
HomeTName varchar(30),
VisitTName varchar(30),
GId int references Games(Id),
foreign key (PitName, PitNum, PitTeamName) references Pitcher (PName, PNum, PTeamName) ON UPDATE CASCADE,
foreign key (BatName, BatNum, BatTeamName) references PosPlayer (PPName, PPNum, BTeamName) ON UPDATE CASCADE,
foreign key (GId) references Games (Id),
Primary Key(PID, PitName, PitNum, PitTeamName, BatName, BatNum, BatTeamName, GID),
Constraint Balls Check (Bcount > -1 and Bcount < 4),
Constraint Scount Check (Scount > -1 and Scount < 3)
);

CREATE OR REPLACE FUNCTION Posplayeradd() RETURNS TRIGGER AS '
BEGIN
if (new.PPName, new.PPNum, new.BTeamName) not in (select Name, Num, TeamName from Player) THEN INSERT INTO PLAYER VALUES (new.PPName, new.PPnum, new.BTeamName);

        END IF;
        RETURN new;
END;'
language 'plpgsql';

CREATE OR REPLACE FUNCTION pitcheradd() RETURNS TRIGGER AS '
BEGIN
   if (new.PName, new.PNum, new.PTeamName) not in (select Name, Num, TeamName from Player) THEN INSERT INTO PLAYER VALUES (new.PName, new.Pnum, new.PTeamName);
                END IF;
                RETURN new;

END; '
language 'plpgsql';

CREATE OR REPLACE FUNCTION Pitchespitadd() RETURNS TRIGGER AS '
BEGIN
if (new.PitName, new.PitNum, new.PitTeamName) not in (select PName, PNum, PTeamName from Pitcher) THEN INSERT INTO Pitcher (PName, PTeamName, PNum) VALUES (new.PitName,  new.PitTeamName, new.PitNum);

        END IF;
        RETURN new;
END;'
language 'plpgsql';

CREATE OR REPLACE FUNCTION Pitchesbatadd() RETURNS TRIGGER AS '
BEGIN
if (new.BatName, new.BatNum, new.BatTeamName) not in (select PPName, PPNum, BTeamName from PosPlayer) THEN INSERT INTO PosPlayer (PPName, PPNum, BTeamName) VALUES (new.BatName, new.Batnum, new.BatTeamName);

        END IF;
        RETURN new;
END;'
language 'plpgsql';


CREATE OR REPLACE FUNCTION gameidadd() RETURNS TRIGGER AS '
BEGIN
if new.Gid not in (select Id from Games) THEN INSERT INTO Games VALUES (new.Gid, null, null, new.HomeTName, new.VisitTName, new.HomeTName);
 		END IF;
 		RETURN new;
 END;'
 language 'plpgsql';

CREATE TRIGGER PitcherNametrig
BEFORE INSERT ON Pitcher
FOR EACH ROW
EXECUTE PROCEDURE pitcheradd();


CREATE TRIGGER PPtrig
BEFORE INSERT ON PosPlayer
FOR EACH ROW
EXECUTE PROCEDURE Posplayeradd();

CREATE TRIGGER PitchesPittrig
BEFORE INSERT ON Pitches
FOR EACH ROW
EXECUTE PROCEDURE pitchespitadd();

CREATE TRIGGER PitchesBattrig
BEFORE INSERT ON Pitches 
FOR EACH ROW
EXECUTE PROCEDURE pitchesbatadd();

CREATE TRIGGER GameIDadd
BEFORE INSERT ON Pitches
FOR EACH ROW
EXECUTE PROCEDURE gameidadd();

















