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

@WebServlet("/updateStatusServlet")
public class UpdateStatusServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String complaintId = req.getParameter("compId");
        String complaint = req.getParameter("complaint");
        String date = req.getParameter("compDate");


        String status = req.getParameter("status");

        String remark = req.getParameter("remark");
        String username = req.getParameter("username");


        ComplaintModel complaintModel = new ComplaintModel(complaintId, complaint, date, status, remark, username);

        ComplaintDAO complaintDAO = new ComplaintDAO();

        boolean flag = false;

        flag = complaintDAO.updateComplaint(complaintModel, getServletContext());


        if (flag) {
            List<ComplaintModel> complaintModelList = complaintDAO.getAllComplaints(getServletContext());
            req.setAttribute("complaintModelList", complaintModelList);
            RequestDispatcher dispatcher = req.getRequestDispatcher("/views/adminpanel.jsp"); //
            dispatcher.forward(req, resp);
        }





    }
}
