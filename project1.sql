create database school1
go
use School1
go


CREATE TABLE GraduatesBatch1 (
    GraduateID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    GraduationYear INT,
    Major VARCHAR(100),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(15))

    CREATE TABLE GraduateJobs (
    JobID INT PRIMARY KEY,
    GraduateID INT,
    JobTitle VARCHAR(100),
    Company VARCHAR(100),
    StartDate DATE,
    Salary DECIMAL(10, 2),
    FOREIGN KEY (GraduateID) REFERENCES GraduatesBatch1(GraduateID))

CREATE TABLE GraduateAddresses (
    AddressID INT PRIMARY KEY,
    GraduateID INT,
    StreetAddress VARCHAR(255),
    City VARCHAR(100),
    State VARCHAR(100),
    ZipCode VARCHAR(20),
    FOREIGN KEY (GraduateID) REFERENCES GraduatesBatch1(GraduateID))

    CREATE TABLE GraduateChildren (
    RecordID INT PRIMARY KEY,
    GraduateID INT,
    NumberOfChildren INT,
    FOREIGN KEY (GraduateID) REFERENCES GraduatesBatch1(GraduateID))

INSERT INTO GraduatesBatch1  VALUES (1, 'Noa', 'Levi', 2020, 'Computer Science', 'noa.levi@example.com', '050-1234567');
INSERT INTO GraduatesBatch1  VALUES (2, 'Liam', 'Cohen', 2020, 'Biology', 'liam.cohen@example.com', '050-2345678');
INSERT INTO GraduatesBatch1  VALUES (3, 'Maya', 'Smith', 2020, 'Mathematics', 'maya.smith@example.com', '050-3456789');
INSERT INTO GraduatesBatch1  VALUES (4, 'Eli', 'Brown', 2020, 'Physics', 'eli.brown@example.com', '050-4567890');
INSERT INTO GraduatesBatch1  VALUES (5, 'Emma', 'Garcia', 2020, 'Chemistry', 'emma.garcia@example.com', '050-5678901');
INSERT INTO GraduatesBatch1  VALUES (6, 'Ava', 'Martinez', 2020, 'History', 'ava.martinez@example.com', '050-6789012');
INSERT INTO GraduatesBatch1  VALUES (7, 'Sophia', 'Davis', 2020, 'Art', 'sophia.davis@example.com', '050-7890123');
INSERT INTO GraduatesBatch1  VALUES (8, 'Lucas', 'Rodriguez', 2020, 'Music', 'lucas.rodriguez@example.com', '050-8901234');
INSERT INTO GraduatesBatch1  VALUES (9, 'Mason', 'Wilson', 2020, 'Engineering', 'mason.wilson@example.com', '050-9012345');
INSERT INTO GraduatesBatch1  VALUES (10, 'Olivia', 'Anderson', 2020, 'Economics', 'olivia.anderson@example.com', '050-0123456');
INSERT INTO GraduatesBatch1  VALUES (11, 'Isabella', 'Thomas', 2020, 'Political Science', 'isabella.thomas@example.com', '050-1123456');
INSERT INTO GraduatesBatch1  VALUES (12, 'Aiden', 'Jackson', 2020, 'Psychology', 'aiden.jackson@example.com', '050-2123456');
INSERT INTO GraduatesBatch1  VALUES (13, 'Ethan', 'White', 2020, 'Philosophy', 'ethan.white@example.com', '050-3123456');
INSERT INTO GraduatesBatch1  VALUES (14, 'James', 'Harris', 2020, 'Sociology', 'james.harris@example.com', '050-4123456');
INSERT INTO GraduatesBatch1  VALUES (15, 'Benjamin', 'Clark', 2020, 'Anthropology', 'benjamin.clark@example.com', '050-5123456');
INSERT INTO GraduatesBatch1  VALUES (16, 'Amelia', 'Lewis', 2020, 'Linguistics', 'amelia.lewis@example.com', '050-6123456');
INSERT INTO GraduatesBatch1  VALUES (17, 'Mia', 'Walker', 2020, 'Literature', 'mia.walker@example.com', '050-7123456');
INSERT INTO GraduatesBatch1  VALUES (18, 'Alexander', 'Young', 2020, 'Geography', 'alexander.young@example.com', '050-8123456');
INSERT INTO GraduatesBatch1  VALUES (19, 'Daniel', 'Allen', 2020, 'Environmental Science', 'daniel.allen@example.com', '050-9123456');
INSERT INTO GraduatesBatch1  VALUES (20, 'Logan', 'King', 2020, 'Business Administration', 'logan.king@example.com', '050-0123457');
INSERT INTO GraduateJobs (JobID, GraduateID, JobTitle, Company, StartDate, Salary) VALUES (1, 1, 'Software Developer', 'TechCorp', '2021-06-01', 85000.00);
INSERT INTO GraduateJobs (JobID, GraduateID, JobTitle, Company, StartDate, Salary) VALUES (2, 2, 'Biologist', 'BioLab', '2021-09-15', 75000.00);
INSERT INTO GraduateJobs (JobID, GraduateID, JobTitle, Company, StartDate, Salary) VALUES (3, 3, 'Data Analyst', 'DataWorks', '2021-03-20', 72000.00);
INSERT INTO GraduateJobs (JobID, GraduateID, JobTitle, Company, StartDate, Salary) VALUES (4, 4, 'Research Scientist', 'PhysTech', '2021-11-10', 90000.00);
INSERT INTO GraduateJobs (JobID, GraduateID, JobTitle, Company, StartDate, Salary) VALUES (5, 5, 'Chemist', 'ChemSolutions', '2021-07-05', 78000.00);
INSERT INTO GraduateJobs (JobID, GraduateID, JobTitle, Company, StartDate, Salary) VALUES (6, 6, 'History Teacher', 'HighSchool', '2021-08-25', 50000.00);
INSERT INTO GraduateJobs (JobID, GraduateID, JobTitle, Company, StartDate, Salary) VALUES (7, 7, 'Art Director', 'CreativeStudio', '2021-10-15', 95000.00);
INSERT INTO GraduateJobs (JobID, GraduateID, JobTitle, Company, StartDate, Salary) VALUES (8, 8, 'Music Producer', 'SoundWave', '2021-04-22', 88000.00);
INSERT INTO GraduateJobs (JobID, GraduateID, JobTitle, Company, StartDate, Salary) VALUES (9, 9, 'Mechanical Engineer', 'AutoTech', '2021-05-30', 92000.00);
INSERT INTO GraduateJobs (JobID, GraduateID, JobTitle, Company, StartDate, Salary) VALUES (10, 10, 'Economist', 'FinanceGroup', '2021-12-01', 80000.00);
INSERT INTO GraduateJobs (JobID, GraduateID, JobTitle, Company, StartDate, Salary) VALUES (11, 11, 'Policy Advisor', 'GovAgency', '2021-06-18', 83000.00);
INSERT INTO GraduateJobs (JobID, GraduateID, JobTitle, Company, StartDate, Salary) VALUES (12, 12, 'Clinical Psychologist', 'HealthCare', '2021-07-12', 77000.00);
INSERT INTO GraduateJobs (JobID, GraduateID, JobTitle, Company, StartDate, Salary) VALUES (13, 13, 'Philosophy Professor', 'University', '2021-09-01', 68000.00);
INSERT INTO GraduateJobs (JobID, GraduateID, JobTitle, Company, StartDate, Salary) VALUES (14, 14, 'Sociologist', 'SocialResearch', '2021-11-20', 74000.00);
INSERT INTO GraduateJobs (JobID, GraduateID, JobTitle, Company, StartDate, Salary) VALUES (15, 15, 'Anthropologist', 'CulturalStudy', '2021-03-15', 76000.00);
INSERT INTO GraduateJobs (JobID, GraduateID, JobTitle, Company, StartDate, Salary) VALUES (16, 16, 'Linguist', 'LanguageInstitute', '2021-08-10', 67000.00);
INSERT INTO GraduateJobs (JobID, GraduateID, JobTitle, Company, StartDate, Salary) VALUES (17, 17, 'Literary Critic', 'PublishingHouse', '2021-10-05', 69000.00);
INSERT INTO GraduateJobs (JobID, GraduateID, JobTitle, Company, StartDate, Salary) VALUES (18, 18, 'Geographer', 'GeoMapping', '2021-04-28', 75000.00);
INSERT INTO GraduateJobs (JobID, GraduateID, JobTitle, Company, StartDate, Salary) VALUES (19, 19, 'Environmental Consultant', 'EcoSolutions', '2021-05-15', 82000.00);
INSERT INTO GraduateJobs (JobID, GraduateID, JobTitle, Company, StartDate, Salary) VALUES (20, 20, 'Business Manager', 'BizEnterprises', '2021-12-20', 93000.00);




INSERT INTO GraduateAddresses (AddressID, GraduateID, StreetAddress, City, State, ZipCode) VALUES (1, 1, '123 Main St', 'Tel Aviv', 'Tel Aviv', '61000');
INSERT INTO GraduateAddresses (AddressID, GraduateID, StreetAddress, City, State, ZipCode) VALUES (2, 2, '456 Elm St', 'Haifa', 'Haifa', '32000');
INSERT INTO GraduateAddresses (AddressID, GraduateID, StreetAddress, City, State, ZipCode) VALUES (3, 3, '789 Maple Ave', 'Jerusalem', 'Jerusalem', '91000');
INSERT INTO GraduateAddresses (AddressID, GraduateID, StreetAddress, City, State, ZipCode) VALUES (4, 4, '135 Oak St', 'Beer Sheva', 'Southern District', '84000');
INSERT INTO GraduateAddresses (AddressID, GraduateID, StreetAddress, City, State, ZipCode) VALUES (5, 5, '246 Pine Rd', 'Rishon LeZion', 'Central District', '75000');
INSERT INTO GraduateAddresses (AddressID, GraduateID, StreetAddress, City, State, ZipCode) VALUES (6, 6, '357 Cedar St', 'Netanya', 'Central District', '42000');
INSERT INTO GraduateAddresses (AddressID, GraduateID, StreetAddress, City, State, ZipCode) VALUES (7, 7, '468 Birch Rd', 'Ashdod', 'Southern District', '77000');
INSERT INTO GraduateAddresses (AddressID, GraduateID, StreetAddress, City, State, ZipCode) VALUES (8, 8, '579 Spruce Ave', 'Holon', 'Tel Aviv', '58000');
INSERT INTO GraduateAddresses (AddressID, GraduateID, StreetAddress, City, State, ZipCode) VALUES (9, 9, '680 Fir St', 'Petah Tikva', 'Central District', '49000');
INSERT INTO GraduateAddresses (AddressID, GraduateID, StreetAddress, City, State, ZipCode) VALUES (10, 10, '791 Willow Rd', 'Kfar Saba', 'Central District', '44000');
INSERT INTO GraduateAddresses (AddressID, GraduateID, StreetAddress, City, State, ZipCode) VALUES (11, 11, '802 Aspen Ave', 'Eilat', 'Southern District', '88000');
INSERT INTO GraduateAddresses (AddressID, GraduateID, StreetAddress, City, State, ZipCode) VALUES (12, 12, '913 Redwood St', 'Ramat Gan', 'Tel Aviv', '52000');
INSERT INTO GraduateAddresses (AddressID, GraduateID, StreetAddress, City, State, ZipCode) VALUES (13, 13, '102 Palm Rd', 'Rehovot', 'Central District', '76000');
INSERT INTO GraduateAddresses (AddressID, GraduateID, StreetAddress, City, State, ZipCode) VALUES (14, 14, '203 Pineapple Ave', 'Herzliya', 'Tel Aviv', '46000');
INSERT INTO GraduateAddresses (AddressID, GraduateID, StreetAddress, City, State, ZipCode) VALUES (15, 15, '304 Coconut St', 'Bat Yam', 'Tel Aviv', '59500');
INSERT INTO GraduateAddresses (AddressID, GraduateID, StreetAddress, City, State, ZipCode) VALUES (16, 16, '405 Mango Rd', 'Ashkelon', 'Southern District', '78100');
INSERT INTO GraduateAddresses (AddressID, GraduateID, StreetAddress, City, State, ZipCode) VALUES (17, 17, '506 Banana Ave', 'Modiin', 'Central District', '71700');
INSERT INTO GraduateAddresses (AddressID, GraduateID, StreetAddress, City, State, ZipCode) VALUES (18, 18, '607 Lemon St', 'Nazareth', 'Northern District', '16100');
INSERT INTO GraduateAddresses (AddressID, GraduateID, StreetAddress, City, State, ZipCode) VALUES (19, 19, '708 Lime Rd', 'Hadera', 'Haifa', '38100');
INSERT INTO GraduateAddresses (AddressID, GraduateID, StreetAddress, City, State, ZipCode) VALUES (20, 20, '809 Orange St', 'Beit Shemesh', 'Jerusalem', '99000');
 
INSERT INTO GraduateChildren VALUES (1, 1, 2);
INSERT INTO GraduateChildren VALUES (2, 2, 3);
INSERT INTO GraduateChildren VALUES (3, 3, 1);
INSERT INTO GraduateChildren VALUES (4, 4, 2);
INSERT INTO GraduateChildren VALUES (5, 5, 4);
INSERT INTO GraduateChildren VALUES (6, 6, 0);
INSERT INTO GraduateChildren VALUES (7, 7, 1);
INSERT INTO GraduateChildren VALUES (8, 8, 2);
INSERT INTO GraduateChildren VALUES (9, 9, 3);
INSERT INTO GraduateChildren VALUES (10, 10, 1);
INSERT INTO GraduateChildren VALUES (11, 11, 2);
INSERT INTO GraduateChildren VALUES (12, 12, 0);
INSERT INTO GraduateChildren VALUES (13, 13, 1);
INSERT INTO GraduateChildren VALUES (14, 14, 3);
INSERT INTO GraduateChildren VALUES (15, 15, 2);
INSERT INTO GraduateChildren VALUES (16, 16, 1);
INSERT INTO GraduateChildren VALUES (17, 17, 0);
INSERT INTO GraduateChildren VALUES (18, 18, 2);
INSERT INTO GraduateChildren VALUES (19, 19, 4);
INSERT INTO GraduateChildren VALUES (20, 20, 1);
