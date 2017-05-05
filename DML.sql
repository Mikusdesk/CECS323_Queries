DROP TABLE MaintenancePackage;
DROP TABLE Vehicle;

CREATE TABLE Vehicle(
    vin                     varchar(17) NOT NULL,
    make                    varchar(20) NOT NULL,
    model                   varchar(20) NOT NULL,
    vyear                   int NOT NULL,
    currentMileage          int NOT NULL,
    estimatedMilePerYear    int NOT NULL,
    custID                  varchar(20) NOT NULL,
    CONSTRAINT  vehicle_pk  PRIMARY KEY (vin)
);

CREATE TABLE MaintenancePackage(
    packageID               int NOT NULL,
    packageName             varchar(20) NOT NULL,
    packMileage             int NOT NULL,
    vin                     varchar(20) NOT NULL,
    itemID                  varchar(20) NOT NULL,
    CONSTRAINT  maintenancepackage_pk  PRIMARY KEY (packageID),
    CONSTRAINT maintenancepackage_fk FOREIGN KEY (vin) REFERENCES Vehicle (vin),
    --CONSTRAINT maintenancepackage_fk FOREIGN KEY (itemID) REFERENCES MaintenanceItem (itemID)
);