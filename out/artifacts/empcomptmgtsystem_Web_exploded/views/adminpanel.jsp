<%--
<%@ page import="edu.lk.ijse.gdse.model.ComplaintModel" %>
<%@ page import="java.util.List" %>&lt;%&ndash;
  Created by IntelliJ IDEA.
  User: HP
  Date: 6/17/2025
  Time: 6:32 PM
  To change this template use File | Settings | File Templates.
&ndash;%&gt;
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

&lt;%&ndash;                                    <input type="submit" value="Update Status">&ndash;%&gt;

                                    <input type="hidden" name="compId" value="<%= comp.getComplanitId() %>">


                                    <input type="hidden" name="complaint" value="<%= comp.getComplaint() %>">

                                    <input type="hidden" name="compDate" value="<%= comp.getComplaintDate() %>">



&lt;%&ndash;                                    <input type="hidden" name="status" value="<%= comp.getStatus() %>">&ndash;%&gt;


                                    <input type="hidden" name="remark" value="<%= comp.getRemark() %>">

                                    <input type="hidden" name="username" value="<%= comp.getUsrname() %>">

                                    <input type="submit" value="Update Status">



&lt;%&ndash;                                    <button type="submit">status</button> &ndash;%&gt;

                                </form>

                            </td>







                            <td>

                                <!-- Form for each row -->

                                <form action="${pageContext.request.contextPath}/adminCompDelete" method="post">

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

--%>


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
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            background: linear-gradient(135deg, #f8fafc 0%, #e2e8f0 100%);
            font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
            color: #334155;
            min-height: 100vh;
        }

        .main-container {
            max-width: 1400px;
            margin: 0 auto;
            padding: 24px;
        }

        /* Header Styles */
        .header-section {
            background: white;
            border-radius: 16px;
            padding: 24px 32px;
            margin-bottom: 24px;
            box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
            border: 1px solid rgba(0, 0, 0, 0.05);
        }

        .header-title {
            font-size: 28px;
            font-weight: 600;
            color: #1e293b;
            margin: 0;
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .header-icon {
            width: 40px;
            height: 40px;
            background: linear-gradient(135deg, #6366f1 0%, #8b5cf6 100%);
            border-radius: 10px;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-size: 18px;
        }

        .btn-logout {
            background: linear-gradient(135deg, #ef4444 0%, #f87171 100%);
            border: none;
            color: white;
            padding: 10px 24px;
            border-radius: 10px;
            font-weight: 500;
            transition: all 0.2s ease;
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .btn-logout:hover {
            transform: translateY(-1px);
            box-shadow: 0 4px 12px rgba(239, 68, 68, 0.3);
            color: white;
        }

        /* Table Container */
        .table-container {
            background: white;
            border-radius: 16px;
            padding: 0;
            box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
            border: 1px solid rgba(0, 0, 0, 0.05);
            overflow: hidden;
        }

        .table-header {
            background: linear-gradient(135deg, #f8fafc 0%, #f1f5f9 100%);
            padding: 20px 32px;
            border-bottom: 1px solid #e2e8f0;
        }

        .table-title {
            font-size: 18px;
            font-weight: 600;
            color: #1e293b;
            margin: 0;
        }

        /* Table Styles */
        .table {
            margin: 0;
            font-size: 14px;
        }

        .table thead th {
            background: #f8fafc;
            border: none;
            border-bottom: 2px solid #e2e8f0;
            color: #475569;
            font-weight: 600;
            padding: 16px 20px;
            font-size: 13px;
            text-transform: uppercase;
            letter-spacing: 0.025em;
        }

        .table tbody td {
            padding: 16px 20px;
            border-bottom: 1px solid #f1f5f9;
            vertical-align: middle;
            color: #334155;
        }

        .table tbody tr {
            transition: all 0.15s ease;
        }

        .table tbody tr:hover {
            background: #f8fafc;
        }

        .table tbody tr:last-child td {
            border-bottom: none;
        }

        /* Status Badge */
        .status-badge {
            padding: 4px 10px;
            border-radius: 20px;
            font-size: 12px;
            font-weight: 500;
            text-transform: capitalize;
        }

        .status-pending {
            background: #fef3c7;
            color: #d97706;
        }

        .status-solved {
            background: #d1fae5;
            color: #059669;
        }

        /* Button Styles */
        .btn-action {
            padding: 6px 16px;
            border-radius: 8px;
            font-size: 12px;
            font-weight: 500;
            border: none;
            cursor: pointer;
            transition: all 0.2s ease;
            display: inline-flex;
            align-items: center;
            gap: 6px;
        }

        .btn-update {
            background: linear-gradient(135deg, #3b82f6 0%, #6366f1 100%);
            color: white;
        }

        .btn-update:hover {
            transform: translateY(-1px);
            box-shadow: 0 4px 12px rgba(59, 130, 246, 0.3);
        }

        .btn-delete {
            background: linear-gradient(135deg, #ef4444 0%, #f87171 100%);
            color: white;
        }

        .btn-delete:hover {
            transform: translateY(-1px);
            box-shadow: 0 4px 12px rgba(239, 68, 68, 0.3);
        }

        .btn-status {
            background: linear-gradient(135deg, #10b981 0%, #34d399 100%);
            color: white;
        }

        .btn-status:hover {
            transform: translateY(-1px);
            box-shadow: 0 4px 12px rgba(16, 185, 129, 0.3);
        }

        /* Radio Button Styles */
        .radio-group {
            display: flex;
            flex-direction: column;
            gap: 8px;
            margin-bottom: 12px;
        }

        .radio-item {
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .radio-item input[type="radio"] {
            width: 16px;
            height: 16px;
            accent-color: #6366f1;
        }

        .radio-item label {
            font-size: 12px;
            color: #475569;
            cursor: pointer;
            margin: 0;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .main-container {
                padding: 16px;
            }

            .header-section {
                padding: 20px;
            }

            .header-title {
                font-size: 24px;
            }

            .table-responsive {
                border-radius: 0;
            }

            .table thead th,
            .table tbody td {
                padding: 12px 16px;
                font-size: 12px;
            }

            .btn-action {
                padding: 4px 12px;
                font-size: 11px;
            }
        }

        /* Scrollbar Styles */
        .table-responsive::-webkit-scrollbar {
            height: 8px;
        }

        .table-responsive::-webkit-scrollbar-track {
            background: #f1f5f9;
        }

        .table-responsive::-webkit-scrollbar-thumb {
            background: #cbd5e1;
            border-radius: 4px;
        }

        .table-responsive::-webkit-scrollbar-thumb:hover {
            background: #94a3b8;
        }

        /* Animation for page load */
        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .header-section,
        .table-container {
            animation: fadeInUp 0.5s ease forwards;
        }

        .table-container {
            animation-delay: 0.1s;
        }
    </style>
</head>
<body>
<div class="main-container">
    <!-- Header -->
    <div class="header-section">
        <div class="d-flex justify-content-between align-items-center">
            <h1 class="header-title">
                <div class="header-icon">
                    <i class="fas fa-cogs"></i>
                </div>
                Admin Panel
            </h1>
            <button type="button" class="btn-logout">
                <i class="fas fa-sign-out-alt"></i>
                Logout
            </button>
        </div>
    </div>

    <!-- Table Container -->
    <div class="table-container">
        <div class="table-header">
            <h2 class="table-title">Complaint Management</h2>
        </div>

        <div class="table-responsive">
            <table class="table mb-0">
                <thead>
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Complaint</th>
                    <th scope="col">Date</th>
                    <th scope="col">Status</th>
                    <th scope="col">Username</th>
                    <th scope="col">Remark</th>
                    <th scope="col">Update Remark</th>
                    <th scope="col">Update Status</th>
                    <th scope="col">Action</th>
                </tr>
                </thead>
                <tbody>
                <%
                    List<ComplaintModel> complaintList = (List<ComplaintModel>) request.getAttribute("complaintModelList");
                    for (ComplaintModel comp : complaintList) {
                %>
                <tr>
                    <td><strong><%= comp.getComplanitId() %></strong></td>
                    <td><%= comp.getComplaint() %></td>
                    <td><%= comp.getComplaintDate() %></td>
                    <td>
                        <span class="status-badge <%= comp.getStatus().toLowerCase().equals("solved") ? "status-solved" : "status-pending" %>">
                            <%= comp.getStatus() %>
                        </span>
                    </td>
                    <td><%= comp.getUsrname() %></td>
                    <td><%= comp.getRemark() %></td>
                    <td>
                        <form action="${pageContext.request.contextPath}/updateRemark" method="post">
                            <input type="hidden" name="compId" value="<%= comp.getComplanitId() %>">
                            <input type="hidden" name="complaint" value="<%= comp.getComplaint() %>">
                            <input type="hidden" name="compDate" value="<%= comp.getComplaintDate() %>">
                            <input type="hidden" name="status" value="<%= comp.getStatus() %>">
                            <input type="hidden" name="remark" value="<%= comp.getRemark() %>">
                            <input type="hidden" name="username" value="<%= comp.getUsrname() %>">
                            <button type="submit" class="btn-action btn-update">
                                <i class="fas fa-edit"></i>
                                Update
                            </button>
                        </form>
                    </td>
                    <td>
                        <form action="${pageContext.request.contextPath}/updateStatusServlet" method="post">
                            <%
                                String status = request.getParameter("status") != null ?
                                        request.getParameter("status") : "pending";
                            %>
                            <div class="radio-group">
                                <div class="radio-item">
                                    <input type="radio" id="pending_<%= comp.getComplanitId() %>" name="status" value="pending"
                                        <%= "pending".equals(status) ? "checked" : "" %>>
                                    <label for="pending_<%= comp.getComplanitId() %>">Pending</label>
                                </div>
                                <div class="radio-item">
                                    <input type="radio" id="solved_<%= comp.getComplanitId() %>" name="status" value="solved"
                                        <%= "solved".equals(status) ? "checked" : "" %>>
                                    <label for="solved_<%= comp.getComplanitId() %>">Solved</label>
                                </div>
                            </div>
                            <input type="hidden" name="compId" value="<%= comp.getComplanitId() %>">
                            <input type="hidden" name="complaint" value="<%= comp.getComplaint() %>">
                            <input type="hidden" name="compDate" value="<%= comp.getComplaintDate() %>">
                            <input type="hidden" name="remark" value="<%= comp.getRemark() %>">
                            <input type="hidden" name="username" value="<%= comp.getUsrname() %>">
                            <button type="submit" class="btn-action btn-status">
                                <i class="fas fa-sync-alt"></i>
                                Update
                            </button>
                        </form>
                    </td>
                    <td>
                        <form action="${pageContext.request.contextPath}/adminCompDelete" method="post">
                            <input type="hidden" name="compId" value="<%= comp.getComplanitId() %>">
                            <input type="hidden" name="complaint" value="<%= comp.getComplaint() %>">
                            <input type="hidden" name="compDate" value="<%= comp.getComplaintDate() %>">
                            <input type="hidden" name="status" value="<%= comp.getStatus() %>">
                            <input type="hidden" name="remark" value="<%= comp.getRemark() %>">
                            <input type="hidden" name="username" value="<%= comp.getUsrname() %>">
                            <button type="submit" class="btn-action btn-delete">
                                <i class="fas fa-trash-alt"></i>
                                Delete
                            </button>
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

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
</body>
</html>