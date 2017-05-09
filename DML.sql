
INSERT INTO Customers (custID, cName, cFirstName, cLastName, cPhone, cEmails) 
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

INSERT INTO MaintenanceItems(itemID, itemName, itemCost, laborHours, itemDesc, skillName)
			VALUES('O123CH', 'Oil Change', 74.99),
			('H123G', 'Head Gasket', 99.99),
			('H123V', 'Head Valves', 199.99),
			('L123CA', 'Lower Control Arms', 79.99),
			('B123E', 'Brakes', 89.99),
			('O123P', 'Oil Pan', 149.99),
			('');
			
			
INSERT INTO Corporations(custID)
			VALUES('1111C');

			
INSERT INTO PrivateIndividuals(custID, street, city, state)
			VALUES('1226C', '801 S. Ramona St', 'San Gabriel', 'CA');

INSERT INTO Addresses(custID, type, street, city, state)
			VALUES('1111C', 'Mailing', '1250 Bellflower Blvd', 'Long Beach', 'California');
			
INSERT INTO ExistingCustomers (custID, regDate)
			VALUES('1226C', '2010-01-01'),
			('1111C', '2011-02-02');

INSERT INTO SteadyCustomers(custID, layalty_points)
			VALUES('1111C', 123),;
			
INSERT INTO PremiereCustomers (custID, monthly_fee) 
			VALUES('1226C', 299.99);
			
INSERT INTO ProspectiveCustomers(custID, refID, status, referal_date)
			VALUES('1226P', '1226C', 'Contacted' , '2017-05-07');

INSERT INTO Emails(emailID, subject, message)
			VALUES('1226C1226P', 'Referral', 'You have been referred to by a customer.');
			

INSERT INTO EmailProspective(emailID, custID, refID, date_sent)
			VALUES('1226C1226P', '1226P', '1226C', '2017-05-08');
			
			
INSERT INTO Employees(employeeID, firstName, lastName, phone)
			VALUES('7126E', 'Billy', 'Marks', '714-123-7126'),
			 ('2202E', 'Rick', 'James', '714-123-2202');
			
INSERT INTO Mechanics(employeeID, title)
			VALUES('7126E', 'Main Mechanic'),
			('2202E', 'Rookie Mechanic');
			
INSERT INTO Certifications(employeeID, certification)
			VALUES('7126E', 'Ph.D Oil Changes');
			
INSERT INTO ServiceTechnicians(employeeID)
			VALUES('7126E');


INSERT INTO Skills(skillName)
			VALUES('Head Resurface'),
			('Tire Rotation'),
			('Valve Adjustment'),
			('LCA Repair'),
			('Oil Change'),
			('Motor Mounts'),
			('Valve Reseat'),
			('Alignment');
			
INSERT INTO Mentorings(mentor, mentoree, skillName, startDate, endDate)
			VALUES ('7126E', '2202E', 'Head Resurface', '2006-01-01', '2006-01-20');
			
INSERT INTO MechanicSkills(employeeID, skillName, proficiency)
			VALUES('7126E', 'Head Resurface', 'Advance'),
			('2202E', 'Head Resurface', 'Beginner');
