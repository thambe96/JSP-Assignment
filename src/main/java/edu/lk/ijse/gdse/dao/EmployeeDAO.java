package edu.lk.ijse.gdse.dao;

import edu.lk.ijse.gdse.listener.DataSource;
import edu.lk.ijse.gdse.model.EmployeeModel;
import jakarta.servlet.ServletContext;
import org.apache.commons.dbcp2.BasicDataSource;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class EmployeeDAO {

    public boolean saveEmployee(EmployeeModel employee, ServletContext sc) {

        boolean flag = false;

        try {


            DataSource ds = new DataSource();

            BasicDataSource bds = (BasicDataSource) sc.getAttribute("ds");

            Connection connection = bds.getConnection();

            PreparedStatement ps = connection.prepareStatement(
                    "insert into employee values(?,?,?)"

            );

            ps.setString(1, employee.getUsername());
            ps.setString(2, employee.getPassword());
            ps.setString(3, employee.getEmail());
            flag = ps.executeUpdate() > 0;
            connection.close();


        } catch (SQLException e) {
            throw new RuntimeException(e);
        }


        return flag;
    }


    public boolean verifyEmpCredentials(EmployeeModel employee, ServletContext sc) {
        boolean flag = false;

        DataSource ds = new DataSource();
        BasicDataSource bds = (BasicDataSource) sc.getAttribute("ds");
        try {
            Connection connection = bds.getConnection();
            PreparedStatement ps = connection.prepareStatement("select * from employee where username=? and password=?");
            ps.setString(1, employee.getUsername());
            ps.setString(2, employee.getPassword());
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
