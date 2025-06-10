CREATE TABLE Physician (
    ID INT PRIMARY KEY,
    First_Name NVARCHAR(50),
    Last_Name NVARCHAR(50),
    Specialty NVARCHAR(100),
    License_Number INT
);
BULK INSERT Physician
FROM 'C:\Users\admin\Desktop\ALL FILES\CapgeminiTraining\PowerBI_Online\DataSets\Physician.csv'
WITH (
    FIRSTROW = 2,              -- Skip header row
    FIELDTERMINATOR = ',',     -- CSV delimiter
    ROWTERMINATOR = '\n',      -- Line break
    TABLOCK
);
SELECT * FROM Physician;

CREATE TABLE Patient (
    Patient_ID INT PRIMARY KEY,
    Patient_Name NVARCHAR(100),
    Address NVARCHAR(255),
    Age INT,
    Gender CHAR(1),
    Insurance_ID INT
);
BULK INSERT Patient
FROM 'C:\Users\admin\Desktop\ALL FILES\CapgeminiTraining\PowerBI_Online\DataSets\Patient.csv'
WITH (
    FIRSTROW = 2,              -- Skip header row
    FIELDTERMINATOR = ',',     -- CSV delimiter
    ROWTERMINATOR = '\n',      -- Line break
    TABLOCK
);
SELECT * FROM Patient;

CREATE TABLE Claim (
    Claim_Number NVARCHAR(20) PRIMARY KEY,
    Patient_ID INT,
    Physician_ID INT,
    Service_Code INT,
    Payer_ID INT,
    Claim_Date DATE,
    Date_of_Services DATE,
    Amount_of_Charge DECIMAL(10,2),
    Unit_of_Services INT,
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID),
    FOREIGN KEY (Physician_ID) REFERENCES Physician(ID)
);
BULK INSERT Claim
FROM 'C:\Users\admin\Desktop\ALL FILES\CapgeminiTraining\PowerBI_Online\DataSets\Claim.csv'
WITH (
    FIRSTROW = 2,              -- Skip header row
    FIELDTERMINATOR = ',',     -- CSV delimiter
    ROWTERMINATOR = '\n',      -- Line break
    TABLOCK
);
SELECT * FROM Claim;
