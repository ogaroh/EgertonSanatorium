CREATE DATABASE sanatorium;

USE sanatorium;

CREATE TABLE students(    
    patientID   VARCHAR(250) PRIMARY KEY NOT NULL,
    regNo VARCHAR(250),
    fname    VARCHAR(250),
    sname    VARCHAR(250),
    gender  VARCHAR(100),
    YOB DATE
);

CREATE TABLE vitals(
    vitalsID    VARCHAR(250) NOT NULL DEFAULT "Test",
    patientID VARCHAR(250),
    staffID VARCHAR(250),
    height INT(10),
    weight INT(10),
    bmi DOUBLE(10,2),
    age INT(10),
    temperature INT(10),
    physicianDateTime VARCHAR(250)
);

CREATE TABLE doctorfeed(
    doctorfeedID    VARCHAR(250) NOT NULL DEFAULT "Test",
    patientID VARCHAR(250),
    staffID VARCHAR(250),
    symptoms    VARCHAR(250),
    prognosis    VARCHAR(250),
    diagnosis   VARCHAR(250),
    prescription    VARCHAR(250),    
    doctorDateTime  VARCHAR(250)  
);

CREATE TABLE records(
    recordID    VARCHAR(250) PRIMARY KEY NOT NULL,
    patientID   VARCHAR(250) NOT NULL,
    vitalsID    VARCHAR(250) NOT NULL,
    doctorfeedID    VARCHAR(250) NOT NULL,
    patientTestID   VARCHAR(250) NOT NULL,
    dateofvisit VARCHAR(250) NOT NULL
);

CREATE TABLE tests(
    testID  VARCHAR(250) PRIMARY KEY NOT NULL,
    name    VARCHAR(250),
    testDescription VARCHAR(250),
    testDatetime    VARCHAR(250)
);

CREATE TABLE patientTests(
    patientTestID   VARCHAR(250) PRIMARY KEY NOT NULL,
    testID VARCHAR(250),
    recordID    VARCHAR(250),
    patientID   VARCHAR(250),
    staffID VARCHAR(250),
    results VARCHAR(250),
    dateTest    VARCHAR(250)
);

CREATE TABLE staff(
    staffID VARCHAR(250) PRIMARY KEY NOT NULL,
    nationalID  INT(100),
    fname   VARCHAR(250),
    sname   VARCHAR(250),
    othername   VARCHAR(250),
    pass    VARCHAR(250),
    role    VARCHAR(250),
    gender  VARCHAR(100)
);
    
INSERT INTO `students` (`patientID`, `regNo`, `fname`, `sname`, `gender`, `YOB`) VALUES 
        ('EUSAN003', 'S13/09718/15', 'christine', 'peter', 'female', '2019-02-07'), 
        ('EUSAN004', 'S13/09719/15', 'sali', 'gaki', 'female', '1998-02-05'),
        ('EUSAN012', 'S13/09710/15', 'erick', 'ogaro', 'male', '1999-02-07'), 
        ('EUSAN014', 'S13/09711/15', 'roy', 'mwema', 'male', '1998-02-07'), 
        ('EUSAN005', 'S13/09712/15', 'mary', 'kipchumba', 'female', '1995-02-07'), 
        ('EUSAN006', 'S13/09713/15', 'diana', 'chebet', 'female', '1999-02-07'), 
        ('EUSAN007', 'S13/09714/15', 'mellisa', 'kamau', 'female', '2000-02-07'), 
        ('EUSAN008', 'S13/09715/15', 'ken', 'kibet', 'male', '1990-02-07'), 
        ('EUSAN009', 'S13/09716/15', 'mercy', 'okoreh', 'female', '1993-02-07'), 
        ('EUSAN010', 'S13/09717/15', 'carol', 'njoki', 'female', '1993-02-07'), 
        ('EUSAN011', 'S13/09743/15', 'frank', 'opiyo', 'male', '1990-02-07'): 
