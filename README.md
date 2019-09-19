CREATE TABLE BBS (
bbsID INT,
bbsTitle VARCHAR(50),
userID VARCHAR(20),
bbsDate DATETIME,
bbsContent VARCHAR(2048),
bbsAvailable INT,
 PRIMARY KEY (bbsID)
  ) DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;

CREATE TAble USER (
userID VARCHAR(20),
userPassword VARCHAR(20),
userName VARCHAR(20),
userGender VARCHAR(20),
userEmail VARCHAR(50),
PRIMARY KEY (userID) 
) DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;

create table board(
_id int,
title varchar(50),
description  varchar(50),
start varchar(50),
end varchar(50),
type varchar(50),
username varchar(50),
backgroundColor varchar(50),
textColor varchar(50),
allDay varchar(50),
primary key(_id)
)default charset=utf8 collate utf8_general_ci;

