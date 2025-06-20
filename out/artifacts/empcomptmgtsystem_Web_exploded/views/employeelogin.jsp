<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 6/17/2025
  Time: 10:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%--
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>emp-login</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .login-container {
            max-width: 400px;
            margin: 0 auto;
            padding: 2rem;
        }

        .login-card {
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(10px);
            border-radius: 20px;
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.1);
            border: 1px solid rgba(255, 255, 255, 0.2);
            padding: 3rem 2.5rem;
            transition: transform 0.3s ease;
        }

        .login-card:hover {
            transform: translateY(-5px);
        }

        .login-header {
            text-align: center;
            margin-bottom: 2.5rem;
        }

        .login-header h2 {
            color: #4a5568;
            font-weight: 600;
            margin-bottom: 0.5rem;
            font-size: 2rem;
        }

        .login-header .subtitle {
            color: #718096;
            font-size: 0.95rem;
        }

        .form-floating {
            margin-bottom: 1.5rem;
        }

        .form-floating > .form-control {
            border: 2px solid #e2e8f0;
            border-radius: 12px;
            padding: 1rem 0.75rem;
            height: 3.5rem;
            background: rgba(255, 255, 255, 0.9);
            transition: all 0.3s ease;
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

        .btn-login {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            border: none;
            border-radius: 12px;
            padding: 0.875rem 2rem;
            font-weight: 600;
            font-size: 1rem;
            color: white;
            width: 100%;
            margin-bottom: 1rem;
            transition: all 0.3s ease;
            position: relative;
            overflow: hidden;
        }

        .btn-login::before {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: linear-gradient(90deg, transparent, rgba(255,255,255,0.2), transparent);
            transition: left 0.5s;
        }

        .btn-login:hover::before {
            left: 100%;
        }

        .btn-login:hover {
            transform: translateY(-2px);
            box-shadow: 0 10px 25px rgba(102, 126, 234, 0.4);
        }

        .btn-cancel {
            background: transparent;
            color: #718096;
            border: 2px solid #e2e8f0;
            border-radius: 12px;
            padding: 0.875rem 2rem;
            font-weight: 600;
            font-size: 1rem;
            width: 100%;
            transition: all 0.3s ease;
        }

        .btn-cancel:hover {
            background: #f7fafc;
            color: #4a5568;
            border-color: #cbd5e0;
            transform: translateY(-2px);
        }

        .icon-container {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            width: 70px;
            height: 70px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 1.5rem auto;
            box-shadow: 0 10px 30px rgba(102, 126, 234, 0.3);
        }

        .icon-container i {
            font-size: 1.8rem;
            color: white;
        }

        @media (max-width: 576px) {
            .login-container {
                padding: 1rem;
            }

            .login-card {
                padding: 2rem 1.5rem;
            }
        }
    </style>
</head>
<body>
<div class="container-fluid d-flex align-items-center justify-content-center min-vh-100">
    <div class="login-container">
        <div class="login-card">
            <div class="login-header">
                <div class="icon-container">
&lt;%&ndash;                    <i class="fas fa-user-shield"></i>&ndash;%&gt;
                        <i class="fa-solid fa-user fa-shake"></i>
                </div>
                <h2>Employee Login</h2>
                <p class="subtitle">Please log in to lodge a complaint</p>
            </div>

            <form action="empSignUp" method="get">
                <div class="form-floating">
                    <input type="text" class="form-control" id="username" name="username" placeholder="Username" required>
                    <label for="username"><i class="fas fa-user me-2"></i>Username</label>
                </div>

                <div class="form-floating">
                    <input type="password" class="form-control" id="password" name="password" placeholder="Password" required>
                    <label for="password"><i class="fas fa-lock me-2"></i>Password</label>
                </div>

                <div class="d-grid gap-2">
                    <input type="submit" class="btn btn-login" value="Login">
                    <a href="http://localhost:8080/empcomptmgtsystem_Web_exploded/views/employeeregister.jsp" target="_self"><button type="button" class="btn btn-cancel">Register</button></a>
                </div>
            </form>
        </div>
    </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/js/bootstrap.bundle.min.js"></script>
</body>
</html>--%>









<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Login</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(135deg, #f8f9fa 0%, #e9ecef 100%);
            min-height: 100vh;
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
            color: #495057;
        }

        .login-container {
            max-width: 420px;
            margin: 0 auto;
            padding: 2rem;
        }

        .login-card {
            background: white;
            border-radius: 12px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            border: 1px solid #e9ecef;
            padding: 2.5rem 2rem;
            transition: box-shadow 0.3s ease;
        }

        .login-card:hover {
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
        }

        .login-header {
            text-align: center;
            margin-bottom: 2rem;
        }

        .login-header h2 {
            color: #495057;
            font-weight: 600;
            margin-bottom: 0.5rem;
            font-size: 1.75rem;
        }

        .login-header .subtitle {
            color: #6c757d;
            font-size: 0.95rem;
            margin-bottom: 0;
        }

        .form-floating {
            margin-bottom: 1.25rem;
        }

        .form-floating > .form-control {
            border: 1px solid #ced4da;
            border-radius: 8px;
            padding: 1rem 0.75rem;
            height: 3.5rem;
            background: #fff;
            transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
        }

        .form-floating > .form-control:focus {
            border-color: #86b7fe;
            box-shadow: 0 0 0 0.25rem rgba(13, 110, 253, 0.25);
        }

        .form-floating > label {
            color: #6c757d;
            padding: 1rem 0.75rem;
        }

        .btn-login {
            background-color: #0d6efd;
            border-color: #0d6efd;
            border-radius: 8px;
            padding: 0.75rem 2rem;
            font-weight: 500;
            font-size: 1rem;
            color: white;
            width: 100%;
            margin-bottom: 0.75rem;
            transition: all 0.2s ease;
        }

        .btn-login:hover {
            background-color: #0b5ed7;
            border-color: #0a58ca;
            color: white;
        }

        .btn-register {
            background-color: #6c757d;
            border-color: #6c757d;
            color: white;
            border-radius: 8px;
            padding: 0.75rem 2rem;
            font-weight: 500;
            font-size: 1rem;
            width: 100%;
            margin-bottom: 0.75rem;
            transition: all 0.2s ease;
            text-decoration: none;
            display: inline-block;
            text-align: center;
        }

        .btn-register:hover {
            background-color: #5a6268;
            border-color: #545b62;
            color: white;
            text-decoration: none;
        }

        .btn-cancel {
            background-color: transparent;
            color: #6c757d;
            border: 1px solid #ced4da;
            border-radius: 8px;
            padding: 0.75rem 2rem;
            font-weight: 500;
            font-size: 1rem;
            width: 100%;
            transition: all 0.2s ease;
        }

        .btn-cancel:hover {
            background-color: #f8f9fa;
            color: #495057;
            border-color: #adb5bd;
        }

        .icon-container {
            background-color: #e9ecef;
            width: 64px;
            height: 64px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 1.5rem auto;
        }

        .icon-container i {
            font-size: 1.5rem;
            color: #6c757d;
        }

        .divider {
            text-align: center;
            margin: 1rem 0;
            color: #6c757d;
            font-size: 0.875rem;
        }

        .divider::before,
        .divider::after {
            content: '';
            display: inline-block;
            width: 45%;
            height: 1px;
            background-color: #dee2e6;
            vertical-align: middle;
        }

        .divider::before {
            margin-right: 0.5rem;
        }

        .divider::after {
            margin-left: 0.5rem;
        }

        @media (max-width: 576px) {
            .login-container {
                padding: 1rem;
            }

            .login-card {
                padding: 2rem 1.5rem;
            }

            .login-header h2 {
                font-size: 1.5rem;
            }
        }
    </style>
</head>
<body>
<div class="container-fluid d-flex align-items-center justify-content-center min-vh-100">
    <div class="login-container">
        <div class="login-card">
            <div class="login-header">
                <div class="icon-container">
                    <i class="fa-solid fa-user"></i>
                </div>
                <h2>Employee Login</h2>
                <p class="subtitle">Please log in to lodge a complaint</p>
            </div>

            <form action="empSignUp" method="get">
                <div class="form-floating">
                    <input type="text" class="form-control" id="username" name="username" placeholder="Username" required>
                    <label for="username"><i class="fas fa-user me-2"></i>Username</label>
                </div>

                <div class="form-floating">
                    <input type="password" class="form-control" id="password" name="password" placeholder="Password" required>
                    <label for="password"><i class="fas fa-lock me-2"></i>Password</label>
                </div>

                <div class="d-grid gap-2">
                    <input type="submit" class="btn btn-login" value="Login">
                </div>
            </form>

            <div class="divider">or</div>

            <div class="d-grid gap-2">
                <a href="http://localhost:8080/empcomptmgtsystem_Web_exploded/views/employeeregister.jsp" class="btn btn-register">
                    <i class="fas fa-user-plus me-2"></i>Register
                </a>
                <button type="button" class="btn btn-cancel" onclick="goBack()">
                    <i class="fas fa-arrow-left me-2"></i>Cancel
                </button>
            </div>
        </div>
    </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/js/bootstrap.bundle.min.js"></script>
<script>
    function goBack() {
        if (confirm('Are you sure you want to cancel?')) {
            window.history.back();
        }
    }
</script>
</body>
</html>