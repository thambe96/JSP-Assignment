package edu.lk.ijse.gdse.controller;

import edu.lk.ijse.gdse.dao.EmployeeDAO;
import edu.lk.ijse.gdse.model.EmployeeModel;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;


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

        }




    }
}
