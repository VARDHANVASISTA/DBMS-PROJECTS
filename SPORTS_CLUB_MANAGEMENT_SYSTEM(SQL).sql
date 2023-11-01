create database SPORTS_CLUB_MANAGEMENT_SYSTEM;
use SPORTS_CLUB_MANAGEMENT_SYSTEM;

create table Admin(Admin_Id char(10) primary key not null,Admin_name varchar(50) not null,Password varchar(30) unique not null,DOB date not null,Gender varchar(10) not null,City varchar(30) not null);

create table Admin_ph_em(Admin_Id char(10) not null,Email_Id varchar(30) not null,Phone char(10) not null,foreign key(Admin_Id) references Admin(Admin_Id));

insert into Admin values("0823AD0001", "KIRAN R", "Kiran@2663", "2002-11-23", "MALE", "MYSURU");
insert into Admin values("0823AD0002", "M V NAGAVARDHAN VASIST", "Vardhan@3866", "2002-05-13", "MALE", "MALAVALLI");
insert into Admin values("0823AD0003", "MOHITH GOWDA K", "Mohith@0707", "2003-05-11", "MALE", "MYSURU");
insert into Admin values("0823AD0004", "PRASHANTH M", "Prashanth@2410", "2003-10-24", "MALE", "MYSURU");
insert into Admin values("0823AD0005", "SHARATH H K", "Sharath@2003", "2003-05-03", "MALE", "MYSURU");

insert into Admin_ph_em values('0823AD0001', 'kiran@gmail.com', '1234567890');
insert into Admin_ph_em values('0823AD0002', 'vasist@gmail.com', '9999999999'),('0823AD0003', 'Mohith@gmail.com', '2222222222'),('0823AD0004', 'Prashanth@gmail.com', '3333333333'),('0823AD0005', 'Sharath@gmail.com', '4444444444');
insert into Admin_ph_em values('0823AD0003', 'Mohith1@gmail.com', '6666666666'),('0823AD0001', 'kiran2@gmail.com', '11111
11111'),('0823AD0001', 'kiran3@gmail.com', '5555555555');

ALTER TABLE Admin_ph_em
    -> MODIFY Phone char(10),
    -> MODIFY Email_Id varchar(30);
insert into Admin_ph_em values("0823AD0004", "Prashanth2@gmail.com","");
update Admin_ph_em set Phone="-" where Email_id="kiran3@gmail.com";
update Admin_ph_em set Phone="-" where Email_id="Prashanth2@gmail.com";

SELECT Admin.Admin_Id, Admin.Admin_name, Admin.Password, Admin.DOB, Admin.Gender, Admin.City, Admin_ph_em.Email_Id, Admin_ph_em.Phone
    -> FROM Admin
    -> LEFT JOIN Admin_ph_em ON Admin.Admin_Id = Admin_ph_em.Admin_Id;
  
  
    
create table Department(Department_Id char(5) primary key not null, Department_Name varchar(100) unique not null, Start_Date date not null);
create table Department_ph_em(Department_Id char(10) not null,Email_Id varchar(60),Phone varchar(20),foreign key(Department_Id) references Department(Department_Id));

insert into Department values("D0001", "Department of Football","2023-01-15");
insert into Department values("D0002", "Department of Cricket","2023-01-15");
insert into Department values("D0003", "Department of Volleyball","2023-01-16");
insert into Department values("D0004", "Department of Basketball","2023-01-16");
insert into Department values("D0005", "Department of Olympic-Weightlifting","2023-01-17");
insert into Department values("D0006", "Department of Powerlifting","2023-01-17");
insert into Department values("D0007", "Department of Best-Physique","2023-01-17");
insert into Department values("D0008", "Department of Badminton","2023-01-18");
insert into Department values("D0009", "Department of Tennis","2023-01-18");
insert into Department values("D0010", "Department of Kabaddi","2023-01-18");



INSERT INTO Department_ph_em VALUES('D0001', 'football@gmail.com', '821-456-7890'), ('D0001','footballmaintenance@gmail.com', '987-654-3210'), ('D0001', 'managerfootball@gmail.com', '456-789-0123'), ('D001', 'supportfootball@gmail.com','789-012-3456');
INSERT INTO Department_ph_em  VALUES('D0002', 'cricket@gmail.com', '111-222-3333'),('D0002', 'cricketmaintenance@gmail.com', '444-555-6666'),('D0002', 'managercricket@gmail.com', '777-888-9999'),('D0002', 'supportcricket@gmail.com', '123-456-7890');
INSERT INTO Department_ph_em VALUES ('D0003', 'volleyball@gmail.com', '222-333-4444'), ('D0003', 'volleyballmaintenance@gmail.com', '555-666-7777'), ('D0003', 'managervolleyball@gmail.com', '888-999-0000'), ('D0003', 'supportvolleyball@gmail.com', '234-567-8901');
INSERT INTO Department_ph_em VALUES('D0004', 'basketball@gmail.com', '333-444-5555'),('D0004', 'basketballmaintenance@gmail.com', '666-777-8888'),('D0004', 'managerbasketball@gmail.com', '999-000-1111'),('D0004', 'supportbasketball@gmail.com', '345-456-5678');
INSERT INTO Department_ph_em VALUES('D0005', 'weightlifting@gmail.com', '444-555-6666'),('D0005', 'weightliftingmaintenance@gmail.com', '777-888-9999'),('D0005', 'managerweightlifting@gmail.com', '111-222-3333'),('D0005', 'supportweightlifting@gmail.com', '456-567-6789');
INSERT INTO Department_ph_em  VALUES('D0006', 'powerlifting@gmail.com', '555-666-7777'),('D0006', 'powerliftingmaintenance@gmail.com', '888-999-0000'),('D0006', 'managerpowerlifting@gmail.com', '222-333-4444'),('D0006', 'supportpowerlifting@gmail.com', '567-678-7890');
INSERT INTO Department_ph_em  VALUES('D0007', 'bestphysique@gmail.com', '666-777-8888'),('D0007', 'bestphysiquemaintenance@gmail.com', '999-000-1111'),('D0007', 'managerbestphysique@gmail.com', '333-444-5555'),('D0007', 'supportbestphysique@gmail.com', '678-789-8901');
INSERT INTO Department_ph_em  VALUES('D0008', 'badminton@gmail.com', '777-888-9999'),('D0008', 'badmintonmaintenance@gmail.com', '111-222-3333'),('D0008', 'managerbadminton@gmail.com', '444-555-6666'),('D0008', 'supportbadminton@gmail.com', '789-890-9012');
INSERT INTO Department_ph_em  VALUES('D0009', 'tennis@gmail.com', '888-999-0000'),('D0009', 'tennismaintenance@gmail.com', '111-222-3333'),('D0009', 'managertennis@gmail.com', '555-666-7777'),('D0009', 'supporttennis@gmail.com', '890-901-0123');
INSERT INTO Department_ph_em  VALUES('D0010', 'kabaddi@gmail.com', '999-000-1111'),('D0010', 'kabaddimaintenance@gmail.com', '222-333-4444'),('D0010', 'managerkabaddi@gmail.com', '666-777-8888'),('D0010', 'supportkabaddi@gmail.com', '901-012-1234');


SELECT 
    ->     Department.Department_Id, 
    ->     Department.Department_Name,
    ->     Department_ph_em.Email_Id, 
    ->     Department_ph_em.Phone
    -> FROM Department
    -> LEFT JOIN Department_ph_em ON Department.Department_Id = Department_ph_em.Department_Id
    -> WHERE Department.Department_Id BETWEEN 'D0001' AND 'D0010'
    -> ORDER BY Department.Department_Id, Department_ph_em.Email_Id;

/*OPTIONAL:

SELECT 
    ->     Department.Department_Id, 
    ->     Department.Department_Name,
    ->     GROUP_CONCAT(Department_ph_em.Email_Id) AS Email_addresses,
    ->     GROUP_CONCAT(Department_ph_em.Phone) AS Phone_numbers
    -> FROM Department
    -> LEFT JOIN Department_ph_em ON Department.Department_Id = Department_ph_em.Department_Id
    -> WHERE Department.Department_Id BETWEEN 'D0001' AND 'D0010'
    -> GROUP BY Department.Department_Id
    -> ORDER BY Department.Department_Id;
*/

ALTER TABLE Admin_ph_em
    -> ADD CONSTRAINT Admin_Id
    -> FOREIGN KEY (Admin_Id)
    -> REFERENCES Admin(Admin_Id)
    -> ON DELETE CASCADE;

ALTER TABLE Department_ph_em ADD CONSTRAINT Department_Id FOREIGN KEY (Department_Id) REFERENCES Department(Department_Id) ON DELETE CASCADE;
 
 
create table Candidate(Candidate_Id char(10) primary key not null, Candidate_name varchar(60) not null, Department_Id char(5) not null, Department_name varchar(100) not null, Gender varchar(10) not null, DOB date not null, Candidate_place varchar(50) not null, foreign key (Department_Id) references Department(Department_Id) on delete cascade, foreign key (Department_Name) references Department(Department_Name) on delete cascade);

create table Candidate_ph_em(Candidate_Id char(10) not null, Email varchar(100) not null, Phone varchar(15) not null, foreign key(Candidate_Id) references Candidate(Candidate_Id) on delete cascade);

INSERT INTO Candidate VALUES
('0723BP0001', 'Aiden Adams', 'D0007', 'Department of Best-Physique', 'Male', '1990-03-25', 'Pune'),
('0623BP0002', 'Mike', 'D0007', 'Department of Best-Physique', 'Male', '1992-11-20', 'Hyderabad'),
('0523BP0003', 'Edison', 'D0007', 'Department of Best-Physique', 'Male', '1988-06-10', 'Chennai'),
('0423BP0004', 'Liam Smith', 'D0007', 'Department of Best-Physique', 'Male', '1993-09-12', 'Delhi'),
('0223BP0005', 'Ethan Wilson', 'D0007', 'Department of Best-Physique', 'Male', '1996-02-15', 'Mumbai');
INSERT INTO Candidate VALUES
('0621OL0003', 'Aiden Adams', 'D0005', 'Department of Olympic-Weightlifting', 'Male', '1990-03-25', 'Pune'),
('0617OL0004', 'Mia Lewis', 'D0005', 'Department of Olympic-Weightlifting', 'Female', '1992-11-20', 'Hyderabad'),
('0713OL0005', 'Ella Brown', 'D0005', 'Department of Olympic-Weightlifting', 'Female', '1988-06-10', 'Chennai'),
('0812OL0006', 'Liam Smith', 'D0005', 'Department of Olympic-Weightlifting', 'Male', '1993-09-12', 'Delhi'),
('0913OL0007', 'Ethan Wilson', 'D0005', 'Department of Olympic-Weightlifting', 'Male', '1996-02-15', 'Mumbai');
INSERT INTO Candidate VALUES
('0705PL0003', 'Liam Parker', 'D0006', 'Department of Powerlifting', 'Male', '1992-07-30', 'Kolkata'),
('1019PL0004', 'Ava Turner', 'D0006', 'Department of Powerlifting', 'Female', '1994-05-18', 'Bangalore'),
('0821PL0005', 'Sophia Hall', 'D0006', 'Department of Powerlifting', 'Female', '1989-12-05', 'Chandigarh'),
('0523PL0006', 'Ethan Moore', 'D0006', 'Department of Powerlifting', 'Male', '1993-04-15', 'Jaipur'),
('0623PL0007', 'Mason White', 'D0006', 'Department of Powerlifting', 'Male', '1990-10-20', 'Lucknow');
INSERT INTO Candidate VALUES
('0723FT0001', 'David Johnson', 'D0001', 'Department of Football', 'Male', '1995-06-10', 'Chennai'),
('0623FT0002', 'Emily Wilson', 'D0001', 'Department of Football', 'Female', '1997-03-12', 'Mumbai'),
('0523FT0003', 'Daniel Smith', 'D0001', 'Department of Football', 'Male', '1990-11-25', 'Bangalore'),
('0423FT0004', 'Olivia Taylor', 'D0001', 'Department of Football', 'Female', '1993-09-05', 'Kolkata'),
('0223FT0005', 'Liam Brown', 'D0001', 'Department of Football', 'Male', '1999-02-15', 'Delhi');
INSERT INTO Candidate VALUES
('0723BM0001', 'Liam Parker', 'D0008', 'Department of Badminton', 'Male', '1992-07-30', 'Kolkata'),
('0623BM0002', 'Ava Turner', 'D0008', 'Department of Badminton', 'Female', '1994-05-18', 'Bangalore'),
('0523BM0003', 'Sophia Hall', 'D0008', 'Department of Badminton', 'Female', '1989-12-05', 'Chandigarh'),
('0423BM0004', 'Ethan Moore', 'D0008', 'Department of Badminton', 'Male', '1993-04-15', 'Jaipur'),
('0223BM0005', 'Mason White', 'D0008', 'Department of Badminton', 'Male', '1990-10-20', 'Lucknow');
INSERT INTO Candidate VALUES
('0723TN0001', 'David Johnson', 'D0009', 'Department of Tennis', 'Male', '1995-06-10', 'Chennai'),
('0623TN0002', 'Emily Wilson', 'D0009', 'Department of Tennis', 'Female', '1997-03-12', 'Mumbai'),
('0523TN0003', 'Daniel Smith', 'D0009', 'Department of Tennis', 'Male', '1990-11-25', 'Bangalore'),
('0423TN0004', 'Olivia Taylor', 'D0009', 'Department of Tennis', 'Female', '1993-09-05', 'Kolkata'),
('0223TN0005', 'Liam Brown', 'D0009', 'Department of Tennis', 'Male', '1999-02-15', 'Delhi');
INSERT INTO Candidate VALUES
('0723KB0001', 'Aiden Adams', 'D0010', 'Department of Kabaddi', 'Male', '1990-03-25', 'Pune'),
('0623KB0002', 'Mia Lewis', 'D0010', 'Department of Kabaddi', 'Female', '1992-11-20', 'Hyderabad'),
('0523KB0003', 'Ella Brown', 'D0010', 'Department of Kabaddi', 'Female', '1988-06-10', 'Chennai'),
('0423KB0004', 'Liam Smith', 'D0010', 'Department of Kabaddi', 'Male', '1993-09-12', 'Delhi'),
('0223KB0005', 'Ethan Wilson', 'D0010', 'Department of Kabaddi', 'Male', '1996-02-15', 'Mumbai');
INSERT INTO Candidate VALUES
('1022BB0003', 'Liam Clark', 'D0004', 'Department of Basketball', 'Male', '1992-08-05', 'Trivandrum'),
('0321BB0004', 'Emma Moore', 'D0004', 'Department of Basketball', 'Female', '1995-04-25', 'Indore'),
('0319BB0005', 'Olivia Turner', 'D0004', 'Department of Basketball', 'Female', '1994-03-10', 'Mysore'),
('0214BB0006', 'Daniel Parker', 'D0004', 'Department of Basketball', 'Male', '1990-09-15', 'Varanasi'),
('0223BB0007', 'Sophia Scott', 'D0004', 'Department of Basketball', 'Female', '1993-12-20', 'Bhubaneswar');
INSERT INTO Candidate VALUES
('0722VB0003', 'Ethan Davis', 'D0003', 'Department of Volleyball', 'Male', '1992-05-20', 'Chandigarh'),
('1021VB0004', 'Sophia White', 'D0003', 'Department of Volleyball', 'Female', '1995-12-15', 'Jaipur'),
('1019VB0005', 'Mason Evans', 'D0003', 'Department of Volleyball', 'Male', '1989-10-02', 'Lucknow'),
('0814VB0006', 'Ava Hall', 'D0003', 'Department of Volleyball', 'Female', '1991-11-30', 'Ahmedabad'),
('0904VB0007', 'William Lee', 'D0003', 'Department of Volleyball', 'Male', '1997-07-18', 'Nagpur');
INSERT INTO Candidate VALUES
('0723CK0003', 'Michael Johnson', 'D0002', 'Department of Cricket', 'Male', '1995-06-10', 'Chennai'),
('0623CK0004', 'Emma Wilson', 'D0002', 'Department of Cricket', 'Female', '1997-03-12', 'Mumbai'),
('0523CK0005', 'Matthew Smith', 'D0002', 'Department of Cricket', 'Male', '1990-11-25', 'Bangalore'),
('0423CK0006', 'Olivia Taylor', 'D0002', 'Department of Cricket', 'Female', '1993-09-05', 'Kolkata'),
('0223CK0007', 'Liam Brown', 'D0002', 'Department of Cricket', 'Male', '1999-02-15', 'Delhi');


INSERT INTO Candidate_ph_em VALUES
('0723BP0001', 'aiden@example.com', '123-456-7890'),
('0723BP0001', 'aiden2@example.com', '987-654-3210');
INSERT INTO Candidate_ph_em VALUES
('0623BP0002', 'mike@example.com', '234-567-8901'),
('0623BP0002', 'mike2@example.com', '876-543-2109');
INSERT INTO Candidate_ph_em VALUES
('0523BP0003', 'edison@example.com', '345-678-9012'),
('0523BP0003', 'edison2@example.com', '765-432-1098');
INSERT INTO Candidate_ph_em VALUES
('0423BP0004', 'liam@example.com', '456-789-0123'),
('0423BP0004', 'liam2@example.com', '876-543-2109');
INSERT INTO Candidate_ph_em VALUES
('0223BP0005', 'ethan@example.com', '567-890-1234'),
('0223BP0005', 'ethan2@example.com', '987-654-3210');
INSERT INTO Candidate_ph_em VALUES
('0621OL0003', 'aiden@example.com', '123-456-7890'),
('0621OL0003', 'aiden2@example.com', '987-654-3210');
INSERT INTO Candidate_ph_em VALUES
('0617OL0004', 'mia@example.com', '234-567-8901'),
('0617OL0004', 'mia2@example.com', '876-543-2109');
INSERT INTO Candidate_ph_em VALUES
('0713OL0005', 'ella@example.com', '345-678-9012'),
('0713OL0005', 'ella2@example.com', '765-432-1098');
INSERT INTO Candidate_ph_em VALUES
('0812OL0006', 'liam@example.com', '456-789-0123'),
('0812OL0006', 'liam2@example.com', '876-543-2109');
INSERT INTO Candidate_ph_em VALUES
('0913OL0007', 'ethan@example.com', '567-890-1234'),
('0913OL0007', 'ethan2@example.com', '987-654-3210');
INSERT INTO Candidate_ph_em VALUES
('0705PL0003', 'liam@example.com', '123-456-7890'),
('0705PL0003', 'liam2@example.com', '987-654-3210');
INSERT INTO Candidate_ph_em VALUES
('1019PL0004', 'ava@example.com', '234-567-8901'),
('1019PL0004', 'ava2@example.com', '876-543-2109');
INSERT INTO Candidate_ph_em VALUES
('0821PL0005', 'sophia@example.com', '345-678-9012'),
('0821PL0005', 'sophia2@example.com', '765-432-1098');
INSERT INTO Candidate_ph_em VALUES
('0523PL0006', 'ethan@example.com', '456-789-0123'),
('0523PL0006', 'ethan2@example.com', '876-543-2109');
INSERT INTO Candidate_ph_em VALUES
('0623PL0007', 'mason@example.com', '567-890-1234'),
('0623PL0007', 'mason2@example.com', '987-654-3210');
INSERT INTO Candidate_ph_em  VALUES
('0723CK0003', 'michael@example.com', '123-456-7890'),
('0723CK0003', 'michael2@example.com', '987-654-3210');
INSERT INTO Candidate_ph_em  VALUES
('0623CK0004', 'emma@example.com', '234-567-8901'),
('0623CK0004', 'emma2@example.com', '876-543-2109');
INSERT INTO Candidate_ph_em VALUES
('0523CK0005', 'matthew@example.com', '345-678-9012'),
('0523CK0005', 'matthew2@example.com', '765-432-1098');
INSERT INTO Candidate_ph_em  VALUES
('0423CK0006', 'olivia@example.com', '456-789-0123'),
('0423CK0006', 'olivia2@example.com', '876-543-2109');
INSERT INTO Candidate_ph_em VALUES
('0223CK0007', 'liam@example.com', '567-890-1234'),
('0223CK0007', 'liam2@example.com', '987-654-3210');
INSERT INTO Candidate_ph_em VALUES
('0722VB0003', 'ethan@example.com', '123-456-7890'),
('0722VB0003', 'ethan2@example.com', '987-654-3210'),
('1021VB0004', 'sophia@example.com', '234-567-8901'),
('1021VB0004', 'sophia2@example.com', '876-543-2109'),
('1019VB0005', 'mason@example.com', '345-678-9012'),
('1019VB0005', 'mason2@example.com', '765-432-1098'),
('0814VB0006', 'ava@example.com', '456-789-0123'),
('0814VB0006', 'ava2@example.com', '876-543-2109'),
('0904VB0007', 'william@example.com', '567-890-1234'),
('0904VB0007', 'william2@example.com', '987-654-3210');
INSERT INTO Candidate_ph_em  VALUES ('1022BB0003', 'liam@example.com', '123-456-7890'), ('1022BB0003', 'liam2@example.com', '987-654-3210');
INSERT INTO Candidate_ph_em  VALUES ('0321BB0004', 'emma@example.com', '234-567-8901'), ('0321BB0004', 'emma2@example.com', '876-543-2109');
INSERT INTO Candidate_ph_em  VALUES ('0319BB0005', 'olivia@example.com', '345-678-9012'), ('0319BB0005', 'olivia2@example.com', '765-432-1098');
INSERT INTO Candidate_ph_em  VALUES ('0214BB0006', 'daniel@example.com', '456-789-0123'), ('0214BB0006', 'daniel2@example.com', '876-543-2109');
INSERT INTO Candidate_ph_em VALUES ('0223BB0007', 'sophia@example.com', '567-890-1234'), ('0223BB0007', 'sophia2@example.com', '987-654-3210');
INSERT INTO Candidate_ph_em VALUES
('0723KB0001', 'aiden@example.com', '123-456-7890'),
('0723KB0001', 'aiden2@example.com', '987-654-3210'),
('0623KB0002', 'mia@example.com', '234-567-8901'),
('0623KB0002', 'mia2@example.com', '876-543-2109'),
('0523KB0003', 'ella@example.com', '345-678-9012'),
('0523KB0003', 'ella2@example.com', '765-432-1098'),
('0423KB0004', 'liam@example.com', '456-789-0123'),
('0423KB0004', 'liam2@example.com', '876-543-2109'),
('0223KB0005', 'ethan@example.com', '567-890-1234'),
('0223KB0005', 'ethan2@example.com', '987-654-3210');
INSERT INTO Candidate_ph_em VALUES
('0723FT0001', 'david@example.com', '123-456-7890'),
('0723FT0001', 'david2@example.com', '987-654-3210'),
('0623FT0002', 'emily@example.com', '234-567-8901'),
('0623FT0002', 'emily2@example.com', '876-543-2109'),
('0523FT0003', 'daniel@example.com', '345-678-9012'),
('0523FT0003', 'daniel2@example.com', '765-432-1098'),
('0423FT0004', 'olivia@example.com', '456-789-0123'),
('0423FT0004', 'olivia2@example.com', '876-543-2109'),
('0223FT0005', 'liam@example.com', '567-890-1234'),
('0223FT0005', 'liam2@example.com', '987-654-3210'),
('0723BM0001', 'liam@example.com', '123-456-7890'),
('0723BM0001', 'liam2@example.com', '987-654-3210'),
('0623BM0002', 'ava@example.com', '234-567-8901'),
('0623BM0002', 'ava2@example.com', '876-543-2109'),
('0523BM0003', 'sophia@example.com', '345-678-9012'),
('0523BM0003', 'sophia2@example.com', '765-432-1098'),
('0423BM0004', 'ethan@example.com', '456-789-0123'),
('0423BM0004', 'ethan2@example.com', '876-543-2109'),
('0223BM0005', 'mason@example.com', '567-890-1234'),
('0223BM0005', 'mason2@example.com', '987-654-3210'),
('0723TN0001', 'david@example.com', '123-456-7890'),
('0723TN0001', 'david2@example.com', '987-654-3210'),
('0623TN0002', 'emily@example.com', '234-567-8901'),
('0623TN0002', 'emily2@example.com', '876-543-2109'),
('0523TN0003', 'daniel@example.com', '345-678-9012'),
('0523TN0003', 'daniel2@example.com', '765-432-1098'),
('0423TN0004', 'olivia@example.com', '456-789-0123'),
('0423TN0004', 'olivia2@example.com', '876-543-2109'),
('0223TN0005', 'liam@example.com', '567-890-1234'),
('0223TN0005', 'liam2@example.com', '987-654-3210');

SELECT
    ->     Candidate.Candidate_Id,
    ->     Candidate.Candidate_Name,
    ->     Candidate.Department_Id,
    ->     Candidate.Department_Name,
    ->     Candidate.Gender,
    ->     Candidate.DOB,
    ->     Candidate.Candidate_place,
    ->     Candidate_ph_em.Email,
    ->     Candidate_ph_em.Phone
    -> FROM Candidate
    -> LEFT JOIN Candidate_ph_em ON Candidate.Candidate_Id = Candidate_ph_em.Candidate_Id
    -> ORDER BY Candidate.Department_Id;
SELECT     Candidate.Candidate_Id,     Candidate.Candidate_Name,     Candidate.Department_Id,     Candidate.Department_Name,     Candidate.Gender,     Candidate.DOB,     Candidate.Candidate_place,     Candidate_ph_em.Email,     Candidate_ph_em.Phone FROM Candidate LEFT JOIN Candidate_ph_em ON Candidate.Candidate_Id = Candidate_ph_em.Candidate_Id ORDER BY Candidate.Department_Id;



create table Coach(Coach_Id char(10) primary key not null, Coach_name varchar(60) not null, Gender varchar(10) not null, DOB date not null, Coach_place varchar(50) not null);

create table Coach_ph_em(Coach_Id char(10) not null, Email varchar(100) not null, Phone varchar(15) not null, foreign key(Coach_Id) references Coach(Coach_Id) on delete cascade);

INSERT INTO Coach VALUES
    ('0928CCK001', 'Rajesh Sharma', 'Male', '1980-10-28', 'Delhi'),
    ('1018CCK002', 'Preeti Patel', 'Female', '1985-10-28', 'Mumbai'),
    ('0228CVB001', 'Amit Kumar', 'Male', '1980-10-28', 'Kolkata'),
    ('1021CVB002', 'Sneha Gupta', 'Female', '1985-10-28', 'Chennai'),
    ('1020CTN001', 'Sanjay Singh', 'Male', '1980-10-28', 'Bengaluru'),
    ('1014CTN002', 'Meera Joshi', 'Female', '1985-10-28', 'Hyderabad'),
    ('0528CBT001', 'Kunal Verma', 'Male', '1980-10-28', 'Pune'),
    ('0921CBT002', 'Rita Sharma', 'Female', '1985-10-28', 'Ahmedabad'),
    ('0828CPL001', 'Ramesh Kumar', 'Male', '1980-10-28', 'Jaipur'),
    ('0714CPL002', 'Neha Patel', 'Female', '1985-10-28', 'Lucknow'),
    ('1028COL001', 'Vikas Singh', 'Male', '1980-10-28', 'Bhopal'),
    ('0612COL002', 'Divya Mehta', 'Female', '1985-10-28', 'Chandigarh'),  
    ('1028CKB001', 'Mukesh Verma', 'Male', '1980-10-28', 'Coimbatore'),
    ('0815CKB002', 'Sarita Singh', 'Female', '1985-10-28', 'Indore'),
    ('1028CBP001', 'Rajat Sharma', 'Male', '1980-10-28', 'Nagpur'),
    ('1014CBP002', 'Nisha Gupta', 'Female', '1985-10-28', 'Surat'),
    ('1028CFT001', 'Arvind Patel', 'Male', '1980-10-28', 'Trivandrum'),
    ('0914CFT002', 'Anjali Sharma', 'Female', '1985-10-28', 'Visakhapatnam'),
    ('1121CBB001', 'Amith Shah', 'Male', '1980-10-28', 'Trivandrum'),
    ('0914CBB002', 'Jay Shah', 'Male', '1985-10-28', 'Visakhapatnam');
    
INSERT INTO Coach_ph_em VALUES
    ('0928CCK001', 'rajesh.sharma@gmail.com', '123-456-7890'),
    ('1018CCK002', 'preeti.patel@gmail.com', '987-654-3210'),
    ('0228CVB001', 'amit.kumar@gmail.com', '234-567-8901'),
    ('1021CVB002', 'sneha.gupta@gmail.com', '876-543-2109'),
    ('1020CTN001', 'sanjay.singh@gmail.com', '345-678-9012'),
    ('1014CTN002', 'meera.joshi@gmail.com', '765-432-1098'),
    ('0528CBT001', 'kunal.verma@gmail.com', '456-789-0123'),
    ('0921CBT002', 'rita.sharma@gmail.com', '876-543-2109'),
    ('0828CPL001', 'ramesh.kumar@gmail.com', '567-890-1234'),
    ('0714CPL002', 'neha.patel@gmail.com', '987-654-3210'),
    ('1028COL001', 'vikas.singh@gmail.com', '678-901-2345'),
    ('0612COL002', 'divya.mehta@gmail.com', '876-543-2109'),
    ('1028CKB001', 'mukesh.verma@gmail.com', '789-012-3456'),
    ('0815CKB002', 'sarita.singh@gmail.com', '987-654-3210'),
    ('1028CBP001', 'rajat.sharma@gmail.com', '890-123-4567'), 
    ('1028CBP001', 'rajat.sharma2@gmail.com', '891-123-4567'),
    ('1014CBP002', 'nisha.gupta@gmail.com', '987-654-3210'),
    ('1028CFT001', 'arvind.patel@gmail.com', '901-234-5678'), 
    ('1028CFT001', 'arvind.patel2@gmail.com', '911-234-5678'),
    ('0914CFT002', 'anjali.sharma@gmail.com', '987-654-3210'),
    ('1121CBB001', 'amith.shah@gmail.com', '123-456-7890'),
    ('0914CBB002', 'jay.shah@gmail.com', '987-654-3210');

ALTER TABLE Coach
ADD Department_Id char(5);
ALTER TABLE Coach
ADD FOREIGN KEY (Department_Id)
REFERENCES Department(Department_Id) on delete cascade;

UPDATE Coach
SET Department_Id = 'D0001'
WHERE Coach_Id LIKE '%CFT%';
UPDATE Coach
SET Department_Id = 'D0002'
WHERE Coach_Id LIKE '%CCK%';
UPDATE Coach
SET Department_Id = 'D0003'
WHERE Coach_Id LIKE '%CVB%';
UPDATE Coach
SET Department_Id = 'D0004'
WHERE Coach_Id LIKE '%CBB%';
UPDATE Coach
SET Department_Id = 'D0005'
WHERE Coach_Id LIKE '%COL%';
UPDATE Coach
SET Department_Id = 'D0006'
WHERE Coach_Id LIKE '%CPL%';
UPDATE Coach
SET Department_Id = 'D0007'
WHERE Coach_Id LIKE '%CBP%';
UPDATE Coach
SET Department_Id = 'D0008'
WHERE Coach_Id LIKE '%CBT%';
UPDATE Coach
SET Department_Id = 'D0009'
WHERE Coach_Id LIKE '%CTN%';
UPDATE Coach
SET Department_Id = 'D0010'
WHERE Coach_Id LIKE '%CKB%';

SELECT 
    Coach.Coach_Id,
    Coach.Coach_name,
    Coach.Department_Id,
    Coach.Gender,
    Coach.DOB,
    Coach.Coach_place,
    Coach_ph_em.Email,
    Coach_ph_em.Phone
FROM
    Coach
LEFT JOIN
    Coach_ph_em ON Coach.Coach_Id = Coach_ph_em.Coach_Id
ORDER BY
    Coach.Department_Id;
    
    

create table Enroll(Candidate_Id char(10) not null, Subscription_type varchar(30) not null, Payment_date date not null, Amount_paid double(10,2) not null, Subscription_expiry_date date not null, foreign key(Candidate_Id) references Candidate(Candidate_Id) on delete cascade);

INSERT INTO Enroll 
VALUES
('0723BP0001', 'Monthly', '2023-10-27', 3500.00, '2023-11-27'),
('0623BP0002', 'Yearly', '2023-10-27', 15000.00, '2024-10-27'),
('0523BP0003', 'Monthly', '2023-10-28', 3500.00, '2023-11-28'),
('0423BP0004', '3 Months', '2023-10-27', 6000.00, '2024-01-27'),
('0223BP0005', 'Half-Yearly', '2023-10-26', 10000.00, '2024-04-26');
INSERT INTO Enroll
VALUES
('0621OL0003', '3 Months', '2023-10-27', 6000.00, '2024-01-27'),
('0617OL0004', 'Half-Yearly', '2023-10-27', 10000.00, '2024-04-27'),
('0713OL0005', 'Monthly', '2023-10-28', 3500.00, '2023-11-28'),
('0812OL0006', '3 Months', '2023-10-27', 6000.00, '2024-01-27'),
('0913OL0007', 'Half-Yearly', '2023-10-26', 10000.00, '2024-04-26');
INSERT INTO Enroll
VALUES
('0705PL0003', '3 Months', '2023-10-27', 6000.00, '2024-01-27'),
('1019PL0004', 'Yearly', '2023-10-27', 15000.00, '2024-10-27'),
('0821PL0005', 'Monthly', '2023-10-28', 3500.00, '2023-11-28'),
('0523PL0006', '3 Months', '2023-10-27', 6000.00, '2024-01-27'),
('0623PL0007', 'Half-Yearly', '2023-10-26', 10000.00, '2024-04-26');
INSERT INTO Enroll
VALUES
('0723FT0001', '3 Months', '2023-10-21', 6000.00, '2024-01-21'),
('0623FT0002', 'Half-Yearly', '2023-10-27', 15000.00, '2024-04-27'),
('0523FT0003', 'Monthly', '2023-10-28', 3500.00, '2023-11-28'),
('0423FT0004', '3 Months', '2023-10-27', 6000.00, '2024-01-27'),
('0223FT0005', 'Half-Yearly', '2023-10-26', 10000.00, '2024-04-26');
INSERT INTO Enroll
VALUES
('0723BM0001', '3 Months', '2023-10-27', 6000.00, '2024-01-27'),
('0623BM0002', 'Half-Yearly', '2023-10-27', 15000.00, '2024-04-27'),
('0523BM0003', 'Monthly', '2023-10-28', 3500.00, '2023-11-28'),
('0423BM0004', '3 Months', '2023-10-27', 6000.00, '2024-01-27'),
('0223BM0005', 'Half-Yearly', '2023-10-26', 10000.00, '2024-04-26');
INSERT INTO Enroll
VALUES
('0723TN0001', '3 Months', '2023-10-27', 6000.00, '2024-01-27'),
('0623TN0002', 'Half-Yearly', '2023-10-27', 15000.00, '2024-04-27'),
('0523TN0003', 'Monthly', '2023-10-28', 3500.00, '2023-11-28'),
('0423TN0004', '3 Months', '2023-10-27', 6000.00, '2024-01-27'),
('0223TN0005', 'Half-Yearly', '2023-10-26', 10000.00, '2024-04-26');
INSERT INTO Enroll
VALUES
('0723KB0001', '3 Months', '2023-10-27', 6000.00, '2024-01-27'),
('0623KB0002', 'Half-Yearly', '2023-10-27', 15000.00, '2024-04-27'),
('0523KB0003', 'Monthly', '2023-10-28', 3500.00, '2023-11-28'),
('0423KB0004', '3 Months', '2023-10-27', 6000.00, '2024-01-27'),
('0223KB0005', 'Half-Yearly', '2023-10-26', 10000.00, '2024-04-26');
INSERT INTO Enroll
VALUES
('1022BB0003', '3 Months', '2023-10-27', 6000.00, '2024-01-27'),
('0321BB0004', 'Half-Yearly', '2023-10-27', 15000.00, '2024-04-27'),
('0319BB0005', 'Monthly', '2023-10-28', 3500.00, '2023-11-28'),
('0214BB0006', '3 Months', '2023-10-27', 6000.00, '2024-01-27'),
('0223BB0007', 'Half-Yearly', '2023-10-26', 10000.00, '2024-04-26');
INSERT INTO Enroll
VALUES
('0722VB0003', '3 Months', '2023-10-27', 6000.00, '2024-01-27'),
('1021VB0004', 'Half-Yearly', '2023-10-27', 15000.00, '2024-04-27'),
('1019VB0005', 'Monthly', '2023-10-28', 3500.00, '2023-11-28'),
('0814VB0006', '3 Months', '2023-10-27', 6000.00, '2024-01-27'),
('0904VB0007', 'Half-Yearly', '2023-10-26', 10000.00, '2024-04-26');
INSERT INTO Enroll
VALUES
('0723CK0003', '3 Months', '2023-10-27', 6000.00, '2024-01-27'),
('0623CK0004', 'Half-Yearly', '2023-10-27', 15000.00, '2024-04-27'),
('0523CK0005', 'Monthly', '2023-10-28', 3500.00, '2023-11-28'),
('0423CK0006', '3 Months', '2023-10-27', 6000.00, '2024-01-27'),
('0223CK0007', 'Half-Yearly', '2023-10-26', 10000.00, '2024-04-26');




create table Slots(Candidate_Id char(10) not null, Department_Id char(5) not null, Coach_Id char(10) not null, Day_1_time char(8) not null, Day_2_time char(8) not null, Day_3_time char(8) not null, Day_4_time char(8) not null, Day_5_time char(8) not null, Day_6_time char(8) not null, Day_7_time char(8) not null, foreign key(Candidate_Id) references Candidate(Candidate_Id) on delete cascade, foreign key(Department_Id) references Department(Department_Id) on delete cascade, foreign key(Coach_Id) references Coach(Coach_Id) on delete cascade);



insert into Slots value('0723BP0001', 'D0007', '1028CBP001', '06:00 AM', '06:00 PM', '06:00 AM', '06:00 PM', '06:00 AM', '06:00 PM','06:00 AM'),('0623BP0002', 'D0007', '1014CBP002', '07:00 AM', '07:00 PM', '07:00 AM', '07:00 PM', '07:00 AM', '07:00 PM','07:00 AM'),('0523BP0003', 'D0007', '1028CBP001', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM','08:00 AM'),('0423BP0004', 'D0007', '1014CBP002', '06:00 AM', '06:00 PM', '06:00 AM', '06:00 PM', '06:00 AM', '06:00 PM','06:00 AM'),('0223BP0005', 'D0007', '1028CBP001', '07:00 AM', '07:00 PM', '07:00 AM', '07:00 PM', '07:00 AM', '07:00 PM','07:00 AM');
insert into Slots value('0621OL0003', 'D0005', '1028COL001', '07:00 AM', '07:00 PM', '07:00 AM', '07:00 PM', '07:00 AM', '07:00 PM','07:00 AM'),('0617OL0004', 'D0005', '0612COL002', '07:00 AM', '07:00 PM', '07:00 AM', '07:00 PM', '07:00 AM', '07:00 PM', '07:00 AM'),('0713OL0005', 'D0005', '1028COL001', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM', '08:00 AM'),('0812OL0006', 'D0005', '0612COL002', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM','08:00 AM'),('0913OL0007', 'D0005', '1028COL001', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM','08:00 AM');
insert into Slots value('0705PL0003', 'D0006', '0828CPL001', '07:00 AM', '07:00 PM', '07:00 AM', '07:00 PM', '07:00 AM', '07:00 PM','07:00 AM'),('1019PL0004', 'D0006', '0714CPL002', '07:00 AM', '07:00 PM', '07:00 AM', '07:00 PM', '07:00 AM', '07:00 PM','07:00 AM'),('0821PL0005', 'D0006', '0828CPL001', '07:30 AM', '07:30 PM', '07:30 AM', '07:30 PM', '07:30 AM', '07:30 PM','07:30 AM'),('0523PL0006', 'D0006', '0714CPL002', '07:30 AM', '07:30 PM', '07:30 AM', '07:30 PM', '07:30 AM', '07:30 PM','07:30 AM'),('0623PL0007', 'D0006', '0714CPL002', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM','08:00 AM');
insert into Slots value('0723FT0001', 'D0001', '1028CFT001', '07:00 AM', '07:00 PM', '07:00 AM', '07:00 PM', '07:00 AM', '07:00 PM','07:00 AM'),('0623FT0002', 'D0001', '0914CFT002', '07:00 AM', '07:00 PM', '07:00 AM', '07:00 PM', '07:00 AM', '07:00 PM','07:00 AM'),('0523FT0003', 'D0001', '1028CFT001', '07:00 AM', '07:00 PM', '07:00 AM', '07:00 PM', '07:00 AM', '07:00 PM','07:00 AM'),('0423FT0004', 'D0001', '0914CFT002', '07:00 AM', '07:00 PM', '07:00 AM', '07:00 PM', '07:00 AM', '07:00 PM','07:00 AM'),('0223FT0005', 'D0001', '1028CFT001', '07:00 AM', '07:00 PM', '07:00 AM', '07:00 PM', '07:00 AM', '07:00 PM','07:00 AM');
insert into Slots value('0723BM0001', 'D0008', '0528CBT001', '07:00 AM', '07:00 PM', '07:00 AM', '07:00 PM', '07:00 AM', '07:00 PM','07:00 AM'),('0623BM0002', 'D0008', '0921CBT002', '07:00 AM', '07:00 PM', '07:00 AM', '07:00 PM', '07:00 AM', '07:00 PM','07:00 AM'),('0523BM0003', 'D0008', '0528CBT001', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM','08:00 AM'),('0423BM0004', 'D0008', '0921CBT002', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM','08:00 AM'),('0223BM0005', 'D0008', '0528CBT001', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM','08:00 AM');
insert into Slots value('0723TN0001', 'D0009', '1020CTN001', '07:00 AM', '07:00 PM', '07:00 AM', '07:00 PM', '07:00 AM', '07:00 PM','07:00 AM'),('0623TN0002', 'D0009', '1014CTN002', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM','08:00 AM'),('0523TN0003', 'D0009', '1020CTN001', '07:00 AM', '07:00 PM', '07:00 AM', '07:00 PM', '07:00 AM', '07:00 PM','07:00 AM'),('0423TN0004', 'D0009', '1014CTN002', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM','08:00 AM'),('0223TN0005', 'D0009', '1014CTN002', '07:00 AM', '07:00 PM', '07:00 AM', '07:00 PM', '07:00 AM', '07:00 PM','07:00 AM');
insert into Slots value('0723KB0001', 'D0010', '0815CKB002', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM','08:00 AM'),('0623KB0002', 'D0010', '1028CKB001', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM','08:00 AM'),('0523KB0003', 'D0010', '0815CKB002', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM','08:00 AM'),('0423KB0004', 'D0010', '1028CKB001', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM','08:00 AM'),('0223KB0005', 'D0010', '0815CKB002', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM','08:00 AM');
insert into Slots value('1022BB0003', 'D0004', '1121CBB001', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM','08:00 AM'),('0321BB0004', 'D0004', '0914CBB002', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM','08:00 AM'),('0319BB0005', 'D0004', '1121CBB001', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM','08:00 AM'),('0214BB0006', 'D0004', '0914CBB002', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM','08:00 AM'),('0223BB0007', 'D0004', '1121CBB001', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM','08:00 AM');
insert into Slots value('0722VB0003', 'D0003', '0228CVB001', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM','08:00 AM'),('1021VB0004', 'D0003', '1021CVB002', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM','08:00 AM'),('1019VB0005', 'D0003', '0228CVB001', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM','08:00 AM'),('0814VB0006', 'D0003', '1021CVB002', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM','08:00 AM'),('0904VB0007', 'D0003', '0228CVB001', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM','08:00 AM');
insert into Slots value('0723CK0003', 'D0002', '0928CCK001', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM','08:00 AM'),('0623CK0004', 'D0002', '1018CCK002', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM','08:00 AM'),('0523CK0005', 'D0002', '0928CCK001', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM','08:00 AM'),('0423CK0006', 'D0002', '1018CCK002', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM','08:00 AM'),('0223CK0007', 'D0002', '0928CCK001', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM', '08:00 AM', '08:00 PM','08:00 AM');

MORE QUERIES:
Like and between
 SELECT Coach_Id, Coach_Name FROM Coach WHERE Coach_Name LIKE '%Singh';
 SELECT Department_Id, Department_Name FROM Department WHERE Department_Name LIKE '%Ball%';
 SELECT Department_Id, Department_Name FROM Department WHERE Department_Id between "D0003" and "D0007";
 
Group by
 select Candidate_Id, Candidate_name, Department_name from Candidate group by Candidate_Id;
 select Department_Id, Department_name, Start_date from Department group by Department_Id;
 
Having
 select * from Candidate having Department_Id = "D0002";
 select * from Slots having Department_Id = "D0005";
 
Set
  Union
    select Candidate_name, Department_name from Candidate where Department_Id="D0002" union select Candidate_name, Department_name from Candidate where Department_Id="D0005";
    select Coach_name, Coach_place, Gender from Coach where Department_Id="D0003" union select Coach_name, Coach_place, Gender from Coach where Department_Id="D0006";
    
  Intersect
    select Candidate_Id from Candidate intersect select Candidate_Id from Slots;
    select Coach_Id from Coach intersect select Coach_Id from Slots; from Slots;
  
  Union all
    select Coach_name from Coach union all select Phone from Coach_ph_em;
    select Admin_name from Admin union all select City from Admin;

Nested
  SELECT Email FROM Candidate_ph_em WHERE Candidate_Id IN (SELECT Candidate_Id FROM Candidate WHERE Department_Id = 'D0006');
  SELECT Candidate_Id, Candidate_Name FROM Candidate WHERE Candidate_Id IN (SELECT Candidate_Id FROM Enroll WHERE Subscription_type = 'Monthly');
  SELECT Coach_Id, Coach_Name, (SELECT COUNT(*) FROM Slots WHERE Slots.Coach_Id = Coach.Coach_Id) AS SlotCount FROM Coach;         
  SELECT Coach_Name FROM Coach WHERE Department_Id = (SELECT Department_Id FROM Department WHERE Department_Name = 'Department of Cricket');
  SELECT Candidate_Id, Subscription_type, Amount_paid FROM Enroll WHERE Amount_paid > (SELECT AVG(Amount_paid) FROM Enroll );
  
Simple
 select * from Admin;
 select * from Department;
 insert into Admin values("0923Ad0006", "DBMS", "dbms@0000", "0001-01-01", "UNKNOWN", "COMPUTER");
 delete from Admin where Admin_Name="DBMS";
 update Coach set Coach_name="M S Dhoni" where Coach_Id="0928CCK001";
 



