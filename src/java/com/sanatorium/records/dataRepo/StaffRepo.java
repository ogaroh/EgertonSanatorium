
package com.sanatorium.records.dataRepo;

import com.sanatorium.records.models.Staff;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.sql.DataSource;

public class StaffRepo {
    
    private final DataSource dataSource;
    Staff tempStaff;

	public StaffRepo(DataSource theDataSource) {
		dataSource = theDataSource;
	}
        
        	public void addStaff(Staff staff) throws Exception {

		Connection myConn = null;
		PreparedStatement myStmt = null;
		
		try {
			// get db connection
			myConn = dataSource.getConnection();
			
			// create sql for insert
			String sql = "insert into staff "
					   + "(staffID, nationalID, fname, sname, othername, gender, role) "
					   + "values (?, ?, ?, ?, ?, ?, ?)";
			
			myStmt = myConn.prepareStatement(sql);
			
			// set the param values for the student
                        myStmt.setString(1, staff.getStaffId());
                        myStmt.setString(2, staff.getNationalId());
			myStmt.setString(3, staff.getFname());
			myStmt.setString(4, staff.getSname());
                        myStmt.setString(5, staff.getOthername());			
                        myStmt.setBoolean(6, staff.getGender());
                        myStmt.setString(7, staff.getRole());                       
			
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
	
//	public List<Staff> getStaff() throws Exception {
//		
//		List<Staff> staff = new ArrayList<>();
//		
//		Connection myConn = null;
//		Statement myStmt = null;
//		ResultSet myRs = null;
//		
//		try {
//			// get a connection
//			myConn = dataSource.getConnection();
//			
//			// create sql statement
//			String sql = "select * from staff order by last_name";
//			
//			myStmt = myConn.createStatement();
//			
//			// execute query
//			myRs = myStmt.executeQuery(sql);
//			
//			// process result set
//			while (myRs.next()) {
//				
//				// retrieve data from result set row
//                               String staffId= myRs.getString("staffID");
//                               String nationalId= myRs.getString("nationalID");
//                               String fname= myRs.getString("fname");
//                               String sname= myRs.getString("sname");
//                               String othername= myRs.getString("othername");
//                               Boolean gender= myRs.getBoolean("gender");
//                               String role= myRs.getString("role");
//
//				// create new staff object
//			tempStaff = new Staff(staffId, nationalId, fname,sname, othername,gender, role);
//                                
//				// add it to the list of staff
//				staff.add(tempStaff);				
//			}
//			 
//			return staff;		
//		}
//		finally {
//			// close JDBC objects
//			close(myConn, myStmt, myRs);
//		}		
//	}
//

}
