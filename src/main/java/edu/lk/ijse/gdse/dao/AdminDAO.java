package edu.lk.ijse.gdse.dao;

import edu.lk.ijse.gdse.listener.DataSource;
import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpServlet;
import org.apache.commons.dbcp2.BasicDataSource;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AdminDAO {


    public boolean verifyCredentials(String username, String password, ServletContext sc) {

        boolean flag = false;

        try {

            DataSource ds = new DataSource();
//            ServletContext context = getServletContext();
            BasicDataSource bds = (BasicDataSource) sc.getAttribute("ds");

            Connection connection = bds.getConnection();


            PreparedStatement ps = connection.prepareStatement("select * from admin where username=? and password=?");
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                flag = true;
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return flag;
    }





}
