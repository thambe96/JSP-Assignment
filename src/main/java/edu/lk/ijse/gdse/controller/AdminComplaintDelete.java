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

@WebServlet("/adminCompDelete")
public class AdminComplaintDelete extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String compId = req.getParameter("compId");

        ComplaintDAO complaintDAO = new ComplaintDAO();

        ComplaintModel complaintModel = new ComplaintModel();
        complaintModel.setComplanitId(compId);

        boolean flag = false;

        flag = complaintDAO.deleteComplaint(complaintModel, getServletContext());

        if (flag) {

            List<ComplaintModel> complaintModelList = complaintDAO.getAllComplaints(getServletContext());

            req.setAttribute("complaintModelList", complaintModelList);

            RequestDispatcher dispatcher = req.getRequestDispatcher("/views/adminpanel.jsp");
            dispatcher.forward(req, resp);


        }



    }
}
