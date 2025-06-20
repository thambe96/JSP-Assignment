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

@WebServlet("/compUpdate")
public class ComplaintUpdate extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String complaintId = req.getParameter("compId");
        String complaint = req.getParameter("complaint");
        String date = req.getParameter("compDate");
        String status = req.getParameter("status");

        System.out.println("status of here :: " + status);

        String remark = req.getParameter("remark");
        String username = req.getParameter("username");

        ComplaintModel complaintModel = new ComplaintModel(complaintId, complaint, date, status, remark, username);


        System.out.println(" This is inside the ComplaintUpdate class and refer here line 31 : ->> " + complaintModel);





 /*

        ComplaintDAO complaintDAO = new ComplaintDAO();

        List<ComplaintModel> complaintList = complaintDAO.getAllComplaintByEmpUsrName(username, getServletContext());

        req.setAttribute("complaintList", complaintList);
        String nextComplaintId = complaintDAO.getNextComplaintId(getServletContext());
        req.setAttribute("nextComplaintId", nextComplaintId);

        */


        req.setAttribute("complaintModel", complaintModel);


        RequestDispatcher dispatcher = req.getRequestDispatcher("/views/updatecomplaint.jsp");
        dispatcher.forward(req, resp);



//        resp.sendRedirect(req.getContextPath() + "/views/complaint.jsp");


/*



        boolean flag = false;
        flag = complaintDAO.updateComplaint(complaintModel, getServletContext());

        if (flag) {
            resp.sendRedirect("/views/complaint.jsp");
        }

*/



    }
}
