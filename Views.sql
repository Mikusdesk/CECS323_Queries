
CREATE OR REPLACE VIEW Customer_v AS
SELECT cFirstName AS "First Name", cLastName AS "Last Name",
    'Steady' AS "Customer Type",
    (YEAR(CURDATE())-YEAR(regDate)) AS "Years of Patronage"
FROM Customers NATURAL JOIN ExistingCustomers NATURAL JOIN SteadyCustomers
UNION
SELECT cFirstName AS "First Name", cLastName AS "Last Name",
    'Premiere' AS "Customer Type",
    (YEAR(CURDATE())-YEAR(regDate)) AS "Years of Patronage"
FROM Customers NATURAL JOIN ExistingCustomers NATURAL JOIN PremiereCustomers;

CREATE OR REPLACE VIEW Customer_addresses_v AS
SELECT cFirstName AS "First Name", cLastName AS "Last Name",
    'Private' AS "Account Type", 'Mailing' AS "Address Type",
    street AS "Street", city as "City", state as "State"
FROM Customers NATURAL JOIN PrivateIndividuals
UNION
SELECT cFirstName AS "First Name", cLastName AS "Last Name",
    'Corporate' AS "Account Type", type AS "Address Type",
    street AS "Street", city as "City", state as "State"
FROM Customers NATURAL JOIN Corporations NATURAL JOIN Addresses;

CREATE OR REPLACE VIEW Mechanic_mentor_v AS
SELECT r.firstName AS "Mentor First Name", r.lastName AS "Mentor Last Name",
   e.firstName AS "Mentee First Name", e.lastName AS "Mentee Last Name",
    startDate AS "Mentorship Start Date", endDate AS "Mentorship End Date",
    skillName AS "Metorship Skill"
FROM (Mentorings a LEFT OUTER JOIN Employees r ON a.mentor = r.employeeID
    NATURAL JOIN Mentorings b
    LEFT OUTER JOIN Employees e ON b.mentoree = e.employeeID)
ORDER BY r.lastName, e.lastName;

CREATE OR REPLACE VIEW Premier_profits_v AS
SELECT custID AS "Customer ID",
    cFirstName AS "First Name", cLastName AS "Last Name",
    (monthly_fee*12) AS "Annual Premier Fees",
    SUM(itemCost) AS "Expense if Non Premier", YEAR(visitDate)
FROM Customers NATURAL JOIN PremiereCustomers
    NATURAL JOIN Vehicle NATURAL JOIN MaintenanceVisit
    NATURAL JOIN MaintenancePackage NATURAL JOIN VisitItem
    NATURAL JOIN MaintenanceItem
GROUP BY custID, YEAR(visitDate);

CREATE OR REPLACE VIEW Prospective_resurrection_v AS
SELECT cFirstName AS "First Name", cLastName AS "Last Name",
    cEmail AS "Email", MAX(date_sent) AS "Last Contacted"
FROM ProspectiveCustomers INNER JOIN Customers NATURAL JOIN Emails NATURAL JOIN EmailProspective
ON  ProspectiveCustomers.custID = Customers.custID
GROUP BY cEmail
HAVING COUNT(emailID) >= 3
    AND MAX(date_sent) < DATE_SUB(CURDATE(), INTERVAL 1 YEAR);
	
--Bottom views are extra views
CREATE OR REPLACE VIEW Mentor_mentee_count as
select mentor, count(mentoree) as Mentee from Mentorings group by mentor;

create or replace view Steady_Customer_Bill as
select custID, cName, sum(billedAmount) as Payed from Customers natural join SteadyCustomers 
    natural join Vehicle natural join MaintenanceVisit where visitDate >= year(curdate())-1 group by custID, cName;

create or replace view Steady_Customer_ItemCost as
select cName, sum(itemCost) as Item_Price from Customers natural join
 SteadyCustomers natural join Vehicle natural join MaintenanceVisit
 natural join MaintenancePackage natural join MaintenanceItem 
    where visitDate >= year(curdate())-1 group by custID;