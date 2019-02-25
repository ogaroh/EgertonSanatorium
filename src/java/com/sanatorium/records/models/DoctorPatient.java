/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sanatorium.records.models;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Makali
 */
//TABLE: doctorfeed
//    doctorfeedID    VARCHAR(250) PRIMARY KEY NOT NULL,
//    patientID VARCHAR(250),
//    staffID VARCHAR(250),
//    symptoms    VARCHAR(250),
//    prognosis    VARCHAR(250),
//    diagnosis   VARCHAR(250),
//    prescription    VARCHAR(250),    
//    doctorDateTime  VARCHAR(250),
//    FOREIGN KEY (staffID) REFERENCES staff(staffID),
//    FOREIGN KEY (patientID) REFERENCES students(patientID)    
public class DoctorPatient {

    String symptoms;
    String prognosis;
    String tests;
    String diagnosis;

    public DoctorPatient(String symptoms, String prognosis, String tests, String diagnosis) {
        this.symptoms = symptoms;
        this.prognosis = prognosis;
        this.tests = tests;
        this.diagnosis = diagnosis;
    }

    public String getSymptoms() {
        return symptoms;
    }

    public void setSymptoms(String symptoms) {
        this.symptoms = symptoms;
    }

    public String getPrognosis() {
        return prognosis;
    }

    public void setPrognosis(String prognosis) {
        this.prognosis = prognosis;
    }

    public String getTests() {
        return tests;
    }

    public void setTests(String tests) {
        this.tests = tests;
    }

    public String getDiagnosis() {
        return diagnosis;
    }

    public void setDiagnosis(String diagnosis) {
        this.diagnosis = diagnosis;
    }
}
