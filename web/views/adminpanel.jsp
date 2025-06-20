<%@ page import="edu.lk.ijse.gdse.model.ComplaintModel" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 6/17/2025
  Time: 6:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Panel</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
            color: #495057;
        }
        .table-container {
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
        .table thead th {
            background-color: #e9ecef;
            border-bottom: 2px solid #dee2e6;
            color: #495057;
            font-weight: 600;
        }
        .btn-logout {
            background-color: #6c757d;
            border-color: #6c757d;
            color: white;
        }
        .btn-logout:hover {
            background-color: #5a6268;
            border-color: #545b62;
            color: white;
        }
        .btn-sm {
            font-size: 0.875rem;
            padding: 0.25rem 0.5rem;
        }
    </style>
</head>
<body>
<div class="container-fluid mt-4">
    <!-- Header -->
    <div class="row mb-4">
        <div class="col">
            <div class="d-flex justify-content-between align-items-center">
                <h2 class="text-muted mb-0">Admin Panel</h2>
                <button type="button" class="btn btn-logout">Logout</button>
            </div>
        </div>
    </div>

    <!-- Table Container -->
    <div class="row">
        <div class="col">
            <div class="table-container p-3">
                <div class="table-responsive">
                    <table class="table table-hover mb-0">
                        <thead>
                        <tr>
                            <th scope="col">Com ID</th>
                            <th scope="col">Complaint</th>
                            <th scope="col">Date</th>
                            <th scope="col">Status</th>
                            <th scope="col">Username</th>
                            <th scope="col">Remark</th>
                            <th scope="col">Remark</th>
                            <th scope="col">Update Status</th>
                            <th scope="col">Delete</th>
                        </tr>
                        </thead>
                        <tbody>
                        <!-- Table rows will be populated here -->



                        <%

                            List<ComplaintModel> complaintList = (List<ComplaintModel>) request.getAttribute("complaintModelList");

                            for (ComplaintModel comp : complaintList) {

                        %>

                        <tr>

                            <td><%= comp.getComplanitId() %></td>

                            <td><%= comp.getComplaint() %></td>

                            <td><%= comp.getComplaintDate() %></td>

                            <td><%= comp.getStatus() %></td>


                            <td><%= comp.getUsrname() %></td>

                            <td><%= comp.getRemark() %></td>


                            <td>

                                <!-- Form for each row -->

                                <form action="${pageContext.request.contextPath}/updateRemark" method="post">

                                    <input type="hidden" name="compId" value="<%= comp.getComplanitId() %>">

                                    <input type="hidden" name="complaint" value="<%= comp.getComplaint() %>">

                                    <input type="hidden" name="compDate" value="<%= comp.getComplaintDate() %>">



                                    <input type="hidden" name="status" value="<%= comp.getStatus() %>">


                                    <input type="hidden" name="remark" value="<%= comp.getRemark() %>">

                                    <input type="hidden" name="username" value="<%= comp.getUsrname() %>">

                                    <button type="submit">Update Remark</button>

                                </form>

                            </td>


                            <td>

                                <!-- Form for each row -->

                                <form action="${pageContext.request.contextPath}/updateStatusServlet" method="post">

                                    <%
                                        // Get the current status (default to "pending" if not set)
                                        String status = request.getParameter("status") != null ?
                                                request.getParameter("status") : "pending";
                                    %>



                                    <input type="radio" id="pending" name="status" value="pending"
                                        <%= "pending".equals(status) ? "checked" : "" %>>
                                    <label for="pending">Pending</label><br>

                                    <input type="radio" id="solved" name="status" value="solved"
                                        <%= "solved".equals(status) ? "checked" : "" %>>
                                    <label for="solved">Solved</label><br>

<%--                                    <input type="submit" value="Update Status">--%>

                                    <input type="hidden" name="compId" value="<%= comp.getComplanitId() %>">


                                    <input type="hidden" name="complaint" value="<%= comp.getComplaint() %>">

                                    <input type="hidden" name="compDate" value="<%= comp.getComplaintDate() %>">



<%--                                    <input type="hidden" name="status" value="<%= comp.getStatus() %>">--%>


                                    <input type="hidden" name="remark" value="<%= comp.getRemark() %>">

                                    <input type="hidden" name="username" value="<%= comp.getUsrname() %>">

                                    <input type="submit" value="Update Status">



<%--                                    <button type="submit">status</button> --%>

                                </form>

                            </td>







                            <td>

                                <!-- Form for each row -->

                                <form action="${pageContext.request.contextPath}/srvName" method="post">

                                    <input type="hidden" name="compId" value="<%= comp.getComplanitId() %>">

                                    <input type="hidden" name="complaint" value="<%= comp.getComplaint() %>">

                                    <input type="hidden" name="compDate" value="<%= comp.getComplaintDate() %>">

                                    <input type="hidden" name="status" value="<%= comp.getStatus() %>">

                                    <input type="hidden" name="remark" value="<%= comp.getRemark() %>">

                                    <input type="hidden" name="username" value="<%= comp.getUsrname() %>">

                                    <button type="submit">Delete</button>

                                </form>

                            </td>



                        </tr>

                        <% } %>


                        <%

                            session.removeAttribute("complaintList");

                        %>










                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
</body>
</html>