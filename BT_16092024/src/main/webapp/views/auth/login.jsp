
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="core" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/views/auth/login.css">
</head>
<body>
<section class="login">
    <div class="container">
        <div class="login-header">
            <h2>Login</h2>
        </div>

        <form action="${pageContext.request.contextPath}/auth/login" method="POST" class="login-form">
            <div class="form-group">
                <label for="username" class="form-label">Username</label>
                <input type="text" id="username" name="username" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="password" class="form-label">Password</label>
                <input type="password" id="password" name="password" class="form-control" required>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" id="remember" name="remember">
                <label class="form-check-label" for="remember">Remember me</label>
            </div>
            <a href="forgot-password" class="forgot-password-link">Forgot password?</a>
            <button type="submit" class="btn btn-primary btn-block">Log in</button>

            <h5 class="text-success">
                <%
                    Object success = request.getSession().getAttribute("success");
                    if (success != null) {
                        out.print(success);
                        request.getSession().removeAttribute("success");
                    }
                %>
            </h5>
            <h5 class="text-danger">
                <%
                    Object alert = request.getAttribute("alert");
                    if (alert != null) {
                        out.print(alert);
                    }
                %>
            </h5>
        </form>
        <p class="text-center">Not registered? <a href="register">Create new account</a></p>
    </div>
</section>
</body>
</html>