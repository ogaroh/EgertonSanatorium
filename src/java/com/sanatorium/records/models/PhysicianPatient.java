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
//CREATE TABLE vitals(
//    vitalsID    VARCHAR(250) PRIMARY KEY NOT NULL,
//    patientID VARCHAR(250),
//    staffID VARCHAR(250),
//    height INT(10),
//    weight INT(10),
//    bmi DOUBLE(10,2),
//    age INT(10),
//    temperature INT(10),
//    physicianDateTime VARCHAR(250)
//);
public class PhysicianPatient {

    String height;
    String weight;
    String bmi;
    String age;
    String temperature;   

    public String getHeight() {
        return height;
    }

    public void setHeight(String height) {
        this.height = height;
    }

    public String getWeight() {
        return weight;
    }

    public void setWeight(String weight) {
        this.weight = weight;
    }

    public String getBmi() {
        return bmi;
    }

    public void setBmi(String bmi) {
        this.bmi = bmi;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getTemperature() {
        return temperature;
    }

    public void setTemperature(String temperature) {
        this.temperature = temperature;
    }

    public PhysicianPatient(String height, String weight, String bmi, String age, String temperature) {
        this.height = height;
        this.weight = weight;
        this.bmi = bmi;
        this.age = age;
        this.temperature = temperature;
    }
    
}
