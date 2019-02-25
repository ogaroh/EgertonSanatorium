
package com.sanatorium.records.dataRepo;
import com.sanatorium.records.models.Student;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.sql.DataSource;

public class StudentRepo {
    
    private final DataSource dataSource;
    Student tempStudent;

	public StudentRepo(DataSource theDataSource) {
		dataSource = theDataSource;
	}
        
        	public void addStudent(Student student) throws Exception {

		Connection myConn = null;
		PreparedStatement myStmt = null;
		
		try {
			// get db connection
			myConn = dataSource.getConnection();
			
			// create sql for insert
			String sql = "insert into student "
					   + "(regNo, PatientId, name, gender) "
					   + "values (?, ?, ?, ?)";
			
			myStmt = myConn.prepareStatement(sql);
			
			// set the param values for the student
                        myStmt.setString(1, student.getRegNo());
                        myStmt.setString(2, student.getPatientId());			
                        myStmt.setString(3, student.getName());                       
                        myStmt.setString(4, student.getGender());
			
			// execute sql insert
			myStmt.execute();
		}
		finally {
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
		}
		catch (Exception ex) {                    
		}
	}
}
