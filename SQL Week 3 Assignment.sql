CREATE TABLE Users(
UserID int NOT NULL,
    UserName varchar(50) NOT NULL,
    GroupID int,
    PRIMARY KEY (UserID), FOREIGN KEY (GroupId) REFERENCES Grooups(GroupId) );

CREATE TABLE Grooups(
GroupId int NOT NULL,
GroupName varchar(50) NOT NULL,
    PRIMARY KEY (GroupId) );

CREATE TABLE Rooms(
RoomId int NOT NULL,
RoomName varchar(50) NOT NULL,
    PRIMARY KEY (RoomId) );

CREATE TABLE Access(
GroupId int NOT NULL,
RoomId int NOT NULL, PRIMARY KEY (RoomId), FOREIGN KEY (RoomId) REFERENCES Rooms(RoomId), FOREIGN KEY (GroupId) REFERENCES Grooups(GroupId) );




INSERT INTO Users (UserID, UserName ) VALUES (1, 'Modesto');
INSERT INTO Users (UserID, UserName ) VALUES (2, 'Ayine');
INSERT INTO Users (UserID, UserName ) VALUES (3, 'Christopher');
INSERT INTO Users (UserID, UserName ) VALUES (4, 'Cheong');
INSERT INTO Users (UserID, UserName ) VALUES (5, 'Saulat');

INSERT INTO Grooups (GroupId, GroupName ) VALUES (1, 'I.T.');
INSERT INTO Grooups (GroupId, GroupName ) VALUES (2, 'Sales');
INSERT INTO Grooups (GroupId, GroupName ) VALUES (3, 'Administration');
INSERT INTO Grooups (GroupId, GroupName ) VALUES (4, 'Operationes');


INSERT INTO Rooms (RoomId, RoomName ) VALUES (1, '101');
INSERT INTO Rooms (RoomId, RoomName ) VALUES (2, '102');
INSERT INTO Rooms (RoomId, RoomName ) VALUES (3, 'Auditorium A');
INSERT INTO Rooms (RoomId, RoomName ) VALUES (4, ' Auditorium B');

INSERT INTO Access (GroupId, RoomId ) VALUES (1, 1);
INSERT INTO Access (GroupId, RoomId ) VALUES (2, 2);
INSERT INTO Access (GroupId, RoomId ) VALUES (3, 3);
INSERT INTO Access (GroupId, RoomId ) VALUES (4, 4);
INSERT INTO Access (GroupId, RoomId ) VALUES (5, 5);


 Select G.GroupId, G.GroupName, U.UserID from Grooups G LEFT JOIN Users U on G.GroupId=U.GroupID;
 
 Select R.RoomId, R.RoomName FROM Rooms R 
 LEFT JOIN Access G ON R.RoomId=R.RoomId;
 
Select U.UserID, U.UserName, R.RoomName
from Users U LEFT JOIN Access on U.GroupId=U.GroupId 
LEFT JOIN Rooms R on R.RoomId=R.RoomId 
order by U.UserName,R.RoomName;