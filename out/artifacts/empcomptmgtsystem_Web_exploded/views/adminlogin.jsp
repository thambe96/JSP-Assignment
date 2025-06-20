<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 6/17/2025
  Time: 2:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%--
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
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
                    <i class="fas fa-user-shield"></i>
                </div>
                <h2>Admin Login</h2>
                <p class="subtitle">Please sign in to access the admin panel</p>
            </div>

            <form action="adminLogin" method="get">
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
                    <button type="button" class="btn btn-cancel" onclick="window.history.back()">Cancel</button>
                </div>
            </form>
        </div>
    </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/js/bootstrap.bundle.min.js"></script>
</body>
</html>

--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            min-height: 100vh;
            font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 20px;
        }

        .login-container {
            width: 100%;
            max-width: 420px;
        }

        .login-card {
            background: #ffffff;
            border-radius: 16px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.08);
            border: 1px solid rgba(0, 0, 0, 0.05);
            padding: 40px 32px;
            transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
        }

        .login-card:hover {
            box-shadow: 0 8px 40px rgba(0, 0, 0, 0.12);
        }

        .login-header {
            text-align: center;
            margin-bottom: 32px;
        }

        .icon-container {
            width: 64px;
            height: 64px;
            background: linear-gradient(135deg, #6366f1 0%, #8b5cf6 100%);
            border-radius: 16px;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 20px;
            box-shadow: 0 4px 16px rgba(99, 102, 241, 0.3);
        }

        .icon-container i {
            font-size: 24px;
            color: white;
        }

        .login-header h2 {
            color: #1f2937;
            font-weight: 600;
            font-size: 28px;
            margin-bottom: 8px;
            letter-spacing: -0.025em;
        }

        .login-header .subtitle {
            color: #6b7280;
            font-size: 15px;
            font-weight: 400;
        }

        .form-group {
            margin-bottom: 20px;
            position: relative;
        }

        .form-control {
            width: 100%;
            height: 48px;
            padding: 12px 16px 12px 44px;
            border: 2px solid #e5e7eb;
            border-radius: 12px;
            background: #ffffff;
            font-size: 15px;
            color: #1f2937;
            transition: all 0.2s ease;
            outline: none;
        }

        .form-control:focus {
            border-color: #6366f1;
            box-shadow: 0 0 0 3px rgba(99, 102, 241, 0.1);
        }

        .form-control::placeholder {
            color: #9ca3af;
            font-weight: 400;
        }

        .input-icon {
            position: absolute;
            left: 16px;
            top: 50%;
            transform: translateY(-50%);
            color: #9ca3af;
            font-size: 16px;
            z-index: 1;
        }

        .form-control:focus + .input-icon {
            color: #6366f1;
        }

        .btn-group {
            display: flex;
            flex-direction: column;
            gap: 12px;
            margin-top: 28px;
        }

        .btn-login {
            width: 100%;
            height: 48px;
            background: linear-gradient(135deg, #6366f1 0%, #8b5cf6 100%);
            border: none;
            border-radius: 12px;
            color: white;
            font-size: 15px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.2s ease;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
        }

        .btn-login:hover {
            transform: translateY(-1px);
            box-shadow: 0 6px 20px rgba(99, 102, 241, 0.4);
        }

        .btn-login:active {
            transform: translateY(0);
        }

        .btn-cancel {
            width: 100%;
            height: 48px;
            background: transparent;
            border: 2px solid #e5e7eb;
            border-radius: 12px;
            color: #6b7280;
            font-size: 15px;
            font-weight: 500;
            cursor: pointer;
            transition: all 0.2s ease;
        }

        .btn-cancel:hover {
            background: #f9fafb;
            border-color: #d1d5db;
            color: #374151;
        }

        /* Responsive Design */
        @media (max-width: 480px) {
            body {
                padding: 16px;
            }

            .login-card {
                padding: 32px 24px;
            }

            .login-header h2 {
                font-size: 24px;
            }
        }

        /* Subtle animations */
        .form-control {
            position: relative;
        }

        .form-control:focus {
            animation: focusGlow 0.3s ease forwards;
        }

        @keyframes focusGlow {
            0% {
                box-shadow: 0 0 0 0 rgba(99, 102, 241, 0.1);
            }
            100% {
                box-shadow: 0 0 0 3px rgba(99, 102, 241, 0.1);
            }
        }

        /* Loading state for button */
        .btn-login:disabled {
            opacity: 0.7;
            cursor: not-allowed;
            transform: none;
        }
    </style>
</head>
<body>
<div class="login-container">
    <div class="login-card">
        <div class="login-header">
            <div class="icon-container">
                <i class="fas fa-user-shield"></i>
            </div>
            <h2>Admin Login</h2>
            <p class="subtitle">Please sign in to access the admin panel</p>
        </div>

        <form action="adminLogin" method="get">
            <div class="form-group">
                <input type="text" class="form-control" id="username" name="username" placeholder="Enter your username" required>
                <i class="fas fa-user input-icon"></i>
            </div>

            <div class="form-group">
                <input type="password" class="form-control" id="password" name="password" placeholder="Enter your password" required>
                <i class="fas fa-lock input-icon"></i>
            </div>

            <div class="btn-group">
                <input type="submit" class="btn-login" value="Sign In">
                <button type="button" class="btn-cancel" onclick="window.history.back()">Cancel</button>
            </div>
        </form>
    </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/js/bootstrap.bundle.min.js"></script>
</body>
</html>