package edu.lk.ijse.gdse.controller;

import edu.lk.ijse.gdse.dao.ComplaintDAO;
import edu.lk.ijse.gdse.dao.EmployeeDAO;
import edu.lk.ijse.gdse.model.EmployeeModel;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;


@WebServlet("/empSignUp")
public class EmployeeSignUp extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {



        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String email = req.getParameter("email");

        EmployeeModel emp = new EmployeeModel(username, password, email);

        ServletContext context = getServletContext();

        EmployeeDAO employeeDAO = new EmployeeDAO();

        boolean flag = employeeDAO.saveEmployee(emp, context);

        if (flag) {
            resp.sendRedirect("http://localhost:8080/empcomptmgtsystem_Web_exploded/views/employeelogin.jsp");
        }



    }


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String email = req.getParameter("email");
        EmployeeModel emp = new EmployeeModel(username, password, email);
        ServletContext context = getServletContext();
        EmployeeDAO employeeDAO = new EmployeeDAO();

        boolean flag = employeeDAO.verifyEmpCredentials(emp, context);
        if (flag) {
//            resp.sendRedirect("http://localhost:8080/empcomptmgtsystem_Web_exploded/views/complaint.jsp");


            ComplaintDAO complaintDAO = new ComplaintDAO();
            String nextComplaintId = complaintDAO.getNextComplaintId(getServletContext());
            req.setAttribute("nextComplaintId", nextComplaintId);
//            req.setAttribute("username", username);

            HttpSession session = req.getSession();
            session.setAttribute("username", username);

            RequestDispatcher dispatcher = req.getRequestDispatcher("/views/complaint.jsp");
            dispatcher.forward(req, resp);





        } else {
            resp.sendRedirect("http://localhost:8080/empcomptmgtsystem_Web_exploded/views/employeelogin.jsp");
        }


    }
}
