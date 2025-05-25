create database birdobservation_db;
use birdobservation_db;

-- Plot_details table
CREATE TABLE Plot_details (
    Plot_Name VARCHAR(100) PRIMARY KEY,
    Admin_Unit_Code VARCHAR(100) NOT NULL,
    Location_Type VARCHAR(100) NOT NULL,
    Site_Name VARCHAR(255)
);

-- Species_details table
CREATE TABLE Species_details (
    Common_Name VARCHAR(255) PRIMARY KEY,
    Scientific_Name VARCHAR(255) NOT NULL,
    AcceptedTSN VARCHAR(100) NOT NULL,
    TaxonCode VARCHAR(100) NOT NULL,
    AOU_Code VARCHAR(100) NOT NULL,
    PIF_Watchlist_Status VARCHAR(100) NOT NULL,
    Regional_Stewardship_Status VARCHAR(100) NOT NULL
);

CREATE TABLE Distance_Lookup (
    Distance_Code INT PRIMARY KEY,
    Distance_Raw VARCHAR(50),
    Distance_Start FLOAT,
    Distance_End FLOAT,
    Distance_Category VARCHAR(50)
);
CREATE TABLE Sky_Lookup (
    Sky_Code INT PRIMARY KEY,
    Sky_Description VARCHAR(255)
);

CREATE TABLE Wind_Lookup (
    Wind_Code INT PRIMARY KEY,
    Wind_Description VARCHAR(255)
);

CREATE TABLE Disturbance_Lookup (
    Disturbance_Code INT PRIMARY KEY,
    Disturbance_Description VARCHAR(255)
);
CREATE TABLE forest_bird_observations (
    Observation_ID INT AUTO_INCREMENT PRIMARY KEY,
    Plot_Name VARCHAR(100),
    Date DATE,
    Start_Time TIME,
    End_Time TIME,
    Observer VARCHAR(255),
    Visit INT,
    Interval_Length_Start FLOAT,
    Interval_Length_End FLOAT,
    Interval_Length_Avg FLOAT,
    ID_Method VARCHAR(100),
    Distance_Code INT,
    Flyover_Observed BOOLEAN,
    Sex VARCHAR(10),
    Common_Name VARCHAR(255),
    Temperature FLOAT,
    Humidity FLOAT,
    Sky_Code INT,
    Wind_Code INT,
    Disturbance_Code INT,
    Initial_Three_Min_Cnt BOOLEAN,
    FOREIGN KEY (Plot_Name) REFERENCES Plot_details(Plot_Name),
    FOREIGN KEY (Common_Name) REFERENCES Species_details(Common_Name),
    FOREIGN KEY (Distance_Code) REFERENCES Distance_Lookup(Distance_Code),
    FOREIGN KEY (Sky_Code) REFERENCES Sky_Lookup(Sky_Code),
    FOREIGN KEY (Wind_Code) REFERENCES Wind_Lookup(Wind_Code),
     FOREIGN KEY (Disturbance_Code) REFERENCES Disturbance_Lookup(Disturbance_Code)
    

);

CREATE TABLE grassland_bird_observations (
    Observation_ID INT AUTO_INCREMENT PRIMARY KEY,
    Plot_Name VARCHAR(100),
    Date DATE,
    Start_Time TIME,
    End_Time TIME,
    Observer VARCHAR(255),
    Visit INT,
    Interval_Length_Start FLOAT,
    Interval_Length_End FLOAT,
    Interval_Length_Avg FLOAT,
    ID_Method VARCHAR(100),
    Distance_Code INT,
    Flyover_Observed BOOLEAN,
    Sex VARCHAR(10),
    Common_Name VARCHAR(255),
    Temperature FLOAT,
    Humidity FLOAT,
    Sky_Code INT,
    Wind_Code INT,
    Disturbance_Code INT,
    Initial_Three_Min_Cnt BOOLEAN,
    FOREIGN KEY (Plot_Name) REFERENCES Plot_details(Plot_Name),
    FOREIGN KEY (Common_Name) REFERENCES Species_details(Common_Name),
    FOREIGN KEY (Distance_Code) REFERENCES Distance_Lookup(Distance_Code),
    FOREIGN KEY (Sky_Code) REFERENCES Sky_Lookup(Sky_Code),
    FOREIGN KEY (Wind_Code) REFERENCES Wind_Lookup(Wind_Code),
     FOREIGN KEY (Disturbance_Code) REFERENCES Disturbance_Lookup(Disturbance_Code)
    

);
 select * from Plot_details;
select * from Species_details;
select * from Sky_Lookup;
select * from Wind_Lookup;
select * from Disturbance_Lookup;
select * from Distance_Lookup;

ALTER TABLE grassland_bird_observations MODIFY COLUMN Sex VARCHAR(20);
ALTER TABLE forest_bird_observations MODIFY COLUMN Sex VARCHAR(20);

select * from grassland_bird_observations;
select * from forest_bird_observations;




