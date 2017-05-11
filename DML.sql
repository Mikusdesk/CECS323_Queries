
INSERT INTO Customers (custID, cName, cFirstName, cLastName, cPhone, cEmail) 
            VALUES('1226C', 'Darren', 'Darren', 'Ly', '656-666-6626', 'darren@gmail.com'),
            ('1226P', 'Kitty', 'Kitty', 'Kat', '323-333-3323', 'KittyKat@gmail.com'),
            ('1111C', 'Top Ricer', 'Raul', 'Herrera', '659-288-2882', 'ricerJDM@gmail.com'),
            ('2222C', 'Jose', 'Jose', 'Hernandez-Uribe', '919-222-2202', 'jose@gmail.com'),
            ('1234C', 'Justin', 'Justin', 'Lee', '323-123-4567', 'justin@gmail.com'),
            ('1201C', 'Mike', 'Mike', 'Cole', '323-123-4567', 'mccole@gmail.com'),
            ('2004C', 'Larry', 'Larry', 'Smith', '323-123-4567', 'lsmith@gmail.com'),
            ('1999C', 'Pablo', 'Pablo', 'Escobar', '323-123-4567', 'pe1971@gmail.com'),
            ('1111P', 'Tanoshi', 'Tanoshi', 'Saki', '675-879-4879', 'mahjong@gmail.com'),
            ('2222P', 'Kurisu', 'Kurisu', 'Makise', '626-666-8755', 'biology@gmail.com'),
            ('3333P', 'Monkey', 'Luffy', 'Monkey D.', '626-879-1011', 'pirate@gmail.com'),
            ('4444P', 'Pokemon', 'Pikachu', 'Lightning', '323-211-0010', 'pocketmon@gmail.com');
			



INSERT INTO Vehicle (custID, VIN, make, model, vyear, currentMileage, estimatedMilePerYear) 
		VALUES('1226C', '19UUA662X5A013447','Acura', 'TL', 2006, 87654, 9999),
			('1226C', 'WBA7E2C55GG738488', 'BMW', 'M7', 2012, 12345, 1000),
			('1226C', 'WBS8M9C52H5G84482', 'BMW', 'M3', 2010, 43213, 4000),
			('1111C', '1HGED3641ML035397', 'Honda', 'Civic', 1990, 300000, 12345),
			('2222C', 'JT2DD82A7V0036715', 'Toyota', 'Supra', 1998, 75462, 21341),
			('2222C', 'JF1GD79636G510626', 'Subaru', 'WRX STI', 2005, 67890, 3241),
			('1234C', 'JTHBD182110004289', 'Lexus', 'IS300', 1997, 77777, 4444),
                        ('1201C', 'LM2SS82A7V0030005', 'Chevrolet', 'Camaro', 2015, 23401, 10001),
			('2004C', 'FF2MM79636G512222', 'Ford', 'Focus', 2002, 88090, 12041),
			('1999C', 'FM3BD182110005883', 'Ford', 'Mustang', 2012, 53241, 10044);

insert into MaintenancePackage(packageId, packageName, packMileage, VIN)
    values ('t1560','Tune Up',15000,'19UUA662X5A013447'),
            ('t1561','Tune Up',30000,'WBA7E2C55GG738488'),
            ('t1562','Tune Up',20000,'WBS8M9C52H5G84482'),
            ('t1563','Tune Up',25000,'1HGED3641ML035397'),
            ('t1564','Tune Up',18000,'JT2DD82A7V0036715'),
            ('t1565','Tune Up',17000,'JF1GD79636G510626'),
            ('t1566','Tune Up',27000,'JTHBD182110004289'),
            ('t1567','Tune Up',20000,'LM2SS82A7V0030005'),
            ('t1568','Tune Up',25000,'FF2MM79636G512222'),
            ('t1569','Tune Up',30000,'FM3BD182110005883'),

            ('RAUL1', 'Engine Rebuild', 333333, '1HGED3641ML035397'),
            ('f1560','Fluids',30000,'19UUA662X5A013447'),
            ('f1561','Fluids',30000,'WBA7E2C55GG738488'),
            ('f1562','Fluids',30000,'WBS8M9C52H5G84482');

INSERT INTO MaintenanceVisit(VIN, visitID, visitDate, expectedMileage, actualMileage, billedAmount, packageID, employeeID)
            VALUES('19UUA662X5A013447', '1226V', '2014-01-01', 88888, 87654, 99.99, 't1560', '7126E'),
            ('WBA7E2C55GG738488', '1226V2', '2014-01-15', 14000, 13333, 399.99, 't1561', '8764E'),
            ('WBS8M9C52H5G84482', '1226V3', '2014-02-01', 46500, 46000, 599.99, 't1562', '6543E'),
            ('1HGED3641ML035397', '1111V', '2014-02-02', 333333, 345012, 149.99, 't1563', '8764E'),
            ('JT2DD82A7V0036715', '2222V', '2013-03-03', 77777, 75466, 199.99, 't1564', '6543E'),
            ('JF1GD79636G510626', '2222V2', '2013-04-03', 67899, 68000, 399.99, 't1565', '7126E'),
            ('JTHBD182110004289', '1234V', '2014-04-04', 78945, 79991, 179.99, 't1566', '8764E'),
            ('LM2SS82A7V0030005', '1201V', '2015-05-05', 24444, 25555, 229.99, 't1567', '6543E'),
            ('FF2MM79636G512222', '2004V', '2010-06-06', 88888, 90000, 79.99, 't1568', '7126E'),
            ('FM3BD182110005883', '1999V', '2016-07-07', 53333, 55014, 459.99, 't1569', '8764E'),
            ('1HGED3641ML035397', '1111C', '2017-04-11', 333333, 343211, 2199.99, 'RAUL1', '8764E'),
            ('19UUA662X5A013447', '1226V4', '2017-05-08', 123456, 120120, 349.99, 'f1560', '3547E'),
            ('WBA7E2C55GG738488', '1226V5', '2017-04-20', 15555, 15687, 599.99, 'f1561', '2202E'),
            ('WBS8M9C52H5G84482', '1226V6', '2017-04-30', 76543, 75468, 459.99, 'f1562', '1226E');


INSERT INTO MaintenanceItem(itemID, itemName, itemCost, laborHours, itemDesc, skillName, packageID)
                VALUES('O123CH', 'Oil', 39.99, 1, 'Mobil1 Oil', 'Oil Change', 't1560'),
                ('H123G', 'Head Gasket', 99.99, 4, 'TRicer HGasket', 'Head Resurface', 't1561'),
                ('H123V', 'Head Valves', 199.99, 2, 'GReddy Valves', 'Valve Adjustment', 't1562'),
                ('L123CA', 'Lower Control Arms', 79.99, 2, 'CUSCO', 'LCA Repair', 't1563'),
                ('B123E', 'Brakes', 89.99, 1, 'Duracell Gold', 'Brakes', 't1564'),
                ('O123P', 'Oil Pan', 149.99, 1, 'OEM Oil Pan', 'Oil Pan', 't1565'),
                ('S123R', 'Starter', 79.99, 1, 'OEM Starter', 'Belt Devices', 't1566'),
                ('R123R', 'Radiator', 129.99, 1, 'OEM Radiator', 'Radiator', 't1567'),
                ('A123B', 'Alternator Belt', 19.99, 1, 'Duracell Belt', 'Belt Devices', 't1568'),
                ('C123H', 'Clutch', 199.99, 12, 'GReddy Clutch', 'Transmission', 't1569'),

                ('TLOIL1', 'Motor Oil', 39.99, 1, 'Mobil1 Oil', 'Oil Change', 'f1560'),
                ('TLTOIL1', 'Trans. Oil', 39.99, 1, 'Penzoil Oil', 'Oil Change', 'f1560'),
                ('TLRAD', 'Radiator Fluid', 39.99, 1, 'Peak Fluid', 'Radiator', 'f1560'),
                ('M7OIL1', 'Motor Oil', 39.99, 1, 'Mobil1 Oil', 'Oil Change', 'f1561'),
                ('M7TOIL1', 'Trans. Oil', 39.99, 1, 'Penzoil Oil', 'Oil Change', 'f1561'),
                ('M7RAD', 'Radiator Fluid', 39.99, 1, 'Peak Fluid', 'Radiator', 'f1561'),
                ('M3OIL1', 'Motor Oil', 39.99, 1, 'Mobil1 Oil', 'Oil Change', 'f1562'),
                ('M3TOIL1', 'Trans. Oil', 39.99, 1, 'Penzoil Oil', 'Oil Change', 'f1562'),
                ('M3RAD', 'Radiator Fluid', 39.99, 1, 'Peak Fluid', 'Radiator', 'f1562'),

                ('RAULHC0', 'Head Gasket', 199.99, 4, 'GReddy Gasket', 'Head Resurface', 'RAUL1'),
                ('RAULHC1', 'Valves', 229.99, 3, 'OEM Valves', 'Valve Adjustment', 'RAUL1'),
                ('RAULHC2', 'Valve Spring', 99.99, 4, 'OEM Springs', 'Valve Adjustment', 'RAUL1'),
                ('RAULHC3', 'Piston Bearing', 149.99, 8, 'Wiseco', 'Cylinder Work', 'RAUL1'),
                ('RAULHC4', 'Piston', 379.99, 9, 'Wiseco', 'Cylinder Work', 'RAUL1'),
                ('RAULHC5', 'Piston Rod', 449.99, 6, 'Wiseco', 'Cylinder Work', 'RAUL1'),
                ('RAULHC6', 'Seals', 39.99, 1, 'Sealed Power', 'Seals Adjustment', 'RAUL1');

INSERT INTO Corporations(custID)
			VALUES('1111C');

			
INSERT INTO PrivateIndividuals(custID, street, city, state)
			VALUES('1226C', '801 S. Ramona St', 'San Gabriel', 'California'),
			('2222C', '1401 Palo Verde', 'Long Beach', 'California'),
			('1234C', '1234 Fake Street', 'Paramounte', 'California'),
                        ('1201C', '1559 Simon St', 'San Pedro', 'California'),
			('2004C', '455 Long Beach Blvd', 'Long Beach', 'California'),
			('1999C', '919 Martin Luther King St', 'Lynwood', 'California');

INSERT INTO Addresses(custID, type, street, city, state)
	VALUES('1111C', 'Mailing', '1250 Bellflower Blvd', 'Long Beach', 'California'),
	('1111C', 'Billing', '1226 Hiker Dr', 'Long Beach', 'California');
			
INSERT INTO ExistingCustomers (custID, regDate)
	VALUES('1226C', '2014-01-01'),
	('1111C', '2014-02-02'),
	('2222C', '2013-03-03'),
	('1234C', '2014-04-04'),
        ('1201C', '2015-05-05'),
        ('2004C', '2017-06-06'),
        ('1999C', '2016-07-07');

INSERT INTO SteadyCustomers(custID, loyalty_points)
			VALUES('1111C', 3),
			('1201C', 5),
			('2004C', 1);
			
INSERT INTO PremiereCustomers (custID, monthly_fee) 
			VALUES('1226C', 299.99),
			('2222C', 399.99),
			('1234C', 299.99),
                        ('1999C',199.99);
			
INSERT INTO ProspectiveCustomers(custID, refID, status, referal_date)
	VALUES('1226P', '1226C', 'Alive' , '2017-05-07'),
        ('1111P', '1111C', 'Alive', '2016-05-05'),
        ('2222P', '2222C', 'Dead', '2010-05-05'),
        ('3333P', '1234C', 'Dead', '2010-01-01'),
        ('4444P', '1201C', 'Alive', '2017-04-04');

INSERT INTO Emails(emailID, subject, message, date_sent)
	VALUES('1226C1226P', 'Referral', 'You have been referred to by a customer.', '2012-01-01'),
            ('1226C1226P2' , 'Referral 2', 'Please respond to the referall', '2012-02-02'),
            ('1226C1226P3', 'Referral 3', 'Last Contact', '2012-03-03'),
            ('1111CEM', 'Maintenance', 'You have a maintenance due!', '2014-01-15'),
            ('1111CEM2', 'Maintenance', 'RE:You have a maintenance due!', '2014-01-21'),
            ('1201CEM', 'Maintenance', 'You have a maintenance due!', '2015-04-15'),
            ('1201CEM2', 'Maintenance', 'RE:You have a maintenance due!', '2015-04-21'),
            ('2004CEM', 'Maintenance', 'You have a maintenance due!', '2016-06-01'),
            ('2004CEM2', 'Maintenance', 'RE:You have a maintenance due!', '2016-06-30');

INSERT INTO EmailSteady(emailID, custID, packageID)
        VALUES('1111CEM', '1111C', 't1563'),
            ('1111CEM2', '1111C', 't1563'),
            ('1201CEM', '1201C', 't1567'),
            ('1201CEM2', '1201C', 't1567'),
            ('2004CEM', '2004C', 't1568'),
            ('2004CEM2', '2004C', 't1568');
	
INSERT INTO EmailProspective(emailID, custID, refID)
	VALUES('1226C1226P', '1226P', '1226C'),
               ('1226C1226P2', '1226P', '1226C'),
                ('1226C1226P3', '1226P', '1226C');
			
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

INSERT INTO VisitItem(itemID, visitID, hours, employeeID)
        VALUES('O123CH', '1226V', 1, '3547E'),
                ('H123G', '1226V2', 2, '8764E'),
                ('H123V', '1226V3', 4, '8764E'),
                ('L123CA', '1111V', 2, '2202E'),
                ('B123E', '2222V', 1, '1226E'),
                ('O123P', '2222V2', 3, '6543E'),
                ('S123R', '1234V', 1, '2202E'),
                ('R123R', '1201V', 4, '9876E'),
                ('A123B', '2004V', 1, '7126E'),
                ('C123H', '1999V', 12, '7126E');
			
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
