
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="core" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>

<html>
<head>
    <title>Forgot password</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/views/auth/forgot-password.css">
</head>
<body>
<div class="main">
    <h1>Quên Mật Khẩu</h1>
    <form action="forgot-password" method="POST">
        <div class="form-group">
            <label for="email">Email</label>
            <input class="input-custom" type="email" id="email" name="email" placeholder="Nhập địa chỉ email" required>
        </div>

        <div class="form-group">
            <label for="password">Mật Khẩu Mới</label>
            <input class="input-custom" type="password" id="password" name="password" placeholder="Nhập mật khẩu mới" required>
        </div>

        <div class="form-group">
            <label for="re-password">Nhập Lại Mật Khẩu</label>
            <input class="input-custom" type="password" id="re-password" name="re-password" placeholder="Nhập lại mật khẩu" required>
        </div>

        <div class="wrap">
            <button type="submit" onclick="solve()">Gửi</button>
        </div>
    </form>
    <h5 style="color: red">
        <%
            Object alert = request.getAttribute("alert");
            if (alert != null) {
                out.print(alert);
            }
        %>
    </h5>
</div>

<style>
    .main {
        max-width: 400px;
        margin: auto;
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 8px;
        background-color: #f9f9f9;
    }
    h1 {
        text-align: center;
        margin-bottom: 20px;
    }
    .form-group {
        margin-bottom: 15px;
    }
    .input-custom {
        width: 100%;
        padding: 10px;
        border: 1px solid #ddd;
        border-radius: 4px;
    }
    .wrap {
        text-align: center;
    }
    button {
        padding: 10px 15px;
        border: none;
        background-color: #007bff;
        color: white;
        border-radius: 4px;
        cursor: pointer;
    }
    button:hover {
        background-color: #0056b3;
    }
</style>

</body>
</html>

