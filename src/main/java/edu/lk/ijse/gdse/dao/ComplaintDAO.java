package edu.lk.ijse.gdse.dao;

import edu.lk.ijse.gdse.controller.Complaint;
import edu.lk.ijse.gdse.listener.DataSource;
import edu.lk.ijse.gdse.model.ComplaintModel;
import jakarta.servlet.ServletContext;
import org.apache.commons.dbcp2.BasicDataSource;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

public class ComplaintDAO {


    public boolean lodgeComplaint(ComplaintModel complaint, ServletContext context) {

        boolean flag = false;

        DataSource ds = new DataSource();

        BasicDataSource bds = (BasicDataSource) context.getAttribute("ds");

        try {

            String complaintDate = complaint.getComplaintDate();
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
            LocalDate localDate = LocalDate.parse(complaintDate, formatter);
            // Convert LocalDate to java.sql.Date
            java.sql.Date sqlDate = java.sql.Date.valueOf(localDate);




            Connection connection = bds.getConnection();
            PreparedStatement ps = connection.prepareStatement("insert into complaint values(?,?,?,?,?,?)");
            ps.setString(1, complaint.getComplanitId());
            ps.setString(2, complaint.getComplaint());
            ps.setString(3, String.valueOf(sqlDate));
            ps.setString(4, complaint.getStatus());
            ps.setString(5, complaint.getRemark());
            ps.setString(6, complaint.getUsrname());


            int rowsAffected = ps.executeUpdate(); // Use executeUpdate for INSERT
            if (rowsAffected > 0) {
                flag = true; // Set flag to true if the insert was successful
                connection.close();
            }



        } catch (SQLException e) {
            e.printStackTrace();
        }



        return flag;
    }


    public String getNextComplaintId(ServletContext context) {
        String nextComplaintId = "";


        DataSource ds = new DataSource();

        BasicDataSource bds = (BasicDataSource) context.getAttribute("ds");
        try {


            Connection conn = bds.getConnection();
            PreparedStatement ps = conn.prepareStatement("SELECT complaint_id from complaint ORDER BY complaint_id DESC LIMIT 1");
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                String lastId = rs.getString(1);
                String substring = lastId.substring(1); // Extract the numeric part
                int i = Integer.parseInt(substring); // Convert the numeric part to integer
                int newIdIndex = i + 1; // Increment the number by 1
                nextComplaintId = String.format("C%03d", newIdIndex);
                conn.close();

            } else {
                nextComplaintId = "C001";
            }



        } catch (SQLException e) {
            throw new RuntimeException(e);
        }


        return nextComplaintId;
    }


    public List<ComplaintModel> getAllComplaintByEmpUsrName(String username, ServletContext context) {

        DataSource ds = new DataSource();
        BasicDataSource bds = (BasicDataSource) context.getAttribute("ds");
        List<ComplaintModel> empCompList = new ArrayList<>();

        try {
            Connection connection = bds.getConnection();
            PreparedStatement ps = connection.prepareStatement("select * from complaint where username = ?");
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                String complaintId = rs.getString(1);
                String complaint = rs.getString(2);
                String date = rs.getString(3);
                String status = rs.getString(4);
                String remark = rs.getString(5);
                String usrname = rs.getString(6);


                ComplaintModel complaintModel = new ComplaintModel(complaintId, complaint, date, status, remark, usrname);
                empCompList.add(complaintModel);

            }

            connection.close();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }


        return empCompList;

    }


    public boolean deleteComplaint(ComplaintModel complaint, ServletContext context) {
        boolean flag = false;
        DataSource ds = new DataSource();
        BasicDataSource bds = (BasicDataSource) context.getAttribute("ds");

        try {
            Connection connection = bds.getConnection();

            PreparedStatement ps = connection.prepareStatement("delete from complaint where complaint_id = ?");
            ps.setString(1, complaint.getComplanitId());
            int rowsAffected = ps.executeUpdate();
            if (rowsAffected > 0) {
                flag = true;
                connection.close();
            }


        } catch (SQLException e) {
            throw new RuntimeException(e);
        }


        return flag;
    }



    public boolean updateComplaint(ComplaintModel complaint, ServletContext context) {

        boolean flag = false;

        DataSource ds = new DataSource();

        BasicDataSource bds = (BasicDataSource) context.getAttribute("ds");

        try {

            String complaintDate = complaint.getComplaintDate();
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
            LocalDate localDate = LocalDate.parse(complaintDate, formatter);
            // Convert LocalDate to java.sql.Date
            java.sql.Date sqlDate = java.sql.Date.valueOf(localDate);




            Connection connection = bds.getConnection();
            PreparedStatement ps = connection.prepareStatement("update complaint set complaint = ?, status = ?, remark = ? where complaint_id = ?");

            ps.setString(1, complaint.getComplaint());

            ps.setString(2, complaint.getStatus());
            ps.setString(3, complaint.getRemark());
            ps.setString(4, complaint.getComplanitId());


            int rowsAffected = ps.executeUpdate(); // Use executeUpdate for INSERT
            if (rowsAffected > 0) {
                flag = true; // Set flag to true if the insert was successful
                connection.close();
            }



        } catch (SQLException e) {
            e.printStackTrace();
        }



        return flag;
    }




    public List<ComplaintModel> getAllComplaints(ServletContext context) {

        DataSource ds = new DataSource();
        BasicDataSource bds = (BasicDataSource) context.getAttribute("ds");
        List<ComplaintModel> allComplaints = new ArrayList<>();

        try {
            Connection connection = bds.getConnection();
            PreparedStatement ps = connection.prepareStatement("select * from complaint");

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                String complaintId = rs.getString(1);
                String complaint = rs.getString(2);
                String date = rs.getString(3);
                String status = rs.getString(4);
                String remark = rs.getString(5);
                String usrname = rs.getString(6);


                ComplaintModel complaintModel = new ComplaintModel(complaintId, complaint, date, status, remark, usrname);
                allComplaints.add(complaintModel);

            }

            connection.close();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }


        return allComplaints;


    }


















}
