DROP TABLE IF EXISTS hospital;

CREATE TABLE hospital (
    HospitalName VARCHAR(100),
    Location VARCHAR(100),
    Department VARCHAR(100),
    DoctorsCount INT,
    PatientsCount INT,
    AdmissionDate DATE,
    DischargeDate DATE,
    MedicalExpenses DECIMAL(10,2)
);

SELECT * FROM hospital;

INSERT INTO hospital VALUES 
('Wellness Clinic', 'Chennai', 'Orthopedics', 47, 182, '2023-12-13', '2023-12-14', 31364.88),
('Fortis Care', 'Pune', 'ENT', 15, 51, '2023-12-29', '2024-01-09', 47280.19),
('Wellness Clinic', 'Ahmedabad', 'Pediatrics', 20, 120, '2023-10-07', '2023-10-21', 28574.72),
('Heritage Hospital', 'Hyderabad', 'Urology', 8, 172, '2023-04-29', '2023-05-11', 7000.83),
('City Hospital', 'Kolkata', 'Gynecology', 35, 76, '2023-02-10', '2023-02-12', 47210.46),
('Heritage Hospital', 'Hyderabad', 'Oncology', 11, 76, '2023-02-05', '2023-02-17', 18612.34),
('Global Medicare', 'Ahmedabad', 'Oncology', 22, 99, '2023-08-01', '2023-08-06', 47808.55),
('Apollo Health', 'Jaipur', 'General Medicine', 37, 173, '2023-10-01', '2023-10-12', 12284.65),
('Heritage Hospital', 'Jaipur', 'ENT', 9, 198, '2023-06-12', '2023-06-18', 14650.23),
('Green Valley Hospital', 'Pune', 'Pediatrics', 30, 107, '2023-12-07', '2023-12-08', 30006.96),
('Healing Touch', 'Mumbai', 'Dermatology', 39, 70, '2023-09-13', '2023-09-15', 13282.51),
('Fortis Care', 'Jaipur', 'Urology', 22, 38, '2023-03-12', '2023-03-25', 13481.90),
('City Hospital', 'Lucknow', 'Cardiology', 32, 67, '2023-11-18', '2023-11-24', 36748.42),
('Fortis Care', 'Jaipur', 'Orthopedics', 27, 60, '2023-09-18', '2023-09-24', 37056.51),
('Sunrise Medical', 'Ahmedabad', 'Gynecology', 48, 37, '2023-08-06', '2023-08-11', 15107.89),
('Healing Touch', 'Chennai', 'Cardiology', 17, 60, '2023-06-27', '2023-06-30', 9348.55),
('Green Valley Hospital', 'Chennai', 'Pediatrics', 40, 96, '2023-03-22', '2023-03-28', 48548.44),
('Healing Touch', 'Ahmedabad', 'Neurology', 14, 68, '2023-11-11', '2023-11-22', 29942.75),
('Apollo Health', 'Delhi', 'Urology', 41, 111, '2023-11-05', '2023-11-08', 43367.53),
('Wellness Clinic', 'Chennai', 'Orthopedics', 47, 182, '2023-12-13', '2023-12-14', 31364.88),
('Fortis Care', 'Pune', 'ENT', 15, 51, '2023-12-29', '2024-01-09', 47280.19),
('Wellness Clinic', 'Ahmedabad', 'Pediatrics', 20, 120, '2023-10-07', '2023-10-21', 28574.72),
('Heritage Hospital', 'Hyderabad', 'Urology', 8, 172, '2023-04-29', '2023-05-11', 7000.83),
('City Hospital', 'Kolkata', 'Gynecology', 35, 76, '2023-02-10', '2023-02-12', 47210.46),
('Heritage Hospital', 'Hyderabad', 'Oncology', 11, 76, '2023-02-05', '2023-02-17', 18612.34),
('Global Medicare', 'Ahmedabad', 'Oncology', 22, 99, '2023-08-01', '2023-08-06', 47808.55),
('Apollo Health', 'Jaipur', 'General Medicine', 37, 173, '2023-10-01', '2023-10-12', 12284.65),
('Heritage Hospital', 'Jaipur', 'ENT', 9, 198, '2023-06-12', '2023-06-18', 14650.23),
('Green Valley Hospital', 'Pune', 'Pediatrics', 30, 107, '2023-12-07', '2023-12-08', 30006.96),
('Healing Touch', 'Mumbai', 'Dermatology', 39, 70, '2023-09-13', '2023-09-15', 13282.51),
('Fortis Care', 'Jaipur', 'Urology', 22, 38, '2023-03-12', '2023-03-25', 13481.90),
('City Hospital', 'Lucknow', 'Cardiology', 32, 67, '2023-11-18', '2023-11-24', 36748.42),
('Fortis Care', 'Jaipur', 'Orthopedics', 27, 60, '2023-09-18', '2023-09-24', 37056.51),
('Sunrise Medical', 'Ahmedabad', 'Gynecology', 48, 37, '2023-08-06', '2023-08-11', 15107.89),
('Healing Touch', 'Chennai', 'Cardiology', 17, 60, '2023-06-27', '2023-06-30', 9348.55),
('Green Valley Hospital', 'Chennai', 'Pediatrics', 40, 96, '2023-03-22', '2023-03-28', 48548.44),
('Healing Touch', 'Ahmedabad', 'Neurology', 14, 68, '2023-11-11', '2023-11-22', 29942.75),
('Apollo Health', 'Delhi', 'Urology', 41, 111, '2023-11-05', '2023-11-08', 43367.53),
('Wellness Clinic', 'Lucknow', 'Urology', 37, 85, '2023-06-09', '2023-06-16', 4872.04),
('Metro Hospital', 'Lucknow', 'Neurology', 22, 167, '2023-12-29', '2024-01-10', 44531.22),
('Apollo Health', 'Chennai', 'ENT', 8, 61, '2023-09-10', '2023-09-15', 42769.14),
('Fortis Care', 'Bangalore', 'Gynecology', 30, 69, '2023-11-13', '2023-11-26', 14701.02),
('City Hospital', 'Jaipur', 'Gynecology', 11, 22, '2023-05-15', '2023-05-18', 48466.08),
('Sunrise Medical', 'Bangalore', 'ENT', 37, 26, '2023-07-10', '2023-07-24', 25367.78),
('Green Valley Hospital', 'Ahmedabad', 'Dermatology', 15, 112, '2023-03-26', '2023-03-28', 32628.67),
('Heritage Hospital', 'Lucknow', 'Urology', 30, 161, '2023-11-10', '2023-11-25', 10166.89),
('Green Valley Hospital', 'Bangalore', 'Pediatrics', 8, 177, '2023-08-13', '2023-08-17', 15913.48),
('Healing Touch', 'Hyderabad', 'Pediatrics', 30, 158, '2023-11-13', '2023-11-22', 16757.51),
('Wellness Clinic', 'Ahmedabad', 'Neurology', 27, 65, '2023-03-29', '2023-04-08', 35720.61),
('Green Valley Hospital', 'Jaipur', 'General Medicine', 45, 88, '2023-06-21', '2023-07-05', 9438.26),
('Wellness Clinic', 'Lucknow', 'Cardiology', 32, 51, '2023-12-30', '2024-01-12', 27223.46),
('Metro Hospital', 'Kolkata', 'Gynecology', 10, 94, '2023-01-18', '2023-02-02', 35570.84),
('Healing Touch', 'Ahmedabad', 'Urology', 13, 75, '2023-02-07', '2023-02-13', 26027.37),
('Sunrise Medical', 'Mumbai', 'Urology', 23, 109, '2023-06-23', '2023-07-01', 36909.89),
('Fortis Care', 'Pune', 'Oncology', 41, 47, '2023-03-25', '2023-03-29', 8519.11),
('Metro Hospital', 'Chennai', 'Pediatrics', 9, 134, '2023-05-17', '2023-05-31', 48873.72),
('Metro Hospital', 'Hyderabad', 'General Medicine', 49, 42, '2023-12-28', '2024-01-07', 31342.58),
('Global Medicare', 'Ahmedabad', 'Orthopedics', 48, 138, '2023-01-18', '2023-01-26', 46741.91),
('Global Medicare', 'Bangalore', 'ENT', 42, 58, '2023-09-18', '2023-09-19', 26614.52),
('Healing Touch', 'Ahmedabad', 'Urology', 21, 50, '2023-06-22', '2023-06-27', 10978.18),
('Global Medicare', 'Delhi', 'ENT', 21, 66, '2023-12-29', '2024-01-13', 31175.27),
('Sunrise Medical', 'Pune', 'Orthopedics', 31, 122, '2023-11-10', '2023-11-13', 44290.86),
('Heritage Hospital', 'Bangalore', 'ENT', 26, 85, '2023-09-25', '2023-09-29', 7502.64),
('Metro Hospital', 'Lucknow', 'ENT', 31, 75, '2023-06-06', '2023-06-11', 7121.37),
('Heritage Hospital', 'Jaipur', 'Urology', 39, 70, '2023-07-28', '2023-08-04', 48241.00),
('City Hospital', 'Ahmedabad', 'Neurology', 14, 91, '2023-07-20', '2023-08-03', 33446.24),
('Fortis Care', 'Bangalore', 'ENT', 14, 62, '2023-12-17', '2023-12-30', 13590.65),
('City Hospital', 'Chennai', 'Gynecology', 28, 84, '2023-02-08', '2023-02-22', 20849.31),
('Green Valley Hospital', 'Hyderabad', 'Neurology', 35, 57, '2023-08-09', '2023-08-19', 4388.33),
('Healing Touch', 'Pune', 'Pediatrics', 5, 41, '2023-03-31', '2023-04-05', 23916.63),
('Heritage Hospital', 'Bangalore', 'Urology', 29, 54, '2023-10-22', '2023-11-05', 5084.11),
('Apollo Health', 'Ahmedabad', 'Neurology', 28, 102, '2023-12-13', '2023-12-20', 23328.90),
('City Hospital', 'Delhi', 'Pediatrics', 41, 27, '2023-02-20', '2023-03-06', 33417.28),
('Healing Touch', 'Jaipur', 'Cardiology', 6, 110, '2023-09-21', '2023-10-06', 36545.43),
('Sunrise Medical', 'Jaipur', 'Oncology', 19, 31, '2023-07-01', '2023-07-15', 43687.01),
('Sunrise Medical', 'Kolkata', 'Cardiology', 7, 50, '2023-08-02', '2023-08-07', 13902.24),
('Apollo Health', 'Mumbai', 'Neurology', 32, 56, '2023-01-11', '2023-01-26', 22456.61),
('Metro Hospital', 'Chennai', 'Urology', 28, 154, '2023-09-04', '2023-09-19', 23012.64),
('Global Medicare', 'Bangalore', 'ENT', 42, 58, '2023-09-18', '2023-09-19', 26614.52),
('Healing Touch', 'Ahmedabad', 'Urology', 21, 50, '2023-06-22', '2023-06-27', 10978.18),
('Global Medicare', 'Delhi', 'ENT', 21, 66, '2023-12-29', '2024-01-13', 31175.27),
('Sunrise Medical', 'Pune', 'Orthopedics', 31, 122, '2023-11-10', '2023-11-13', 44290.86),
('Heritage Hospital', 'Bangalore', 'ENT', 26, 85, '2023-09-25', '2023-09-29', 7502.64),
('Metro Hospital', 'Lucknow', 'ENT', 31, 75, '2023-06-06', '2023-06-11', 7121.37),
('Heritage Hospital', 'Jaipur', 'Urology', 39, 70, '2023-07-28', '2023-08-04', 48241.00),
('City Hospital', 'Ahmedabad', 'Neurology', 14, 91, '2023-07-20', '2023-08-03', 33446.24),
('Fortis Care', 'Bangalore', 'ENT', 14, 62, '2023-12-17', '2023-12-30', 13590.65),
('City Hospital', 'Chennai', 'Gynecology', 28, 84, '2023-02-08', '2023-02-22', 20849.31),
('Green Valley Hospital', 'Hyderabad', 'Neurology', 35, 57, '2023-08-09', '2023-08-19', 4388.33),
('Healing Touch', 'Pune', 'Pediatrics', 5, 41, '2023-03-31', '2023-04-05', 23916.63),
('Heritage Hospital', 'Bangalore', 'Urology', 29, 54, '2023-10-22', '2023-11-05', 5084.11),
('Apollo Health', 'Ahmedabad', 'Neurology', 28, 102, '2023-12-13', '2023-12-20', 23328.90),
('City Hospital', 'Delhi', 'Pediatrics', 41, 27, '2023-02-20', '2023-03-06', 33417.28),
('Healing Touch', 'Jaipur', 'Cardiology', 6, 110, '2023-09-21', '2023-10-06', 36545.43),
('Sunrise Medical', 'Jaipur', 'Oncology', 19, 31, '2023-07-01', '2023-07-15', 43687.01),
('Sunrise Medical', 'Kolkata', 'Cardiology', 7, 50, '2023-08-02', '2023-08-07', 13902.24),
('Apollo Health', 'Mumbai', 'Neurology', 32, 56, '2023-01-11', '2023-01-26', 22456.61),
('Metro Hospital', 'Chennai', 'Urology', 28, 154, '2023-09-04', '2023-09-19', 23012.64);

SELECT * FROM hospital;


--1. Total Number of Patients 
--o Write an SQL query to find the total number of patients across all hospitals. 
 
SELECT SUM(patientscount) AS total_patients
FROM hospital;

--2. Average Number of Doctors per Hospital 
--o Retrieve the average count of doctors available in each hospital.
SELECT hospitalname,AVG(doctorscount) AS average_dpctor
FROM hospital
GROUP BY hospitalname;

--3. Top 3 Departments with the Highest Number of Patients 
--o Find the top 3 hospital departments that have the highest number of patients.
SELECT department, patientscount 
FROM hospital
ORDER BY patientscount DESC
LIMIT 3;

--4. Hospital with the Maximum Medical Expenses 
--o Identify the hospital that recorded the highest medical expenses.
SELECT hospitalname, location, department, medicalexpenses
FROM hospital 
ORDER BY medicalexpenses DESC
LIMIT 1;

--5. Daily Average Medical Expenses 
--o Calculate the average medical expenses per day for each hospital.
SELECT 
  hospitalname, 
  AVG(medicalexpenses / NULLIF((dischargedate - admissiondate), 0)) AS daily_average_expenses
FROM 
  hospital
GROUP BY 
  hospitalname;

--6. Longest Hospital Stay 
--o Find the patient with the longest stay by calculating the difference between 
--Discharge Date and Admission Date.
SELECT hospitalname, location, department, admissiondate, dischargedate,
  (dischargedate - admissiondate) AS stay_length
FROM hospital
ORDER BY stay_length DESC
LIMIT 1;

--7. Total Patients Treated Per City 
--o Count the total number of patients treated in each city.
SELECT location, SUM(patientscount) AS total_patients
FROM hospital
GROUP BY location;

--8. Average Length of Stay Per Department 
--o Calculate the average number of days patients spend in each department. 
SELECT department, AVG(dischargedate - admissiondate) AS average_days
FROM hospital
GROUP BY department;

--9. Identify the Department with the Lowest Number of Patients 
--o Find the department with the least number of patients.
SELECT department, patientscount
FROM hospital
ORDER BY patientscount
LIMIT 1;

--10. Monthly Medical Expenses Report 
--• Group the data by month and calculate the total medical expenses for each month.

SELECT 
  TO_CHAR(admissiondate, 'YYYY-MM') AS month,
  SUM(medicalexpenses) AS total_medical_expenses
FROM hospital
GROUP BY TO_CHAR(admissiondate, 'YYYY-MM')
ORDER BY month;

























