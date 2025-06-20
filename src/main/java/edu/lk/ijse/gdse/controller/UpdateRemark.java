package edu.lk.ijse.gdse.controller;

import edu.lk.ijse.gdse.model.ComplaintModel;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;


@WebServlet("/updateRemark")
public class UpdateRemark extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String complaintId = req.getParameter("compId");
        String complaint = req.getParameter("complaint");
        String date = req.getParameter("compDate");
        String status = req.getParameter("status");

        String remark = req.getParameter("remark");
        String username = req.getParameter("username");

        ComplaintModel complaintModel = new ComplaintModel(complaintId, complaint, date, status, remark, username);


        req.setAttribute("complaintModel", complaintModel);


        RequestDispatcher dispatcher = req.getRequestDispatcher("/views/updateremark.jsp");
        dispatcher.forward(req, resp);


    }
}
