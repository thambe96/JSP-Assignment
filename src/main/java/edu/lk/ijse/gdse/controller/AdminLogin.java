package edu.lk.ijse.gdse.controller;

import edu.lk.ijse.gdse.dao.AdminDAO;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

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

            resp.sendRedirect("views/adminpanel.jsp");

        }




    }
}
