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


CREATE TABLE EVALUATION (
evaluationID int PRIMARY KEY AUTO_INCREMENT, #평가 번호
userID varchar(50), #작성자 아이디
lectureName varchar(50), #강의명
professorName varchar(50), #교수명
lectureYear int, #수강 연도
semesterDivide varchar(20), #수강 학기
lectureDivide varchar(10), #강의 구분
evaluationTitle varchar(50), #평가 제목
evaluationContent varchar(2048), #평가 내용
totalScore varchar(10), #종합 점수
creditScore varchar(10), #성적 점수
comfortableScore varchar(10), #널널 점수
lectureScore varchar(10), #강의 점수
likeCount int #추천갯수
);


CREATE TABLE USER (
  userID varchar(50), #작성자 아이디
  userPassword varchar(50), #작성자 비밀번호
  userEmail varchar(50), #작성자 이메일
  userEmailHash varchar(64), #이메일 확인 해시값
  userEmailChecked boolean #이메일 확인 여부
);


CREATE TABLE LIKEY (
  userID varchar(50), #작성자 아이디
  evaluationID int, #평가 번호
  userIP varchar(50) #작성자 아이피
);
