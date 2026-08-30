DROP TABLE NetworkIssues;
DROP TABLE VPNConnectionHistory;
DROP TABLE BlockHistory;
DROP TABLE Registration;
DROP TABLE NetworkEngineer;
DROP TABLE DeviceSpecification;
DROP TABLE Device;
DROP TABLE Student;

CREATE TABLE Student ( 
    studentID VARCHAR2(20) NOT NULL, 
    name VARCHAR(255) NOT NULL, 
    surname VARCHAR(255) NOT NULL, 
    email VARCHAR(255) NOT NULL,
    dob DATE NOT NULL,
    department_code VARCHAR(255) NOT NULL, 
    PRIMARY KEY (studentID) 
);

CREATE TABLE Device (
    macAddress VARCHAR2(20) NOT NULL,
    model VARCHAR(255) NOT NULL,
    os VARCHAR(255) NOT NULL,
    type VARCHAR(255) NOT NULL,
    owner VARCHAR2(20) NOT NULL,
    PRIMARY KEY (macAddress),
    CONSTRAINT fk_owner FOREIGN KEY (owner) REFERENCES Student(studentID)
);

CREATE TABLE DeviceSpecification (
    macAddress VARCHAR2(20) NOT NULL,
    specification VARCHAR(255) NOT NULL,
    PRIMARY KEY (macAddress, specification),
    CONSTRAINT fk_macAddress FOREIGN KEY (macAddress) REFERENCES Device(macAddress)
);

CREATE TABLE NetworkEngineer (
    engID VARCHAR2(20) NOT NULL,
    name VARCHAR(255) NOT NULL, 
    surname VARCHAR(255) NOT NULL, 
    dob DATE NOT NULL,
    PRIMARY KEY (engID)
);

CREATE TABLE Registration (
    regID VARCHAR2(20) NOT NULL,
    timestamp TIMESTAMP NOT NULL,
    status VARCHAR(255) NOT NULL,
    type VARCHAR(255) NOT NULL,
    deviceMacAddress VARCHAR2(20) NOT NULL,
    approvedBy VARCHAR2(20) NOT NULL,
    PRIMARY KEY (regID),
    CONSTRAINT fk_deviceMacAddress FOREIGN KEY (deviceMacAddress) REFERENCES Device(macAddress),
    CONSTRAINT fk_approvedBy FOREIGN KEY (approvedBy) REFERENCES NetworkEngineer(engID)
);



CREATE TABLE BlockHistory (
    regID VARCHAR2(20) NOT NULL,
    startTimestamp TIMESTAMP NOT NULL,
    duration VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
    blockedBy VARCHAR2(20) NOT NULL,
    PRIMARY KEY (regID, startTimestamp),
    CONSTRAINT fk_block_regID FOREIGN KEY (regID) REFERENCES Registration(regID),
    CONSTRAINT fk_blockedBy FOREIGN KEY (blockedBy) REFERENCES NetworkEngineer(engID)
);

CREATE TABLE VPNConnectionHistory (
    regID VARCHAR2(20) NOT NULL,
    startTimestamp TIMESTAMP NOT NULL,
    duration VARCHAR(255) NOT NULL,
    PRIMARY KEY (regID, startTimestamp),
    CONSTRAINT fk_VPN_regID FOREIGN KEY (regID) REFERENCES Registration(regID)
);

CREATE TABLE NetworkIssues (
    regID VARCHAR2(20) NOT NULL,
    startTimestamp TIMESTAMP NOT NULL,
    description VARCHAR(255) NOT NULL,
    comments VARCHAR(255) NOT NULL,
    resolvedBy VARCHAR2(20) NOT NULL,
    PRIMARY KEY (regID, startTimestamp),
    CONSTRAINT fk_issue_regID FOREIGN KEY (regID) REFERENCES Registration(regID),
    CONSTRAINT fk_resolvedBy FOREIGN KEY (resolvedBy) REFERENCES NetworkEngineer(engID)
);


INSERT INTO Student (studentID, name, surname, email, dob, department_code) 
VALUES ('S001', 'Alice', 'Johnson', 'alice.johnson@metu.edu', TO_DATE('2002-03-15', 'YYYY-MM-DD'), '355');
INSERT INTO Student (studentID, name, surname, email, dob, department_code) 
VALUES ('S002', 'Bob', 'Smith', 'bob.smith@metu.edu', TO_DATE('2001-05-20', 'YYYY-MM-DD'), '356');
INSERT INTO Student (studentID, name, surname, email, dob, department_code) 
VALUES ('S003', 'Ahmed', 'Zorlu', 'ahmed.zorlu@metu.edu', TO_DATE('2003-07-10', 'YYYY-MM-DD'), '370');
INSERT INTO Student (studentID, name, surname, email, dob, department_code) 
VALUES ('S004', 'Diana', 'Brown', 'diana.brown@metu.edu', TO_DATE('2001-11-22', 'YYYY-MM-DD'), '378');


INSERT INTO Device (macAddress, model, os, type, owner) 
VALUES ('00:1A:C2:7B:00:47', 'Dell XPS 15', 'Windows 10', 'Laptop', 'S001');
INSERT INTO Device (macAddress, model, os, type, owner) 
VALUES ('00:1A:D2:7B:11:48', 'MacBook Pro', 'macOS', 'Laptop', 'S002');
INSERT INTO Device (macAddress, model, os, type, owner) 
VALUES ('00:C2:45:7B:1A:49', 'iPhone', 'iOS', 'Mobile', 'S003');
INSERT INTO Device (macAddress, model, os, type, owner) 
VALUES ('00:1A:C2:7B:00:50', 'Samsung Galaxy', 'Android', 'Mobile', 'S004');
INSERT INTO Device (macAddress, model, os, type, owner) 
VALUES ('00:2B:C2:9A:01:78', 'Dell Inspiron 15', 'Windows 11', 'Laptop', 'S001');


INSERT INTO DeviceSpecification (macAddress, specification) 
VALUES ('00:1A:C2:7B:00:47', '16GB RAM');
INSERT INTO DeviceSpecification (macAddress, specification) 
VALUES ('00:1A:C2:7B:00:47', '512GB SSD');
INSERT INTO DeviceSpecification (macAddress, specification) 
VALUES ('00:1A:D2:7B:11:48', '8GB RAM');
INSERT INTO DeviceSpecification (macAddress, specification) 
VALUES ('00:1A:D2:7B:11:48', '256GB SSD');
INSERT INTO DeviceSpecification (macAddress, specification) 
VALUES ('00:2B:C2:9A:01:78', '32GB RAM');

INSERT INTO NetworkEngineer (engID, name, surname, dob) 
VALUES ('E001', 'John', 'Doe', TO_DATE('1985-04-12', 'YYYY-MM-DD'));
INSERT INTO NetworkEngineer (engID, name, surname, dob) 
VALUES ('E002', 'Emily', 'White', TO_DATE('1990-09-15', 'YYYY-MM-DD'));
INSERT INTO NetworkEngineer (engID, name, surname, dob) 
VALUES ('E003', 'Mehmet', 'Muhendis', TO_DATE('1987-02-20', 'YYYY-MM-DD'));
INSERT INTO NetworkEngineer (engID, name, surname, dob) 
VALUES ('E004', 'Sophia', 'Black', TO_DATE('1992-06-10', 'YYYY-MM-DD'));


INSERT INTO Registration (regID, timestamp, status, type, deviceMacAddress, approvedBy) 
VALUES ('R001', TO_TIMESTAMP('2024-11-27 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Approved', 'Wireless', '00:1A:C2:7B:00:47', 'E001');
INSERT INTO Registration (regID, timestamp, status, type, deviceMacAddress, approvedBy) 
VALUES ('R002', TO_TIMESTAMP('2024-11-27 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Declined', 'Wired', '00:1A:D2:7B:11:48', 'E002');
INSERT INTO Registration (regID, timestamp, status, type, deviceMacAddress, approvedBy) 
VALUES ('R003', TO_TIMESTAMP('2024-11-27 11:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Approved', 'Wireless', '00:C2:45:7B:1A:49', 'E003');
INSERT INTO Registration (regID, timestamp, status, type, deviceMacAddress, approvedBy) 
VALUES ('R004', TO_TIMESTAMP('2024-11-27 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Blocked', 'Wired', '00:1A:C2:7B:00:50', 'E004');
INSERT INTO Registration (regID, timestamp, status, type, deviceMacAddress, approvedBy) 
VALUES ('R005', TO_TIMESTAMP('2024-11-02 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Approved', 'Wired', '00:2B:C2:9A:01:78', 'E001');


INSERT INTO BlockHistory (regID, startTimestamp, duration, description, blockedBy) 
VALUES ('R001', TO_TIMESTAMP('2024-11-27 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2, 'Network abuse detected', 'E001');
INSERT INTO BlockHistory (regID, startTimestamp, duration, description, blockedBy) 
VALUES ('R002', TO_TIMESTAMP('2024-11-28 15:00:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 'Exceeded bandwidth limit', 'E002');
INSERT INTO BlockHistory (regID, startTimestamp, duration, description, blockedBy) 
VALUES ('R003', TO_TIMESTAMP('2024-11-27 17:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1, 'Unauthorized access attempt', 'E003');
INSERT INTO BlockHistory (regID, startTimestamp, duration, description, blockedBy) 
VALUES ('R004', TO_TIMESTAMP('2024-11-29 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 'Compromised credentials', 'E004');



INSERT INTO VPNConnectionHistory (regID, startTimestamp, duration) 
VALUES ('R001', TO_TIMESTAMP('2024-11-27 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 3);
INSERT INTO VPNConnectionHistory (regID, startTimestamp, duration) 
VALUES ('R003', TO_TIMESTAMP('2024-11-29 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 5);
INSERT INTO VPNConnectionHistory (regID, startTimestamp, duration) 
VALUES ('R002', TO_TIMESTAMP('2024-11-30 07:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2);
INSERT INTO VPNConnectionHistory (regID, startTimestamp, duration) 
VALUES ('R004', TO_TIMESTAMP('2024-12-02 22:00:00', 'YYYY-MM-DD HH24:MI:SS'), 6);


INSERT INTO NetworkIssues (regID, startTimestamp, description, comments, resolvedBy) 
VALUES ('R001', TO_TIMESTAMP('2024-11-30 16:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Connection dropped', 'Rebooted router', 'E001');
INSERT INTO NetworkIssues (regID, startTimestamp, description, comments, resolvedBy) 
VALUES ('R002', TO_TIMESTAMP('2024-12-05 16:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'No connectivity', 'Replaced Ethernet cable', 'E002');
INSERT INTO NetworkIssues (regID, startTimestamp, description, comments, resolvedBy) 
VALUES ('R003', TO_TIMESTAMP('2024-11-30 17:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Slow speed', 'Checked DNS settings', 'E003');
INSERT INTO NetworkIssues (regID, startTimestamp, description, comments, resolvedBy) 
VALUES ('R004', TO_TIMESTAMP('2024-11-27 19:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'IP conflict', 'Updated device settings', 'E004');