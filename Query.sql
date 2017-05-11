-- 1 --
select custID, "Private" as Category, "Steady" as Type, cPhone, cEmail 
    from Customers natural join PrivateIndividuals natural join
        SteadyCustomers
union
select custID, "Private" as Category, "Premiere" as Type, cPhone, cEmail 
    from Customers natural join PrivateIndividuals natural join
        PremiereCustomers
union
select custID, "Private" as Category, "Steady" as Type, cPhone, cEmail 
    from Customers natural join Corporations natural join
        SteadyCustomers
union
select custID, "Private" as Category, "Premiere" as Type, cPhone, cEmail 
    from Customers natural join Corporations natural join
        PremiereCustomers;

-- 2 --
select cName, sum(billedAmount) from Customers natural join Vehicle 
natural join MaintenanceVisit group by cName;


--- 3 ---
select cName, sum(billedAmount) as Total from Customers natural join Vehicle 
    natural join MaintenanceVisit  where cName in (select cName from Customers
    natural join Vehicle natural join MaintenanceVisit 
    where year(visitDate) >= year(curDate())-2) group by cName
    order by Total desc limit 3;

---- 4 ----
select employeeID, count(skillName) from Mechanics natural join MechanicSkills
    group by employeeID having count(skillName) >= 3;

-- 5 -- 
select a.firstName as fName, b.firstName as secondName from (MechanicSkills f NATURAL JOIN Employees a)
    inner join (MechanicSkills s NATURAL JOIN Employees b) on f.skillName = s.skillName
    where f.employeeID < s.employeeID group by f.employeeID, s.employeeID having count(s.employeeID) >= 3;

-- 6 --
select packageID, packageName, "TOTAL---->" as Item, sum(itemCost) as Total from MaintenancePackage 
    natural join MaintenanceItem group by packageID, packageName
union
select packageID, packageName, itemName as Item, itemCost as Total from MaintenancePackage 
    natural join MaintenanceItem
    order by packageID, Total desc;


-- 8 -- 
select * from Customers natural join SteadyCustomers 
    order by loyalty_points desc;

-- 9 --
Select cName, (monthly_fee * 12) as Annual_Total, 0 as Total_Used,
    (monthly_fee * 12) - 0 as "Difference" from Customers natural join PremiereCustomers
where cName not in
(Select cName from Customers natural join PremiereCustomers
    natural join Vehicle natural join MaintenanceVisit 
    where year(visitDate) >= year(curdate())-1 group by cName)
union
Select cName, (monthly_fee * 12) as Annual_Total, sum(billedAmount) as Total_Used,
    (monthly_fee * 12) - sum(billedAmount) as "Difference" from Customers natural join PremiereCustomers
    natural join Vehicle natural join MaintenanceVisit 
    where year(visitDate) >= year(curdate())-1 group by cName order by Difference desc;

-- 10 --
select cName, Payed as "Net Profit", (Payed - Item_Price) as "Profit" from Steady_Customer_ItemCost
    natural join Steady_Customer_Bill order by Payed desc;


-- 13 --
select mentor, skillName from Mentorings where mentor in
(select mentor from Mentorings
    group by mentor having count(mentoree) = (
select max(Mentee) as Mentee from Mentor_mentee_count));

-- 14 --
select skillName, count(skillName) from MechanicSkills
    group by skillName order by count(skillName) limit 3;


--- 15 ---
select employeeID from ServiceTechnicians
where employeeID in
(select employeeID from Mechanics);


--- 16a --- Show that all servicetechnicians are mechanics
SELECT employeeID, firstName, lastName, "Both" as Category FROM 
    (Employees NATURAL JOIN ServiceTechnicians NATURAL JOIN Mechanics)
UNION 
SELECT employeeID, firstName, lastName, "Mechanic" as Category FROM
    Employees NATURAL JOIN Mechanics WHERE employeeID 
    NOT IN (SELECT employeeID FROM Employees 
    NATURAL JOIN ServiceTechnicians)
UNION 
SELECT employeeID, firstName, lastName, "Service Technician" as Category FROM
    Employees NATURAL JOIN ServiceTechnicians WHERE employeeID
    NOT IN (SELECT employeeID FROM Employees NATURAL JOIN Mechanics);

--- 16b --- Shows that a customer can not have more than 3 vehicles
SELECT cName, COUNT(cName) FROM Customers NATURAL JOIN Vehicle
GROUP BY cName HAVING COUNT(cName) > 3;

--- 16c --- Shows that we cant work on more than 10 cars a day
SELECT * FROM MaintenanceVisit GROUP BY visitDate 
HAVING COUNT(visitDate) > 10;