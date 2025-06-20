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
    body {
      background-color: #f8f9fa;
      color: #495057;
      font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
      min-height: 100vh;
    }

    .page-header {
      background-color: #fff;
      padding: 1.5rem 0;
      margin-bottom: 2rem;
      box-shadow: 0 2px 4px rgba(0,0,0,0.1);
      border-bottom: 1px solid #e9ecef;
    }

    .page-title {
      font-size: 1.75rem;
      font-weight: 600;
      margin: 0;
      color: #495057;
    }

    .page-subtitle {
      color: #6c757d;
      font-size: 0.95rem;
      margin-top: 0.25rem;
      margin-bottom: 0;
    }

    .logout-btn {
      background-color: #6c757d;
      border: none;
      color: white;
      padding: 0.5rem 1.25rem;
      border-radius: 6px;
      font-size: 0.9rem;
      font-weight: 500;
      transition: all 0.2s ease;
    }

    .logout-btn:hover {
      background-color: #5a6268;
      color: white;
    }

    .form-card, .table-card {
      background: white;
      border-radius: 8px;
      padding: 1.5rem;
      box-shadow: 0 2px 4px rgba(0,0,0,0.1);
      border: 1px solid #e9ecef;
      margin-bottom: 1.5rem;
    }

    .card-title {
      color: #495057;
      font-weight: 600;
      font-size: 1.1rem;
      margin-bottom: 1.25rem;
      display: flex;
      align-items: center;
      gap: 0.5rem;
    }

    .card-title i {
      color: #6c757d;
    }

    .form-floating > .form-control {
      border: 1px solid #ced4da;
      border-radius: 6px;
      transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
      background-color: #fff;
    }

    .form-floating > .form-control:focus {
      border-color: #86b7fe;
      box-shadow: 0 0 0 0.25rem rgba(13, 110, 253, 0.25);
    }

    .form-floating > label {
      color: #6c757d;
    }

    .form-control:read-only {
      background-color: #f8f9fa;
      color: #6c757d;
      border-color: #e9ecef;
    }

    .btn-lodge {
      background-color: #198754;
      border-color: #198754;
      color: white;
      padding: 0.75rem 1.5rem;
      border-radius: 6px;
      font-weight: 500;
      transition: all 0.2s ease;
    }

    .btn-lodge:hover {
      background-color: #157347;
      border-color: #146c43;
      color: white;
    }

    .table {
      margin: 0;
      font-size: 0.9rem;
    }

    .table thead th {
      background-color: #f8f9fa;
      color: #495057;
      border-bottom: 2px solid #dee2e6;
      font-weight: 600;
      font-size: 0.85rem;
      padding: 0.75rem;
    }

    .table tbody td {
      padding: 0.75rem;
      border-color: #e9ecef;
      vertical-align: middle;
    }

    .table tbody tr:hover {
      background-color: #f8f9fa;
    }

    .btn-update, .btn-delete {
      padding: 0.375rem 0.75rem;
      font-size: 0.8rem;
      border-radius: 4px;
      border: none;
      font-weight: 500;
      transition: all 0.2s ease;
    }

    .btn-update {
      background-color: #0d6efd;
      color: white;
    }

    .btn-update:hover {
      background-color: #0b5ed7;
      color: white;
    }

    .btn-delete {
      background-color: #dc3545;
      color: white;
    }

    .btn-delete:hover {
      background-color: #bb2d3b;
      color: white;
    }

    .empty-state {
      text-align: center;
      padding: 2rem;
      color: #6c757d;
    }

    .empty-state i {
      font-size: 3rem;
      margin-bottom: 1rem;
      opacity: 0.5;
    }

    @media (max-width: 768px) {
      .form-card, .table-card {
        padding: 1rem;
      }

      .page-title {
        font-size: 1.5rem;
      }

      .table {
        font-size: 0.8rem;
      }

      .table thead th,
      .table tbody td {
        padding: 0.5rem;
      }
    }

    .status-badge {
      padding: 0.25rem 0.75rem;
      border-radius: 12px;
      font-size: 0.75rem;
      font-weight: 500;
      text-transform: capitalize;
    }

    .status-pending {
      background-color: #fff3cd;
      color: #664d03;
      border: 1px solid #ffecb5;
    }

    .status-resolved {
      background-color: #d1e7dd;
      color: #0f5132;
      border: 1px solid #badbcc;
    }

    .status-investigating {
      background-color: #cff4fc;
      color: #055160;
      border: 1px solid #b6effb;
    }
  </style>
</head>
<body>
<!-- Page Header -->
<div class="page-header">
  <div class="container">
    <div class="d-flex justify-content-between align-items-center">
      <div>
        <h1 class="page-title">
          <i class="fas fa-clipboard-list me-2"></i>
          Complaint Management
        </h1>
        <p class="page-subtitle">Submit, track, and manage your complaints efficiently</p>
      </div>


      <a href="http://localhost:8080/empcomptmgtsystem_Web_exploded/loadPage?rolepage=Employee+Login">
        <button type="submit" class="logout-btn">
          <i class="fas fa-sign-out-alt me-1"></i>
          Logout
        </button>

      </a>




    </div>
  </div>
</div>

<div class="container">
  <div class="row">
    <!-- Complaint Form -->
    <div class="col-lg-5 mb-4">
      <div class="form-card">
        <h3 class="card-title">
          <i class="fas fa-plus-circle"></i>
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
            <label for="username">
              <i class="fas fa-user me-2"></i>User Name
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

          <div class="d-grid">
            <button type="submit" class="btn btn-lodge">
              <i class="fas fa-paper-plane me-2"></i>Lodge Complaint
            </button>
          </div>
        </form>
      </div>
    </div>

    <!-- Complaints Table -->
    <div class="col-lg-7">
      <div class="table-card">
        <h3 class="card-title">
          <i class="fas fa-list"></i>
          Your Complaints
        </h3>

        <div class="table-responsive">
          <table class="table table-hover">
            <thead>
            <tr>
              <th>ID</th>
              <th>Complaint</th>
              <th>Status</th>
              <th>Date</th>
              <th>Remark</th>
              <th>Update</th>
              <th>Delete</th>
            </tr>
            </thead>
            <tbody>
            <%
              List<ComplaintModel> complaintList = (List<ComplaintModel>) request.getAttribute("complaintList");

              if (complaintList != null && !complaintList.isEmpty()) {
                for (ComplaintModel comp : complaintList) {
            %>
            <tr>
              <td><%=comp.getComplanitId()%></td>
              <td><%=comp.getComplaint()%></td>
              <td>
                <span class="status-badge status-<%=comp.getStatus().toLowerCase()%>">
                  <%=comp.getStatus()%>
                </span>
              </td>
              <td><%=comp.getComplaintDate()%></td>
              <td><%=comp.getRemark()%></td>
              <td>
                <form action="${pageContext.request.contextPath}/compUpdate" method="post" style="display: inline;">
                  <input type="hidden" name="compId" value="<%=comp.getComplanitId()%>">
                  <input type="hidden" name="complaint" value="<%=comp.getComplaint()%>">
                  <input type="hidden" name="compDate" value="<%=comp.getComplaintDate()%>">
                  <%System.out.println("Inside complaint.jsp line 485 :: " + comp.getStatus());%>
                  <input type="hidden" name="status" value="<%=comp.getStatus()%>">
                  <input type="hidden" name="remark" value="<%=comp.getRemark()%>">
                  <input type="hidden" name="username" value="<%=comp.getUsrname()%>">
                  <button type="submit" class="btn btn-update">
                    <i class="fas fa-edit"></i> Update
                  </button>
                </form>
              </td>
              <td>
                <form action="${pageContext.request.contextPath}/compDelete" method="post" style="display: inline;">
                  <input type="hidden" name="compId" value="<%=comp.getComplanitId()%>">
                  <input type="hidden" name="complaint" value="<%=comp.getComplaint()%>">
                  <input type="hidden" name="compDate" value="<%=comp.getComplaintDate()%>">
                  <input type="hidden" name="status" value="<%=comp.getStatus()%>">
                  <input type="hidden" name="remark" value="<%=comp.getRemark()%>">
                  <input type="hidden" name="username" value="<%=comp.getUsrname()%>">
                  <button type="submit" class="btn btn-delete" onclick="return confirm('Are you sure you want to delete this complaint?')">
                    <i class="fas fa-trash"></i> Delete
                  </button>
                </form>
              </td>
            </tr>
            <%
              }
            } else {
            %>
            <tr>
              <td colspan="7" class="empty-state">
                <i class="fas fa-inbox"></i>
                <p>No complaints found</p>
              </td>
            </tr>
            <%
              }
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


<%--

<script>
  function logout() {
    if (confirm('Are you sure you want to logout?')) {
      // Replace with your logout URL
      window.location.href = '${pageContext.request.contextPath}/logout';
    }
  }
</script>

--%>


</body>
</html>
