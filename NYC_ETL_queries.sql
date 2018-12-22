create database NYCSchool_db;


use NYCSchool_db;

CREATE TABLE SAT_2012 (

DBN varchar(7) PRIMARY KEY,
School_Name TEXT,
Num_of_SAT_Test_Takers INT,
SAT_Critical_Reading_Avg_Score INT,
SAT_Math_Avg_Score INT,
SAT_Writing_Avg_Score INT 
);

CREATE TABLE AP_2012 (

DBN varchar(7) PRIMARY KEY,
Num_AP_Test_Takers INT,
AP_Total_Exams_Taken INT,
Num_AP_Exams_Passed INT
);



CREATE TABLE Demographic_data (

id INT PRIMARY KEY,
DBN varchar(7),
School_Name TEXT,
schoolyear int,
total_enrollment INT,
grade9 INT,
grade10 INT,
grade11 INT,
grade12 INT,
black_num int, 
black_per int,
hispanic_num int,
hispanic_per int,
white_num int,
white_per int,
male_num int,
male_per int,
female_num int,
female_per int
);



CREATE VIEW `SAT Test` AS
SELECT `sat_2012`.`DBN`, `sat_2012`.`SCHOOL NAME`, demographic_data.grade12 as `Num of Senior Students` , `sat_2012`.`Num of SAT Test Takers`, `sat_2012`.`SAT Critical Reading Avg. Score`, `sat_2012`.`SAT Math Avg. Score`,
 `sat_2012`.`SAT Writing Avg. Score`
FROM sat_2012
JOIN demographic_data
ON sat_2012.DBN = demographic_data.DBN;


CREATE VIEW `SAT Test Demographic` AS
SELECT `sat_2012`.`DBN`, `sat_2012`.`SCHOOL NAME`, demographic_data.grade12 as `Num of Senior Students` , `sat_2012`.`Num of SAT Test Takers`, `sat_2012`.`SAT Critical Reading Avg. Score`, `sat_2012`.`SAT Math Avg. Score`,
 `sat_2012`.`SAT Writing Avg. Score`,
`demographic_data`.`male_num`,`demographic_data`.`male_per`, `demographic_data`.`female_num`,`demographic_data`.`female_per`,`demographic_data`.`white_num`,
`demographic_data`.`white_per`,`demographic_data`.`black_num`,`demographic_data`.`black_per`, `demographic_data`.`hispanic_num`, `demographic_data`.`hispanic_per`
FROM sat_2012
JOIN demographic_data
ON sat_2012.DBN = demographic_data.DBN;


CREATE VIEW `AP Test` AS
SELECT `ap_2012`.`DBN`, `demographic_data`.`Name`,`demographic_data`.`total_enrollment`, `demographic_data`.`grade9` as `Num of Freshman`, `demographic_data`.`grade10` as `Num of Sophomores`, `demographic_data`.`grade11` as `Num of Juniors`,
demographic_data.grade12 as `Num of Senior Students` , `ap_2012`.`Num of AP Test Takers`, `ap_2012`.`Num of AP Total Exams Taken`,`ap_2012`.`Num of AP Exams Passed`
FROM ap_2012
JOIN demographic_data
ON ap_2012.DBN = demographic_data.DBN;


CREATE VIEW `AP Test Demographic` AS
SELECT `ap_2012`.`DBN`, `demographic_data`.`Name`,`demographic_data`.`total_enrollment`, `demographic_data`.`grade9` as `Num of Freshman`, `demographic_data`.`grade10` as `Num of Sophomores`, `demographic_data`.`grade11` as `Num of Juniors`,
demographic_data.grade12 as `Num of Senior Students` , `ap_2012`.`Num of AP Test Takers`, `ap_2012`.`Num of AP Total Exams Taken`,`ap_2012`.`Num of AP Exams Passed`,
`demographic_data`.`male_num`,`demographic_data`.`male_per`, `demographic_data`.`female_num`,`demographic_data`.`female_per`,`demographic_data`.`white_num`,
`demographic_data`.`white_per`,`demographic_data`.`black_num`,`demographic_data`.`black_per`, `demographic_data`.`hispanic_num`, `demographic_data`.`hispanic_per`
FROM ap_2012
JOIN demographic_data
ON ap_2012.DBN = demographic_data.DBN;

CREATE VIEW `All Tests` AS
SELECT `ap_2012`.`DBN`, `demographic_data`.`Name`,`demographic_data`.`total_enrollment`, `demographic_data`.`grade9` as `Num of Freshman`, `demographic_data`.`grade10` as `Num of Sophomores`, `demographic_data`.`grade11` as `Num of Juniors`,
demographic_data.grade12 as `Num of Senior Students` , `ap_2012`.`Num of AP Test Takers`, `ap_2012`.`Num of AP Total Exams Taken`,`ap_2012`.`Num of AP Exams Passed`,
`sat_2012`.`Num of SAT Test Takers`, `sat_2012`.`SAT Critical Reading Avg. Score`, `sat_2012`.`SAT Math Avg. Score`, `sat_2012`.`SAT Writing Avg. Score`
FROM ap_2012
JOIN demographic_data
ON ap_2012.DBN = demographic_data.DBN
JOIN sat_2012
ON sat_2012.DBN = demographic_data.DBN;


CREATE VIEW `All Tests Demographic` AS
SELECT `ap_2012`.`DBN`, `demographic_data`.`Name`,`demographic_data`.`total_enrollment`, `demographic_data`.`grade9` as `Num of Freshman`, `demographic_data`.`grade10` as `Num of Sophomores`, `demographic_data`.`grade11` as `Num of Juniors`,
demographic_data.grade12 as `Num of Senior Students` , `ap_2012`.`Num of AP Test Takers`, `ap_2012`.`Num of AP Total Exams Taken`,`ap_2012`.`Num of AP Exams Passed`,
`sat_2012`.`Num of SAT Test Takers`, `sat_2012`.`SAT Critical Reading Avg. Score`, `sat_2012`.`SAT Math Avg. Score`, `sat_2012`.`SAT Writing Avg. Score`,
`demographic_data`.`male_num`,`demographic_data`.`male_per`, `demographic_data`.`female_num`,`demographic_data`.`female_per`,`demographic_data`.`white_num`,
`demographic_data`.`white_per`,`demographic_data`.`black_num`,`demographic_data`.`black_per`, `demographic_data`.`hispanic_num`, `demographic_data`.`hispanic_per`
FROM ap_2012
JOIN demographic_data
ON ap_2012.DBN = demographic_data.DBN
JOIN sat_2012
ON sat_2012.DBN = demographic_data.DBN;




select * from `All Tests Demographic`;













