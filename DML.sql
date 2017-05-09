


INSERT INTO Customers (custID, cName, cFirstName, cLastName, cPhone, cEmail) 
			VALUES('1226C', 'Darren', 'Darren', 'Ly', '656-666-6626', 'darren@gmail.com'),
            ('1226P', 'Kitty', 'Kitty', 'Kat', '323-333-3323', 'KittyKat@gmail.com'),
			('1111C', 'Top Ricer', 'Raul', 'Herrera', '659-288-2882', 'ricerJDM@gmail.com'),
			('2222C', 'Jose', 'Jose', 'Hernandez-Uribe', '919-222-2202', 'jose@gmail.com'),
			('1234C', 'Justin', 'Justin', 'Lee', '323-123-4567', 'justin@gmail.com');
			
INSERT INTO Vehicle (custID, VIN, make, model, vyear, currentMileage, estimatedMilePerYear) 
			VALUES('1226C', '19UUA662X5A013447','Acura', 'TL', 2006, 122222, 9999),
			('1226C', 'WBA7E2C55GG738488', 'BMW', 'M7', 2012, 12345, 1000),
			('1226C', 'WBS8M9C52H5G84482', 'BMW', 'M3', 2010, 43213, 4000),
			('1111C', '1HGED3641ML035397', 'Honda', 'Civic', 1990, 300000, 12345),
			('2222C', 'JT2DD82A7V0036715', 'Toyota', 'Supra', 1998, 123456, 21341),
			('2222C', 'JF1GD79636G510626', 'Subaru', 'WRX STI', 2005, 67890, 3241),
			('1234C', 'JTHBD182110004289', 'Lexus', 'IS300', 1997, 153241, 4444);

INSERT INTO MaintenanceItem(itemID, itemName, itemCost, laborHours, itemDesc, skillName)
			VALUES('O123CH', 'Oil', 39.99, 1, 'Mobil1 Oil', 'Oil Change'),
			('H123G', 'Head Gasket', 99.99, 4, 'TRicer HGasket', 'Head Surface'),
			('H123V', 'Head Valves', 199.99, 2, 'GReddy Valves', 'Valve Adjustment'),
			('L123CA', 'Lower Control Arms', 79.99, 2, 'CUSCO', 'LCA Repair'),
			('B123E', 'Brakes', 89.99, 1, 'Duracell Gold', 'Brakes'),
			('O123P', 'Oil Pan', 149.99, 1, 'OEM Oil Pan', 'Oil Pan'),
			('S123R', 'Starter', 79.99, 1, 'OEM Starter', 'Belt Devices'),
			('R123R', 'Radiator', 129.99, 1, 'OEM Radiator', 'Radiator'),
			('A123B', 'Alternator Belt', 19.99, 1, 'Duracell Belt', 'Belt Devices'),
			('C123H', 'Clutch', 199.99, 12, 'GReddy Clutch', 'Transmission');
			
INSERT INTO Corporations(custID)
			VALUES('1111C');

			
INSERT INTO PrivateIndividuals(custID, street, city, state)
			VALUES('1226C', '801 S. Ramona St', 'San Gabriel', 'California'),
			('2222C', '1401 Palo Verde', 'Long Beach', 'California'),
			('1234C', '1234 Fake Street', 'Paramounte', 'Long Beach');

INSERT INTO Addresses(custID, type, street, city, state)
			VALUES('1111C', 'Mailing', '1250 Bellflower Blvd', 'Long Beach', 'California'),
			('1111C', 'Billing', '1226 Hiker Dr', 'Long Beach', 'California');
			
INSERT INTO ExistingCustomers (custID, regDate)
			VALUES('1226C', '2010-01-01'),
			('1111C', '2002-02-02'),
			('2222C', '1993-03-03'),
			('1234C', '1994-04-04');

INSERT INTO SteadyCustomers(custID, loyalty_points)
			VALUES('1111C', 3),
			('2222C', 5),
			('1234C', 1);
			
INSERT INTO PremiereCustomers (custID, monthly_fee) 
			VALUES('1226C', 299.99),
			('2222C', 399.99),
			('1234C', 299.99);
			
INSERT INTO ProspectiveCustomers(custID, refID, status, referal_date)
			VALUES('1226P', '1226C', 'Contacted' , '2017-05-07');

INSERT INTO Emails(emailID, subject, message)
			VALUES('1226C1226P', 'Referral', 'You have been referred to by a customer.');
			

INSERT INTO EmailProspective(emailID, custID, refID, date_sent)
			VALUES('1226C1226P', '1226P', '1226C', '2017-05-08');
			
INSERT INTO Employees(employeeID, firstName, lastName, phone)
			VALUES('7126E', 'Billy', 'Marks', '714-123-7126'),
			 ('2202E', 'Rick', 'James', '714-123-2202'),
			 ('1226E', 'John', 'Schmidt', '566-666-6655'),
			 ('9876E', 'Mac', 'Daddy', '111-403-0201'),
			 ('8764E', 'Matthew', 'Macacauntaghtly', '621-344-5883'),
			 ('6543E', 'Ed', 'Oneil', '323-331-5661'),
			 ('3547E', 'Christina', 'Applegate', '916-310-7769');
			
INSERT INTO Mechanics(employeeID, title)
			VALUES('7126E', 'Main Mechanic'),
			('8764E', 'Main Mechanic'),
			('6543E', 'Main Mechanic'),
			('2202E', 'Rookie Mechanic'),
			('3547E', 'Rookie Mechanic'),
			('1226E', 'Backup Mechanic'),
			('9876E', 'Intern Mechanic');
			
INSERT INTO Certifications(employeeID, certification)
			VALUES('7126E', 'Ph.D Oilogy'),
			('2202E', 'B.Sc Lightology'),
			('1226E', 'M.Sc Engineology'),
			('9876E', 'B.Sc Brakeology'),
			('8764E', 'Ph.D Brakeology'),
			('6543E', 'Ph.D Carboratology'),
			('3547E', 'B.Sc Paintology');
			
INSERT INTO ServiceTechnicians(employeeID)
			VALUES('7126E'),
			('8764E'),
			('6543E');


INSERT INTO Skills(skillName)
			VALUES('Head Resurface'),
			('Tire Rotation'),
			('Valve Adjustment'),
			('LCA Repair'),
			('Oil Change'),
			('Motor Mounts'),
			('Valve Reseat'),
			('Alignment'),
			('Brakes'),
			('Oil Pan'),
			('Belt Devices'),
			('Radiator'),
			('Transmission');
			
INSERT INTO Mentorings(mentor, mentoree, skillName, startDate, endDate)
			VALUES ('7126E', '2202E', 'Head Resurface', '2006-01-01', '2006-01-20'),
			('7126E', '2202E', 'Head Resurface', '2007-01-01', '2007-01-20'),
			('7126E', '2202E', 'Head Resurface', '2008-01-01', '2008-01-20'),
			
			('8764E', '9876E', 'Motor Mounts', '2006-01-01', '2006-01-20'),
			('7126E', '9876E', 'Valve Adjustment', '2007-01-01', '2007-01-20'),
			('7126E', '9876E', 'Transmission', '2008-01-01', '2008-01-20'),
			
			('8764E', '6543E', 'Brakes', '2006-01-01', '2006-01-20'),
			('6543E', '9876E', 'Oil Pan', '2007-01-01', '2007-01-20'),
			('7126E', '6543E', 'Transmission', '2008-01-01', '2008-01-20');

INSERT INTO MechanicSkills(employeeID, skillName, proficiency)
			VALUES('7126E', 'Head Resurface', 'Advance'),
			('7126E', 'Valve Adjustment', 'Advance'),
			('7126E', 'Transmission', 'Advance'),
			('7126E', 'Motor Mounts', 'Advance'),
			('7126E', 'Valve Reseat', 'Intermediate'),
			
			('8764E', 'Head Resurface', 'Intermediate'),
			('8764E', 'Valve Adjustment', 'Intermediate'),
			('8764E', 'Transmission', 'Intermediate'),
			('8764E', 'Motor Mounts', 'Intermediate'),
			('8764E', 'Brakes', 'Intermediate'),
			
			('6543E', 'Head Resurface', 'Beginner'),
			('6543E', 'Valve Adjustment', 'Beginner'),
			('6543E', 'Transmission', 'Beginner'),
			('6543E', 'Motor Mounts', 'Beginner'),
			('6543E', 'Oil Pan', 'Intermediate'),
			
			('2202E', 'Brakes', 'Advance'),
			('2202E', 'Alignment', 'Intermediate'),
			('2202E', 'Oil Change', 'Advance'),
			('2202E', 'Belt Devices', 'Beginner'),
			('2202E', 'LCA Repair', 'Intermediate'),
			
			('3547E', 'Brakes', 'Beginner'),
			('3547E', 'Alignment', 'Intermediate'),
			('3547E', 'Oil Change', 'Advance'),
			('3547E', 'Belt Devices', 'Advance'),
			('3547E', 'LCA Repair', 'Intermediate'),
			
			('1226E', 'Tire Rotation', 'Advance'),
			('1226E', 'Alignment', 'Advance'),
			
			('9876E', 'Brakes', 'Beginner');