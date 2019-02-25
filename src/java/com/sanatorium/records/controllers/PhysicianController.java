/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sanatorium.records.controllers;

import com.sanatorium.records.dataRepo.PhysicianRepo;
import com.sanatorium.records.models.PhysicianPatient;
import com.sanatorium.records.models.Student;
import java.io.IOException;
import java.sql.ResultSet;
import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 *
 * @author Makali
 */
@WebServlet("/physician")
public class PhysicianController extends HttpServlet {private static final long serialVersionUID = 1L;

    private PhysicianRepo physicianRepo;

    @Resource(name = "jdbc/sanatorium")
    private DataSource dataSource;

    @Override
    public void init() throws ServletException {
        super.init();

        // create our student db util ... and pass in the conn pool / datasource
        try {
            physicianRepo = new PhysicianRepo(dataSource);
        } catch (Exception exc) {
            throw new ServletException(exc);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {

           addPatient(request, response);
            request.getRequestDispatcher("queue.jsp").forward(request, response);

        } catch (Exception exc) {

            throw new ServletException(exc);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String patientID = request.getParameter("patientID");
          
        if (patientID != null && !patientID.isEmpty()) {
            try {
                ResultSet resultSet = physicianRepo.getPatient(patientID);
                
                 if (resultSet.next()) {
//
                    String weight = resultSet.getString("weight");
                    String height = resultSet.getString("height");
                    String bmi = resultSet.getString("bmi");
                    String waa = resultSet.getString("bmi");
                    
                     Student student = new Student(weight, height, bmi, waa);
                    request.setAttribute("patient", student);
//
                }
                                
                request.getRequestDispatcher("physician.jsp").forward(request, response);
            } catch (Exception exc) {
                throw new ServletException(exc);
            }
        }
        
        request.getRequestDispatcher("queue.jsp").forward(request, response);
    }

   private void addPatient(HttpServletRequest request, HttpServletResponse response) throws Exception {

       // read student info from form data
       String height = request.getParameter("height");
       String weight = request.getParameter("weight");
       String bmi = request.getParameter("bmi");
       String age = request.getParameter("age");
       String temperature = request.getParameter("temperature");

       // create a new patient object
       PhysicianPatient newPhysicianPatient = new PhysicianPatient(height, weight, bmi, age, temperature);

       // add the student to the database
       physicianRepo.addPatient(newPhysicianPatient);

   }
}
