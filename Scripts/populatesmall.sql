INSERT INTO Teams VALUES('Los Angeles Dodgers', '100-82');
INSERT INTO Teams VALUES('San Francisco Giants', '87-95');
INSERT INTO Teams VALUES('Colorado Rockies', '83-99');
INSERT INTO Teams VALUES('San Diego Padres', '83-99');
INSERT INTO Teams VALUES('Arizona Diamondbacks', '80-102');

INSERT INTO Player VALUES('Clayton Kershaw', 22, 'Los Angeles Dodgers');
INSERT INTO Player VALUES('Zack Greinke', 21, 'Los Angeles Dodgers');
INSERT INTO Player VALUES('Adrian Gonzales', 23, 'Los Angeles Dodgers');
INSERT INTO Player VALUES('Justin Turner', 10, 'Los Angeles Dodgers');
INSERT INTO Player VALUES('Yasiel Puig', 66, 'Los Angeles Dodgers');

INSERT INTO Pitcher VALUES('Left', 'Clayton Kershaw', 'Los Angeles Dodgers', 22);
INSERT INTO Pitcher VALUES('Right', 'Zack Greinke', 'Los Angeles Dodgers', 21);
INSERT INTO Pitcher VALUES('Left', 'Madison Bumgarner', 'San Francisco Giants', 40);
INSERT INTO Pitcher VALUES('Right', 'Brett Anderson', 'Los Angeles Dodgers', 30);
INSERT INTO Pitcher VALUES('Right', 'Brandon McCarthy', 'Los Angeles Dodgers', 15);

INSERT INTO PosPlayer VALUES('Left', '1B', 'Adrian Gonzales', 23, 'Los Angeles Dodgers');
INSERT INTO PosPlayer VALUES('Right', 'C', 'Buster Posey', 13, 'San Francisco Giants');
INSERT INTO PosPlayer VALUES('Left', 'CF', 'Joc Pederson', 31, 'Los Angeles Dodgers');
INSERT INTO PosPlayer VALUES('Right', '3B', 'Justin Turner', 10, 'Los Angeles Dodgers');
INSERT INTO PosPlayer VALUES('Switch', 'C', 'Yasmani Grandal', 40, 'Los Angeles Dodgers');

INSERT INTO Games VALUES(1, date '2011-10-2', date '2011-10-2', 'Los Angeles Dodgers', 'San Francisco Giants', 'Dodgers');
INSERT INTO Games VALUES(2, date '2011-10-1', date '2011-10-1', 'Los Angeles Dodgers', 'San Francisco Giants', 'Dodgers');
INSERT INTO Games VALUES(3, date '2011-10-3', date '2011-10-3', 'Los Angeles Dodgers', 'San Francisco Giants', 'Dodgers');
INSERT INTO Games VALUES(4, date '2011-10-4', date '2011-10-4', 'Los Angeles Dodgers', 'San Francisco Giants', 'Dodgers');
INSERT INTO Games VALUES(5, date '2011-10-5', date '2011-10-5', 'Los Angeles Dodgers', 'San Francisco Giants', 'Dodgers');

INSERT INTO Pitches VALUES(1, 'Strike', 0, 0, 0, 'Fastball', 93, 1, 'Clayton Kershaw', 22, 'Los Angeles Dodgers', 'Buster Posey', 13, 'San Francisco Giants', 'Los Angles Dodgers', 'San Francisco Giants', 1);
INSERT INTO Pitches VALUES(2, 'Strike', 0, 1, 0, 'Curveball', 73, 2, 'Clayton Kershaw', 22, 'Los Angeles Dodgers', 'Buster Posey', 13, 'San Francisco Giants', 'Los Angles Dodgers', 'San Francisco Giants', 2);
INSERT INTO Pitches VALUES(3, 'Ball', 0, 2, 0, 'Slider', 88, 3, 'Clayton Kershaw', 22, 'Los Angeles Dodgers', 'Buster Posey', 13, 'San Francisco Giants', 'Los Angles Dodgers', 'San Francisco Giants', 3);
INSERT INTO Pitches VALUES(4, 'Ball', 1, 2, 0, 'Fastball', 94, 4, 'Clayton Kershaw', 22, 'Los Angeles Dodgers', 'Buster Posey', 13, 'San Francisco Giants', 'Los Angles Dodgers', 'San Francisco Giants', 4);
INSERT INTO Pitches VALUES(5, 'Strike', 2, 2, 0, 'Curveball', 72, 5, 'Clayton Kershaw', 22, 'Los Angeles Dodgers', 'Buster Posey', 13, 'San Francisco Giants', 'Los Angles Dodgers', 'San Francisco Giants', 5);