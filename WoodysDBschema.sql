CREATE TABLE Customer (
  ID INT PRIMARY KEY,
  Name VARCHAR2(50),
  Address VARCHAR2(100),
  Phone VARCHAR2(20),
  Email VARCHAR2(50),
  CreditCard VARCHAR2(20),
  Password VARCHAR2(20),
  ConfirmPassword VARCHAR2(20)
);

CREATE TABLE Location (
  LocationID INT PRIMARY KEY,
  Address VARCHAR2(100)
);

CREATE TABLE Vehicle (
  VehicleID INT PRIMARY KEY,
  Manufacture VARCHAR2(50),
  Color VARCHAR2(50),
  Model VARCHAR2(50),
  Year INT,
  Type VARCHAR2(50),
  CustomerID INT,
  FOREIGN KEY (CustomerID) REFERENCES Customer(ID)
);

CREATE TABLE Appointment (
  AppointmentID INT PRIMARY KEY,
  AppointmentDate DATE,
  CustomerID INT,
  LocationID INT,
  VehicleID INT,
  FOREIGN KEY (CustomerID) REFERENCES Customer(ID),
  FOREIGN KEY (LocationID) REFERENCES Location(LocationID),
  FOREIGN KEY (VehicleID) REFERENCES Vehicle(VehicleID)
);



CREATE TABLE Employee (
  SSN VARCHAR2(50) PRIMARY KEY,
  Name VARCHAR2(50),
  HireDate DATE,
  Role VARCHAR2(50),
  LocationID INT,
  HourlyRate NUMBER(10,2),
  Salary NUMBER(10,2),
  FOREIGN KEY (LocationID) REFERENCES Location(LocationID)
);


CREATE TABLE Invoice (
  InvoiceID INT PRIMARY KEY,
  Amount NUMBER(10,2),
  DatePaid DATE
);


CREATE TABLE ServicesOffered (
  ServiceType VARCHAR2(50) PRIMARY KEY,
  VehicleType VARCHAR2(50),
  Labor DECIMAL(10,2),
  SkillID INT,
  AppointmentID INT,
  CONSTRAINT FK_ServicesOffered_Appointment FOREIGN KEY (AppointmentID) REFERENCES Appointment(AppointmentID)
);


CREATE TABLE Part (
  PartID INT PRIMARY KEY,
  PartName VARCHAR2(50),
  Price DECIMAL(10,2)
);

CREATE TABLE ServicesPart (
  PartID INT,
  ServiceType VARCHAR2(50),
  PRIMARY KEY (PartID, ServiceType),
  FOREIGN KEY (PartID) REFERENCES Part(PartID),
  FOREIGN KEY (ServiceType) REFERENCES ServicesOffered(ServiceType)
);

CREATE TABLE Skill (
  SkillID INT PRIMARY KEY,
  SkillName VARCHAR2(50)
);


CREATE TABLE EmployeeSkills (
  SkillID INT,
  SSN VARCHAR2(50),
  PRIMARY KEY (SkillID, SSN),
  FOREIGN KEY (SkillID) REFERENCES Skill(SkillID),
  FOREIGN KEY (SSN) REFERENCES Employee(SSN)
);

CREATE TABLE Includes (
  ServiceType VARCHAR2(50),
  InvoiceID INT,
  AppointmentID INT,
  PRIMARY KEY (ServiceType, InvoiceID),
  FOREIGN KEY (ServiceType) REFERENCES ServicesOffered(ServiceType),
  FOREIGN KEY (InvoiceID) REFERENCES Invoice(InvoiceID),
  FOREIGN KEY (AppointmentID) REFERENCES Appointment(AppointmentID)
);