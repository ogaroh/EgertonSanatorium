
package com.sanatorium.records.models;

public class Staff {
    
    public String staffId;
    public String nationalId;
    public String fname;
    public String sname;
    public String othername;
    public Boolean gender;
    public String role;

    public Staff(String staffId, String nationalId, String fname,String sname, Boolean gender, String role) {
        this.staffId = staffId;
        this.nationalId = nationalId;
        this.fname = fname;
        this.sname = sname;
        this.gender = gender;
        this.role = role;
    }
    
    public Staff(String staffId, String nationalId, String fname,String sname, String othername,Boolean gender, String role){
        this.staffId = staffId;
        this.nationalId = nationalId;
        this.fname = fname;
        this.sname = sname;
        this.sname = sname;
        this.othername= othername;
        this.gender = gender;
        this.role = role;
    }


 
    public String getStaffId() {
        return staffId;
    }

    public void setStaffId(String staffId) {
        this.staffId = staffId;
    }

    public String getNationalId() {
        return nationalId;
    }

    public void setNationalId(String nationalId) {
        this.nationalId = nationalId;
    }

    public Boolean getGender() {
        return gender;
    }

    public void setGender(Boolean gender) {
        this.gender = gender;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getOthername() {
        return othername;
    }

    public void setOthername(String othername) {
        this.othername = othername;
    }
    
    @Override
    public String toString() {
        return "StaffRepo{" + "staffId=" + staffId + ", nationalId=" + nationalId + ", fname=" + fname + ", sname=" + sname + ", gender=" + gender + ", role=" + role + '}';
    }

         
}

