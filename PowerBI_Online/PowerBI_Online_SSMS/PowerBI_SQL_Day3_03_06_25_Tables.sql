CREATE TABLE Patient (
    Patient_ID INT PRIMARY KEY,
    Patient_Name VARCHAR(100),
    Address VARCHAR(255),
    Age INT,
    Gender VARCHAR(10),
    Insurance_ID INT
);

INSERT INTO Patient (Patient_ID, Patient_Name, Address, Age, Gender, Insurance_ID)
VALUES
(1, 'Alice Johnson', '123 Main St, Springfield', 16, 'Female', 1001),
(2, 'Brian Smith', '456 Oak Ave, Lincoln', 16, 'Male', 1002),
(3, 'Cathy Lee', '789 Pine Rd, Shelbyville', 16, 'Female', 1003),
(4, 'David Kim', '321 Maple Blvd, Centerville', 16, 'Male', 1004),
(5, 'Emma Davis', '654 Birch Ln, Rivertown', 16, 'Other', 1005);

BULK INSERT Patient
FROM 'C:\Users\admin\Desktop\ALL FILES\CapgeminiTraining\PowerBI_Online\DataSets\Patient.csv'
WITH (
    FORMAT = 'CSV', -- Optional in newer versions
    FIRSTROW = 2,   -- Skip header row
    FIELDTERMINATOR = ',',  
    ROWTERMINATOR = '\n',
    TABLOCK
);

SELECT * FROM Patient