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


    <style>


      .btn-register {
        background: #86b7fe/*linear-gradient(135deg, #667eea 0%, #764ba2 100%)*/;
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

      .btn-register::before {
        content: '';
        position: absolute;
        top: 0;
        left: -100%;
        width: 100%;
        height: 100%;
        background: linear-gradient(90deg, transparent, rgba(255,255,255,0.2), transparent);
        transition: left 0.5s;
      }

      .btn-register:hover::before {
        left: 100%;
      }

      .btn-register:hover {
        transform: translateY(-2px);
        box-shadow: 0 10px 25px rgba(102, 126, 234, 0.4);
      }

      .btn-back {
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

      .btn-back:hover {
        background: #f7fafc;
        color: #4a5568;
        border-color: #cbd5e0;
        transform: translateY(-2px);
      }



    </style>




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

          <form action="../empSignUp" method="post">


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




<%--

            <div class="form-floating mb-3">
              <input type="text"
                     class="form-control"
                     id="employee-type"
                     name="employee-type"
                     placeholder="Username"
                     required>
              <label for="employee-type">Employee Type</label>
            </div>

--%>

            <!-- Submit Button -->
            <div class="d-grid">
              <button type="submit" class="btn btn-primary btn-register">
                Create Account
              </button>
            </div>


            <div class="d-grid mt-3">
              <button <%--type="submit" --%>class="btn btn-primary btn-back" onclick="window.history.back()">
                Back
              </button>
            </div>

            <!-- Additional Links -->

<%--
            <div class="text-center mt-3">
              <p class="text-muted mb-0">
                Already have an account?
                <a href="#" class="text-decoration-none">Sign in</a>
              </p>
            </div>

            --%>

          </form>
        </div>
      </div>
    </div>
  </div>


    <script src="	https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js"></script>
  </body>
</html>
