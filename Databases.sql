CREATE TABLE [dbo].[PATIENT]
(
  patientID int Identity(1,1) PRIMARY KEY,
  firstName varchar(25),
  lastName varchar(25),
  contactNumber varchar(10),
  email varchar(35)
);

CREATE TABLE [dbo].[EMPLOYEE]
(
  employeeID int Identity(1,1) PRIMARY KEY,
  firstName varchar(25),
  lastName varchar(25),
  contactNumber VARCHAR(10),
  email varchar(35),
  Atype int 
);

CREATE TABLE [dbo].[MEDICINE]
(
  medicineID int Identity(1,1) PRIMARY KEY,
  descr varchar(25),
  price money,
  category int
);

CREATE TABLE [dbo].[FILE]
(
  fileID int IDENTITY(1,1) PRIMARY KEY,
  patientID int FOREIGN KEY REFERENCES PATIENT(patientID),
  employeeID int FOREIGN KEY REFERENCES EMPLOYEE(employeeID),
  descr varchar(25),
  adate date,
  document varchar(55) 
);

CREATE TABLE [DBO].[APPOINTMENT]
(
  appointmentID int Identity(1,1) PRIMARY KEY,
  adress varchar(35),
  date_and_time DATETIME,
  employeeID int FOREIGN KEY REFERENCES EMPLOYEE(employeeID),
  patientID int FOREIGN KEY REFERENCES PATIENT(patientID),
  medicineID int FOREIGN KEY REFERENCES MEDICINE(medicineID)
);
