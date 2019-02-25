
package com.sanatorium.records.controllers;

import com.sanatorium.records.dataRepo.StaffRepo;
import com.sanatorium.records.models.Staff;
import java.io.IOException;
import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

    
@WebServlet("/ChiefStaffController")
public class ChiefStaffController extends HttpServlet{

	private static final long serialVersionUID = 1L;

	private StaffRepo staffDB;
	
	@Resource(name="jdbc/sanatorium")
	private DataSource dataSource;
	
	@Override
	public void init() throws ServletException {
		super.init();
		
		// create our student db util ... and pass in the conn pool / datasource
		try {
			staffDB = new StaffRepo(dataSource);
		}
		catch (Exception exc) {
			throw new ServletException(exc);
		}
	}

    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

            try {
                
                addStaff(request,response);
                
            } catch (Exception exc) {
                
			throw new ServletException(exc);
            }
		
	}
	private void addStaff(HttpServletRequest request, HttpServletResponse response) throws Exception {

		// read student info from form data
		String staffID = request.getParameter("staffID");
		String nationalID = request.getParameter("nationalID");
		String fname = request.getParameter("fname");
                String sname = request.getParameter("sname");
		String othername = request.getParameter("othername");
                //String gender = request.getParameter("gender"); 
                boolean gender = Boolean.parseBoolean(request.getParameter("gender"));
                String role = request.getParameter("role");
                
		// create a new staff object
		Staff theStaff = new Staff(staffID,nationalID,fname,sname,othername,gender,role);
        
		// add the staff to the database
		staffDB.addStaff(theStaff);				
		
	}
	
}



