/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sanatorium.records.dataRepo;

import com.sanatorium.records.models.PhysicianPatient;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.sql.DataSource;

/**
 *
 * @author Makali
 */
public class PhysicianRepo {

    private final DataSource dataSource;

    public PhysicianRepo(DataSource theDataSource) {
        dataSource = theDataSource;
    }

    public void addPatient(PhysicianPatient physicianPatient) throws Exception {

        Connection myConn = null;
        PreparedStatement myStmt = null;

        try {
            // get db connection
            myConn = dataSource.getConnection();

            // create sql for insert
            String sql = "insert into vitals "
                    + "(age, temperature, height, weight, bmi) "
                    + "values (?, ?, ?, ?, ?)";

            myStmt = myConn.prepareStatement(sql);

            // set the param values for the student
            myStmt.setString(1, physicianPatient.getAge());
            myStmt.setString(2, physicianPatient.getTemperature());
            myStmt.setString(3, physicianPatient.getHeight());
            myStmt.setString(4, physicianPatient.getWeight());
            myStmt.setString(5, physicianPatient.getBmi());

            // execute sql insert
            myStmt.execute();
        } finally {
            // clean up JDBC objects
            close(myConn, myStmt, null);
        }
    }

    public ResultSet getPatient(String patientID) throws Exception {

        Connection myConn = null;
        PreparedStatement myStmt = null;

        try {
            // get db connection
            myConn = dataSource.getConnection();

            // create sql for select
            String sql = "select * from students WHERE patientID = \'" + patientID + "\'";

            myStmt = myConn.prepareStatement(sql);

            // execute sql select
            ResultSet resultSet = myStmt.executeQuery(sql);
            
            return resultSet;
        } finally {
            // clean up JDBC objects
            close(myConn, myStmt, null);
        }
    }

    private void close(Connection myConn, Statement myStmt, ResultSet myRs) {

        try {
            if (myRs != null) {
                myRs.close();
            }

            if (myStmt != null) {
                myStmt.close();
            }

            if (myConn != null) {
                myConn.close();   // doesn't really close it ... just puts back in connection pool
            }
        } catch (Exception ex) {
        }
    }
}
