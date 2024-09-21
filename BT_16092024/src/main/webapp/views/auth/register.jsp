
<html>
<head>
    <title>HTML Login Form</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/views/auth/register.css">
</head>
<body>
<div class="main">
    <h3>Have you already had an account?</h3>
    <form action="register" method="POST">
        <label for="username">Username</label>
        <input class="input-custom" type="text" id="username" name="username" placeholder="Username" required>

        <label for="fullName">Full Name</label>
        <input class="input-custom" type="text" id="fullName" name="fullName" placeholder="Full Name" required>

        <label for="email">Email</label>
        <input class="input-custom" type="text" id="email" name="email" placeholder="Email" required>

        <label for="phone">Phone Number</label>
        <input class="input-custom" type="text" id="phone" name="phone" placeholder="Phone Number" required>

        <label for="password">Password</label>
        <input class="input-custom" type="password" id="password" name="password" placeholder="Password" required>

        <label for="re-password">Re-enter Password</label>
        <input class="input-custom" type="password" id="re-password" name="re-password" placeholder="Re-enter your password" required>

        <div class="checkbox-group">
            <input type="checkbox" id="terms" name="terms" required>
            <label for="terms">I agree to all statements in <a href="terms-of-service.html">Terms of Service</a></label>
        </div>

        <div class="wrap">
            <button type="submit">Register</button>
        </div>
    </form>
    <h5 style="color: red;">
        <%
            Object alert = request.getAttribute("alert");
            if (alert != null) {
                out.print(alert);
            }
        %>
    </h5>
    <p>Already have an account? <a href="login">Log in</a></p>
</div>
</body>
</html>