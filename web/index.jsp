<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 6/16/2025
  Time: 8:00 PM
  To change this template use File | Settings | File Templates.
--%>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Complaint Management System</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(135deg, #f8f9fa 0%, #e9ecef 100%);
            min-height: 100vh;
            color: #495057;
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
        }

        .main-container {
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .welcome-card {
            background: white;
            border-radius: 16px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            padding: 3rem;
            max-width: 480px;
            width: 100%;
            text-align: center;
            border: none;
        }

        .system-title {
            color: #495057;
            font-weight: 600;
            font-size: 1.8rem;
            margin-bottom: 0.5rem;
            letter-spacing: -0.5px;
        }

        .system-subtitle {
            color: #6c757d;
            font-size: 1rem;
            margin-bottom: 2.5rem;
            font-weight: 400;
        }

        .login-btn {
            background-color: #6c757d;
            border: none;
            border-radius: 8px;
            padding: 0.875rem 2rem;
            font-weight: 500;
            font-size: 1rem;
            color: white;
            transition: all 0.3s ease;
            width: 100%;
            margin-bottom: 1rem;
        }

        .login-btn:hover {
            background-color: #5a6268;
            transform: translateY(-1px);
            box-shadow: 0 4px 12px rgba(106, 117, 125, 0.3);
            color: white;
        }

        .login-btn:active {
            transform: translateY(0);
        }

        .btn-employee {
            background-color: #6c757d;
        }

        .btn-employee:hover {
            background-color: #5a6268;
        }

        .btn-admin {
            background-color: #495057;
        }

        .btn-admin:hover {
            background-color: #343a40;
        }

        .divider {
            margin: 1.5rem 0;
            color: #dee2e6;
            font-size: 0.875rem;
        }

        @media (max-width: 576px) {
            .welcome-card {
                padding: 2rem 1.5rem;
                margin: 1rem;
            }

            .system-title {
                font-size: 1.5rem;
            }
        }
    </style>
</head>
<body>
<div class="main-container">
    <div class="welcome-card">
        <h1 class="system-title">Welcome</h1>
        <p class="system-subtitle">Employee Complaint Management System</p>

        <form action="loadPage" method="get" class="mb-3">
            <input type="submit" name="rolepage" value="Employee Login" class="login-btn btn-employee" />
        </form>

        <div class="divider">or</div>

        <form action="loadPage" method="get">
            <input type="submit" name="rolepage" value="Admin Login" class="login-btn btn-admin" />
        </form>
    </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
</body>
</html>



























