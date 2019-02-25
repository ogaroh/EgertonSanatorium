/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sanatorium.records.dataRepo;

/**
 *
 * @author Makali
 */
import com.sanatorium.records.models.DoctorPatient;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.sql.DataSource;

public class DoctorRepo {

    private final DataSource dataSource;
    DoctorPatient tempPatient;

    public DoctorRepo(DataSource theDataSource) {
        dataSource = theDataSource;
    }

    public void addPatient(DoctorPatient doctorPatient) throws Exception {

        Connection myConn = null;
        PreparedStatement myStmt = null;

        try {
            // get db connection
            myConn = dataSource.getConnection();

            // create sql for insert
            String sql = "insert into doctorfeed "
                    + "(symptoms, prognosis, diagnosis, prescription) "
                    + "values (?, ?, ?, ?)";

            myStmt = myConn.prepareStatement(sql);

            // set the param values for the student
            myStmt.setString(1, doctorPatient.getSymptoms());
            myStmt.setString(2, doctorPatient.getPrognosis());
            myStmt.setString(3, doctorPatient.getDiagnosis());
            myStmt.setString(4, doctorPatient.getTests());

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
            String sql = "select weight, height, bmi, age, temperature from vitals WHERE patientID = \'" + patientID + "\'";

            myStmt = myConn.prepareStatement(sql);

            // execute sql select
            ResultSet resultSet = myStmt.executeQuery(sql);
            
            return resultSet;
            
        } catch(Exception exc) {
            // clean up JDBC objects
            throw exc;
//            close(myConn, myStmt, null);
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
