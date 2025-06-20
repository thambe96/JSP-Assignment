<%@ page import="edu.lk.ijse.gdse.model.ComplaintModel" %><%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 6/20/2025
  Time: 6:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%

  ComplaintModel complaintModel = (ComplaintModel) request.getAttribute("complaintModel");





%>




<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Update Remark</title>
  <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      background-color: #f8f9fa;
      color: #495057;
    }
    .container {
      max-width: 600px;
    }
    .form-floating textarea {
      min-height: 120px;
      resize: vertical;
    }
    .btn-primary {
      background-color: #6c757d;
      border-color: #6c757d;
    }
    .btn-primary:hover {
      background-color: #5a6268;
      border-color: #545b62;
    }
  </style>
</head>
<body>
<div class="container mt-5">
  <div class="row justify-content-center">
    <div class="col-md-8">
      <div class="card shadow-sm border-0">
        <div class="card-body p-4">
          <h4 class="card-title text-center mb-4 text-muted">Update Remark</h4>

          <form method="post" action="updateRemarkController">
            <div class="form-floating mb-3">
                                <textarea
                                        class="form-control"
                                        id="updateComplaint"
                                        name="updateRemark"
                                        placeholder="Enter your complaint remark..."
                                        required></textarea>
              <label for="updateComplaint">Update Remark</label>

              <input type="hidden" name="compId" value="<%= complaintModel.getComplanitId() %>">

              <input type="hidden" name="complaint" value="<%= complaintModel.getComplaint() %>">

              <input type="hidden" name="compDate" value="<%= complaintModel.getComplaintDate() %>">

              <input type="hidden" name="status" value="<%= complaintModel.getStatus() %>">

              <input type="hidden" name="remark" value="<%= complaintModel.getRemark() %>">

              <input type="hidden" name="username" value="<%= complaintModel.getUsrname() %>">




            </div>

            <div class="d-grid">
              <button type="submit" class="btn btn-primary py-2">Submit</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
</body>
</html>