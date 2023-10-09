--Inserting data to customer table
INSERT INTO Customer (ID, Name, Address, Phone, Email, CreditCard)
VALUES (1, 'John Doe', '123 Main St', '975-555-1313', 'john.doe@email.com', '4567-9012-3456-3245');
INSERT INTO Customer (ID, Name, Address, Phone, Email, CreditCard)
VALUES (2, 'Jane Doe', '456 Elm St', '555-555-1313', 'jane.doe@email.com', '5678-9012-3456-7890');

-- Inserting data into the Location table
INSERT INTO Location (LocationID, Address)
VALUES (1, '123 Main St');

INSERT INTO Location (LocationID, Address)
VALUES (2, '456 Elm St');

-- Inserting data into the Vehicle table
INSERT INTO Vehicle (VehicleID, Manufacture, Color, Model, Year, Type, CustomerID)
VALUES (1, 'Toyota', 'Red', 'Corolla', 2020, 'Sedan', 1);

INSERT INTO Vehicle (VehicleID, Manufacture, Color, Model, Year, Type, CustomerID)
VALUES (2, 'Honda', 'Blue', 'Civic', 2021, 'Sedan', 2);

-- Inserting data into the Appointment table
INSERT INTO Appointment (AppointmentID, AppointmentDate, CustomerID, LocationID, VehicleID)
VALUES (1, TO_DATE('2023-05-01', 'YYYY-MM-DD'), 1, 1, 1);

INSERT INTO Appointment (AppointmentID, AppointmentDate, CustomerID, LocationID, VehicleID)
VALUES (2, TO_DATE('2023-05-02', 'YYYY-MM-DD'), 2, 2, 2);

-- Inserting data into the Employee table
INSERT INTO Employee (SSN, Name, HireDate, Role, LocationID, HourlyRate, Salary)
VALUES ('123-45-6789', 'Bob Johnson', TO_DATE('2022-01-01', 'YYYY-MM-DD'), 'Mechanic', 1, 20.50, 45000.00);

INSERT INTO Employee (SSN, Name, HireDate, Role, LocationID, HourlyRate, Salary)
VALUES ('234-56-7890', 'Sue Smith', TO_DATE('2021-05-01', 'YYYY-MM-DD'), 'Manager', 2, 30.00, 70000.00);

-- Inserting data into the Invoice table
INSERT INTO Invoice (InvoiceID, Amount, DatePaid)
VALUES (1, 250.00, TO_DATE('2023-05-05', 'YYYY-MM-DD'));

INSERT INTO Invoice (InvoiceID, Amount, DatePaid)
VALUES (2, 175.50, NULL);

-- Inserting data into the ServicesOffered table
INSERT INTO ServicesOffered (ServiceType, VehicleType, Labor, SkillID, AppointmentID)
VALUES ('Oil Change', 'Sedan', 45.00, 1, 1);

INSERT INTO ServicesOffered (ServiceType, VehicleType, Labor, SkillID, AppointmentID)
VALUES ('Tire Rotation', 'Sedan', 35.00, 2, 2);

-- Inserting data into the Part table
INSERT INTO Part (PartID, PartName, Price)
VALUES (1, 'Oil Filter', 10.00);

INSERT INTO Part (PartID, PartName, Price)
VALUES (2, 'Tire', 75.00);

-- Insert data into ServicePart table
INSERT INTO ServicesPart (PartID, ServiceType) VALUES (1, 'Oil Change');
INSERT INTO ServicesPart (PartID, ServiceType) VALUES (2, 'Tire Rotation');

--Insert data to Skill table
INSERT INTO Skill (SkillID, SkillName) VALUES (1, 'Mechanic');
INSERT INTO Skill (SkillID, SkillName) VALUES (2, 'Electrician');

--Insert data to employee skill Table
INSERT INTO EmployeeSkills (SkillID, SSN) VALUES (1, '123-45-6789');
INSERT INTO EmployeeSkills (SkillID, SSN) VALUES (2, '123-45-6789');

--Insert data to Includes table
INSERT INTO Includes (ServiceType, InvoiceID, AppointmentID) VALUES ('Oil Change', 1, 1);
INSERT INTO Includes (ServiceType, InvoiceID, AppointmentID) VALUES ('Tire Rotation', 1, 1);
