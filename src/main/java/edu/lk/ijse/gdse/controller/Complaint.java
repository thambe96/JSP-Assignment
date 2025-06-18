package edu.lk.ijse.gdse.controller;

import edu.lk.ijse.gdse.dao.ComplaintDAO;
import edu.lk.ijse.gdse.model.ComplaintModel;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Date;

@WebServlet("/complaint")
public class Complaint extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String complaintId = req.getParameter("complaintId");
        String complaintDate = req.getParameter("date");
        String complaint = req.getParameter("complaint");
        String status = "pending";
        String remark = "";
        String username = req.getParameter("username");


//        String dateString = "2023-01-07";
        // Parse the string to LocalDate





            ComplaintModel complaintModel = new ComplaintModel(complaintId, complaint, complaintDate, status, remark, username);

            // call complaintDAO

            ComplaintDAO complaintDAO = new ComplaintDAO();

            boolean flag = complaintDAO.lodgeComplaint(complaintModel, getServletContext());

            if (flag) {
                String nextComplaintId = complaintDAO.getNextComplaintId(getServletContext());
                req.setAttribute("nextComplaintId", nextComplaintId);
//                req.setAttribute("username", username);
                RequestDispatcher dispatcher = req.getRequestDispatcher("/views/complaint.jsp");
                dispatcher.forward(req, resp);
            }







    }


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }



}
