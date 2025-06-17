<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 6/16/2025
  Time: 4:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css">
  </head>
  <body>
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-md-6 col-lg-5">
        <div class="form-container p-5">
          <div class="text-center mb-4">
            <h2 class="form-title">Employee Registration</h2>
            <p class="text-muted">Create your account</p>
          </div>

          <form action="register.jsp" method="POST">
            <!-- Username Field -->
            <div class="form-floating mb-3">
              <input type="text"
                     class="form-control"
                     id="username"
                     name="username"
                     placeholder="Username"
                     required>
              <label for="username">Username</label>
            </div>

            <!-- Email Field -->
            <div class="form-floating mb-3">
              <input type="email"
                     class="form-control"
                     id="email"
                     name="email"
                     placeholder="name@example.com"
                     required>
              <label for="email">Email Address</label>
            </div>

            <!-- Password Field -->
            <div class="form-floating mb-4">
              <input type="password"
                     class="form-control"
                     id="password"
                     name="password"
                     placeholder="Password"
                     required>
              <label for="password">Password</label>
            </div>


            <div class="form-floating mb-3">
              <input type="text"
                     class="form-control"
                     id="employee-type"
                     name="employee-type"
                     placeholder="Username"
                     required>
              <label for="employee-type">Employee Type</label>
            </div>


            <!-- Submit Button -->
            <div class="d-grid">
              <button type="submit" class="btn btn-primary btn-custom">
                Create Account
              </button>
            </div>

            <!-- Additional Links -->
            <div class="text-center mt-3">
              <p class="text-muted mb-0">
                Already have an account?
                <a href="#" class="text-decoration-none">Sign in</a>
              </p>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>


    <script src="	https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js"></script>
  </body>
</html>
