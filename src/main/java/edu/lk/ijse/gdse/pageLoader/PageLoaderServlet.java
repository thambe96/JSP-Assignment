package edu.lk.ijse.gdse.pageLoader;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/loadPage")
public class PageLoaderServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {



       /* String page = req.getParameter("rolepage");

        System.out.println(page);*/


        RequestDispatcher rd = switch (req.getParameter("rolepage")) {
            case "Employee Login" -> req.getRequestDispatcher("/views/login.jsp");
            case "Admin Login" -> req.getRequestDispatcher("/views/adminlogin.jsp");
            default -> req.getRequestDispatcher("/views/error.jsp"); // homepage insted of error
        };



        rd.forward(req, resp);



    }
}
