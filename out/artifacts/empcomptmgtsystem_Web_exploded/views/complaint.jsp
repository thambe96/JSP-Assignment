<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 6/18/2025
  Time: 10:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="edu.lk.ijse.gdse.model.ComplaintModel" %>


<%


  LocalDate currentDate = LocalDate.now();
  // Define the desired date format for the input type="date"
  DateTimeFormatter inputFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
  // Format the LocalDate to a String in the correct format
  String formattedDate = currentDate.format(inputFormatter);





  String nextComplaintId = (String)request.getAttribute("nextComplaintId");
  request.removeAttribute("nextComplaintId");
//  String username = (String)request.getAttribute("username");

  String username = (String)session.getAttribute("username");


%>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Complaint Management</title>
  <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">


  <style>
    :root {
      --primary-gradient: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
      --secondary-gradient: linear-gradient(135deg, #f093fb 0%, #f5576c 100%);
      --success-gradient: linear-gradient(135deg, #4facfe 0%, #00f2fe 100%);
      --warning-gradient: linear-gradient(135deg, #ffecd2 0%, #fcb69f 100%);
      --card-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
      --hover-shadow: 0 15px 40px rgba(0, 0, 0, 0.15);
    }

    body {
      background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      min-height: 100vh;
    }

    .page-header {
      background: var(--primary-gradient);
      color: white;
      padding: 2rem 0;
      margin-bottom: 2rem;
      border-radius: 0 0 30px 30px;
      box-shadow: var(--card-shadow);
    }

    .page-title {
      font-size: 2.5rem;
      font-weight: 700;
      margin: 0;
      text-align: center;
    }

    .page-subtitle {
      text-align: center;
      opacity: 0.9;
      font-size: 1.1rem;
      margin-top: 0.5rem;
    }

    .form-card {
      background: white;
      border-radius: 20px;
      padding: 2.5rem;
      box-shadow: var(--card-shadow);
      border: none;
      transition: all 0.3s ease;
      margin-bottom: 2rem;
    }

    .form-card:hover {
      box-shadow: var(--hover-shadow);
      transform: translateY(-2px);
    }

    .card-title {
      color: #4a5568;
      font-weight: 600;
      font-size: 1.5rem;
      margin-bottom: 1.5rem;
      display: flex;
      align-items: center;
      gap: 0.5rem;
    }

    .form-floating > .form-control {
      border: 2px solid #e2e8f0;
      border-radius: 12px;
      padding: 1rem 0.75rem;
      transition: all 0.3s ease;
      background: rgba(255, 255, 255, 0.9);
    }

    .form-floating > .form-control:focus {
      border-color: #667eea;
      box-shadow: 0 0 0 0.2rem rgba(102, 126, 234, 0.25);
      background: white;
    }

    .form-floating > label {
      color: #718096;
      padding: 1rem 0.75rem;
    }

    .form-control:read-only {
      background-color: #f8f9fa;
      color: #6c757d;
      border-color: #dee2e6;
    }

    .btn-group-custom {
      display: flex;
      gap: 1rem;
      margin-top: 1.5rem;
    }

    .btn-lodge {
      background: var(--success-gradient);
      border: none;
      color: white;
      padding: 0.75rem 2rem;
      border-radius: 12px;
      font-weight: 600;
      transition: all 0.3s ease;
      position: relative;
      overflow: hidden;
    }

    .btn-update {
      background: var(--primary-gradient);
      border: none;
      color: white;
      padding: 0.75rem 2rem;
      border-radius: 12px;
      font-weight: 600;
      transition: all 0.3s ease;
    }

    .btn-delete {
      background: var(--secondary-gradient);
      border: none;
      color: white;
      padding: 0.75rem 2rem;
      border-radius: 12px;
      font-weight: 600;
      transition: all 0.3s ease;
    }

    .btn-lodge:hover, .btn-update:hover, .btn-delete:hover {
      transform: translateY(-2px);
      box-shadow: 0 8px 25px rgba(0, 0, 0, 0.2);
    }

    .table-card {
      background: white;
      border-radius: 20px;
      padding: 2rem;
      box-shadow: var(--card-shadow);
      border: none;
    }

    .table {
      margin: 0;
      border-radius: 12px;
      overflow: hidden;
    }

    .table thead th {
      background: var(--primary-gradient);
      color: white;
      border: none;
      padding: 1rem;
      font-weight: 600;
      text-transform: uppercase;
      font-size: 0.85rem;
      letter-spacing: 0.5px;
    }

    .table tbody td {
      padding: 1rem;
      border-color: #f1f5f9;
      vertical-align: middle;
    }

    .table tbody tr {
      transition: all 0.3s ease;
    }

    .table tbody tr:hover {
      background-color: #f8fafc;
      transform: scale(1.01);
    }

    .status-badge {
      padding: 0.4rem 1rem;
      border-radius: 20px;
      font-size: 0.8rem;
      font-weight: 600;
      text-transform: uppercase;
      letter-spacing: 0.5px;
    }

    .status-pending {
      background: linear-gradient(135deg, #ffeaa7 0%, #fab1a0 100%);
      color: #e17055;
    }

    .status-resolved {
      background: linear-gradient(135deg, #00b894 0%, #00cec9 100%);
      color: white;
    }

    .status-investigating {
      background: linear-gradient(135deg, #74b9ff 0%, #0984e3 100%);
      color: white;
    }

    .empty-state {
      text-align: center;
      padding: 3rem;
      color: #718096;
    }

    .empty-state i {
      font-size: 4rem;
      margin-bottom: 1rem;
      opacity: 0.5;
    }

    @media (max-width: 768px) {
      .form-card {
        padding: 1.5rem;
      }

      .btn-group-custom {
        flex-direction: column;
      }

      .page-title {
        font-size: 2rem;
      }

      .table-responsive {
        border-radius: 12px;
      }
    }

    .action-buttons {
      display: flex;
      gap: 0.5rem;
    }

    .btn-sm-custom {
      padding: 0.4rem 0.8rem;
      font-size: 0.8rem;
      border-radius: 8px;
      border: none;
      font-weight: 600;
      transition: all 0.3s ease;
    }

    .btn-edit {
      background: linear-gradient(135deg, #fd79a8 0%, #e84393 100%);
      color: white;
    }

    .btn-remove {
      background: linear-gradient(135deg, #636e72 0%, #2d3436 100%);
      color: white;
    }

    .btn-edit:hover, .btn-remove:hover {
      transform: translateY(-1px);
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
    }
  </style>




</head>
<body>
<!-- Page Header -->


<div class="page-header">
  <div class="container">
    <h1 class="page-title">
      <i class="fas fa-clipboard-list me-3"></i>
      Complaint Management
    </h1>
    <p class="page-subtitle">Submit, track, and manage your complaints efficiently</p>
  </div>
</div>

<div class="container">
  <div class="row">
    <!-- Complaint Form -->
    <div class="col-lg-5 mb-4">
      <div class="form-card">
        <h3 class="card-title">
          <i class="fas fa-plus-circle text-primary"></i>
          Lodge Complaint
        </h3>

        <form action="${pageContext.request.contextPath}/complaint" method="post" id="complaintForm">

          <input type="hidden" name="action" value="lodge" id="formAction">

          <div class="form-floating mb-3">
            <input type="text" class="form-control" id="complaintId" name="complaintId"
                   value="<%=nextComplaintId%>" readonly>
            <label for="complaintId">
              <i class="fas fa-hashtag me-2"></i>Complaint ID
            </label>
          </div>


          <div class="form-floating mb-3">
            <input type="text" class="form-control" id="username" name="username"
                   value="<%=username%>" readonly>
            <label for="complaintId">
              <i class="fas fa-hashtag me-2"></i>User Name
            </label>
          </div>


          <div class="form-floating mb-3">
            <input type="date" class="form-control" id="date" name="date"
                   value="<%=formattedDate%>" readonly>
            <label for="date">
              <i class="fas fa-calendar me-2"></i>Date
            </label>
          </div>

          <div class="form-floating mb-3">
                            <textarea class="form-control" id="complaint" name="complaint"
                                      style="height: 120px" placeholder="Describe your complaint..." required>${complaint != null ? complaint.description : ''}</textarea>
            <label for="complaint">
              <i class="fas fa-comment-alt me-2"></i>Complaint Description
            </label>
          </div>

          <div class="btn-group-custom">


            <button type="submit" class="btn btn-lodge flex-fill" >
              <i class="fas fa-paper-plane me-2"></i>Lodge
            </button>


          </div>

        </form>




<%--

        <form action="">

          <div class="btn-group-custom">

            <button type="submit" class="btn btn-update flex-fill")>
              <i class="fas fa-edit me-2"></i>Update
            </button>

          </div>

        </form>


       --%>



<%--

        <form action="">

          <div class="btn-group-custom">
            <button type="submit" class="btn btn-delete flex-fill")>
              <i class="fas fa-trash me-2"></i>Delete
            </button>
          </div>


        </form>


      --%>




      </div>
    </div>

    <!-- Complaints Table -->
    <div class="col-lg-7">
      <div class="table-card">
        <h3 class="card-title">
          <i class="fas fa-list text-primary"></i>
          Your Complaints
        </h3>

        <div class="table-responsive">
          <table class="table table-hover">
            <thead>
            <tr>
              <th><i class="fas fa-hashtag me-2"></i>ID</th>
              <th><i class="fas fa-comment me-2"></i>Complaint</th>
              <th><i class="fas fa-info-circle me-2"></i>Status</th>
              <th><i class="fas fa-calendar me-2"></i>Date</th>
              <th><i class="fa-solid fa-asterisk me-2"></i>Remark</th>
              <th><i class="fas fa-cog me-2"></i>Update</th>
              <th><i class="fas fa-cog me-2"></i>Delete</th>
            </tr>
            </thead>
            <tbody>


            <%

              List<ComplaintModel> complaintList = (List<ComplaintModel>) request.getAttribute("complaintList");

              for (ComplaintModel comp : complaintList) {

            %>

            <tr>

              <td><%= comp.getComplanitId() %></td>

              <td><%= comp.getComplaint() %></td>

              <td><%= comp.getStatus() %></td>

              <td><%= comp.getComplaintDate() %></td>

              <td><%= comp.getRemark() %></td>


              <td>

                <!-- Form for each row -->

                <form action="${pageContext.request.contextPath}/compUpdate" method="post">

                  <input type="hidden" name="compId" value="<%= comp.getComplanitId() %>">

                  <input type="hidden" name="complaint" value="<%= comp.getComplaint() %>">

                  <input type="hidden" name="compDate" value="<%= comp.getComplaintDate() %>">

                  <%System.out.println("Inside complaint.jsp line 485 :: " + comp.getStatus());%>


                  <input type="hidden" name="status" value="<%= comp.getStatus() %>">

                  <% //  error fixed here "stats" replaced by "status" %>

                  <input type="hidden" name="remark" value="<%= comp.getRemark() %>">

                  <input type="hidden" name="username" value="<%= comp.getUsrname() %>">

                  <button type="submit">Update</button>

                </form>

              </td>



              <td>

                <!-- Form for each row -->

                <form action="${pageContext.request.contextPath}/compDelete" method="post">

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

<!-- Bootstrap JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/js/bootstrap.bundle.min.js"></script>


</body>
</html>