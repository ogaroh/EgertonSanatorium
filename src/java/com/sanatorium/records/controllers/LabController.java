/**
 * @author: Erick Ogaro
**/

package com.sanatorium.records.controllers;

import com.sanatorium.records.dataRepo.LabRepo;
import com.sanatorium.records.models.labBean;
import java.io.IOException;
import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

@WebServlet("/LabController")
public class LabController extends HttpServlet {

    private static final long serialVersionUID = 1L;

    private LabRepo labData;

    @Resource(name = "jdbc/sanatorium")
    private DataSource datasource;

    @Override
    public void init() throws ServletException {
        super.init();

        // creates the lab report generation util
        try {
            labData = new LabRepo(datasource);
        } catch (Exception exc) {
            throw new ServletException(exc);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            addReport(request, response);
        } catch (Exception ex) {
            throw new ServletException(ex);
        }
    }

    private void addReport(HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        labBean report = new labBean();

        report.setTestType(request.getParameter("testType"));
        report.setResults(request.getParameter("testResults"));
    }
}
