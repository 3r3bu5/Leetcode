# Write your MySQL query statement below
SELECT * from Patients where conditions REGEXP '(^DIAB1|(.*\\sDIAB1))'