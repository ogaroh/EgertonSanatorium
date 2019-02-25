/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sanatorium.records.controllers;

import com.sanatorium.records.dataRepo.DoctorRepo;
import com.sanatorium.records.models.DoctorPatient;
import com.sanatorium.records.models.PhysicianPatient;
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
@WebServlet("/doctor")
public class DoctorController extends HttpServlet {

    private static final long serialVersionUID = 1L;

    private DoctorRepo doctorRepo;

    @Resource(name = "jdbc/sanatorium")
    private DataSource dataSource;

    @Override
    public void init() throws ServletException {
        super.init();

        // create our student db util ... and pass in the conn pool / datasource
        try {
            doctorRepo = new DoctorRepo(dataSource);
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
        
        //Attributes
        if (patientID != null && !patientID.isEmpty()) {
            try {
                ResultSet resultSet = doctorRepo.getPatient(patientID);

                if (resultSet.next()) {
//
                    String weight = resultSet.getString("weight");
                    String height = resultSet.getString("height");
                    String bmi = resultSet.getString("bmi");
                    String age = resultSet.getString("age");
                    String temperature = resultSet.getString("temperature");
                    
                    PhysicianPatient physicianPatient = new PhysicianPatient(weight, height, bmi, age, temperature);
                    request.setAttribute("patient", physicianPatient);
                    
                    request.getRequestDispatcher("doctor.jsp").forward(request, response);
//
                }
                
            } catch (Exception exc) {
                throw new ServletException(exc);
            }
            
            request.getRequestDispatcher("doctor.jsp").forward(request, response);
        }

        request.getRequestDispatcher("queue.jsp").forward(request, response);
    }

    private void addPatient(HttpServletRequest request, HttpServletResponse response) throws Exception {

        // read student info from form data
        String symptoms = request.getParameter("symptoms");
        String prognosis = request.getParameter("prognosis");
        String tests = request.getParameter("tests");
        String diagnosis = request.getParameter("diagnosis");

        // create a new patient object
        DoctorPatient newDoctorPatient = new DoctorPatient(symptoms, prognosis, tests, diagnosis);

        // add the student to the database
        doctorRepo.addPatient(newDoctorPatient);

    }
}
