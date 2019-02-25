package com.sanatorium.records.models;

public class Student {
    private String regNo;
   
    private String patientID;
    private String name;
    private String gender;

    public Student(String regNo, String patientID, String name, String gender) {
        this.regNo = regNo;
        this.patientID = patientID;
        this.name = name;
        this.gender = gender;
    }

    public String getRegNo() {
        return regNo;
    }

    public void setRegNo(String regNo) {
        this.regNo = regNo;
    }

    public String getPatientId() {
        return patientID;
    }

    public void setPatientId(String patientID) {
        this.patientID = patientID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }
}
