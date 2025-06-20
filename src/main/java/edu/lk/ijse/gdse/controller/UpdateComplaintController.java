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
import java.util.List;

@WebServlet("/updateCompController")
public class UpdateComplaintController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String complaintId = req.getParameter("compId");
        String complaint = req.getParameter("updateComplaint");
        String date = req.getParameter("compDate");
        String status = req.getParameter("status");
        String remark = req.getParameter("remark");
        String username = req.getParameter("username");


        ComplaintModel complaintModel = new ComplaintModel(complaintId, complaint, date, status, remark, username);


        ComplaintDAO complaintDAO = new ComplaintDAO();

        boolean flag = false;

        flag = complaintDAO.updateComplaint(complaintModel, getServletContext());

        if (flag) {

            List<ComplaintModel> complaintList = complaintDAO.getAllComplaintByEmpUsrName(username, getServletContext());

            req.setAttribute("complaintList", complaintList);
            String nextComplaintId = complaintDAO.getNextComplaintId(getServletContext());
            req.setAttribute("nextComplaintId", nextComplaintId);


            RequestDispatcher dispatcher = req.getRequestDispatcher("/views/complaint.jsp"); //
            dispatcher.forward(req, resp);


        }





    }
}
