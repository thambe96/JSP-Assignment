package edu.lk.ijse.gdse.controller;

import edu.lk.ijse.gdse.dao.AdminDAO;
import edu.lk.ijse.gdse.dao.ComplaintDAO;
import edu.lk.ijse.gdse.model.ComplaintModel;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/adminLogin")
public class AdminLogin extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        String username = req.getParameter("username");
        String password = req.getParameter("password");

        AdminDAO ad = new AdminDAO();

        ServletContext sc = getServletContext();

        boolean flag = ad.verifyCredentials(username, password, sc);
        if (flag) {

//            req.getSession().setAttribute("user", username);
//            req.getSession().setAttribute("admin", username);


            ComplaintDAO complaintDAO = new ComplaintDAO();

            List<ComplaintModel> complaintModelList = complaintDAO.getAllComplaints(getServletContext());

            System.out.println(complaintModelList);


            req.setAttribute("complaintModelList", complaintModelList);
            RequestDispatcher dispatcher = req.getRequestDispatcher("/views/adminpanel.jsp");
            dispatcher.forward(req, resp);






//            resp.sendRedirect("views/adminpanel.jsp");

        }




    }
}
