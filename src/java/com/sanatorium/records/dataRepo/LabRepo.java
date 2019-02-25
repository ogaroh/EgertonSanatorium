
package com.sanatorium.records.dataRepo;

import com.sanatorium.records.models.labBean;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LabRepo {

    private final DataSource dataSource;

    public LabRepo(DataSource theDataSource) {
        dataSource = theDataSource;
    }

    public labBean addTestResults(labBean bean) throws Exception {
        Connection connect = null;
        ResultSet resultSet = null;
        PreparedStatement add = null;

        // Values acquired from the lab bean
        String testType = bean.getTestType();
        String testResults = bean.getResults();

        try {
            // get database connection
            connect = dataSource.getConnection();

            // create sql query for insertion
            String insertQuery = "INSERT INTO table (testType, testResults) VALUES (?,?)";

            add = connect.prepareStatement(insertQuery);

            // set par values in table
            add.setString(1, testType);
            add.setString(2, testResults);
        } finally {
            // clean up the jdbc objects created
            close(connect, add, resultSet);
        }
        return bean;
    }

    private void close(Connection connect, Statement add, ResultSet myRs) {
        try {
            if (myRs != null) {
                myRs.close();
            }

            if (add != null) {
                add.close();
            }

            if (connect != null) {
                connect.close();   // puts it back in connection pool
            }
        } catch (Exception ex) {

        }
    }
}
