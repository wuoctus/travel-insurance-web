<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bảo hiểm du lịch - Travel Insurance</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
</head>
<body>
<div class="login-container">

    <input type="radio" name="formToggle" id="showLogin" ${empty showRegister ? 'checked' : ''} hidden>
    <input type="radio" name="formToggle" id="showRegister" ${not empty showRegister ? 'checked' : ''} hidden>
    <input type="radio" name="formToggle" id="showForgot" hidden>

    <form id="loginForm" class="form" action="login" method="post">
        <input type="hidden" name="action" value="login">
        <img src="${pageContext.request.contextPath}/image/travel-insurance.png" alt="Travel Insurance Logo"

             class="logo-insurance">
        <%--        <c:if test="${not empty company.image}">--%>
        <%--            <img src="${pageContext.request.contextPath}/image/${company.image}"--%>
        <%--                 alt="Travel Insurance Logo" class="logo-insurance">--%>
        <%--        </c:if>--%>

        <p>Travel Insurance - Secure Your Journey</p>

        <c:if test="${not empty sessionScope.loginError}">
            <div class="alert alert-danger"
                 style="color: red; background: #fee2e2; padding: 10px; border-radius: 5px; margin-bottom: 15px;">
                    ${sessionScope.loginError}
            </div>
            <%-- Xóa lỗi ngay sau khi hiển thị để không lặp lại khi F5 --%>
            <c:remove var="loginError" scope="session"/>
        </c:if>

        <div class="input-group">
            <input type="text" name="name" placeholder="Tên đăng nhập" required>
        </div>

        <div class="input-group">
            <input type="password" name="password" placeholder="Mật khẩu" required>
        </div>

        <button type="submit" class="btn-login">Đăng nhập</button>

        <%--        <div class="options" style="margin-top: 15px; display: flex; justify-content: space-between;">--%>
        <%--            <label for="showForgot" class="link-style" style="cursor: pointer; color: blue;">Quên mật khẩu?</label>--%>
        <%--            &lt;%&ndash; <label for="showRegister" class="link-style">Đăng ký</label> &ndash;%&gt;--%>
        <%--        </div>--%>
    </form>

</div>
<%-- Script nhỏ để hỗ trợ chuyển đổi form nếu CSS chưa xử lý hết --%>

</body>
</html>