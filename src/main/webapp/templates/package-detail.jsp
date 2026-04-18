<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>

<html lang="en">


<head>

    <meta charset="UTF-8">

    <title>Chi Tiết Gói Bảo Hiểm - Travel Insurance</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"/>

    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&family=Roboto:ital,wght@0,100..900;1,100..900&display=swap"
          rel="stylesheet">

    <link rel="stylesheet"

          href="${pageContext.request.contextPath}/css/package-detail.css">

</head>


<body>


<header class="header">
    <div class="container-header">
        <div href="#home" class="logo">
            <img src="${pageContext.request.contextPath}/image/travel-insurance.png" alt="">
            <div class="logo-text">
                <h1>${company.name}</h1>
                <%--                <h1>Travel<br>Insurance</h1>--%>
            </div>
        </div>
        <nav class="nav-header">
            <ul class="menu">
                <li class="sub-menu">
                    <a href="index#home">Trang chủ</a>
                </li>
                <li class="sub-menu">
                    <a href="index#tours">Tour du lịch</a>
                </li>
                <li class="sub-menu">
                    <a href="index#packages">Gói bảo hiểm</a>
                </li>
                <li class="sub-menu">
                    <a href="index#questions">Câu hỏi thường gặp</a>
                </li>
                <li class="sub-menu">
                    <a href="index#contact-section">Liên hệ</a>
                </li>
            </ul>
        </nav>
        <div class="buy-header">
            <a class="cart-icon" href="${pageContext.request.contextPath}/cart">
                <i class="fas fa-shopping-cart"></i>
                <span class="cart-count" id="cart-count">${sessionScope.cart != null ? sessionScope.cart.totalQuantity : 0}</span>
            </a>
            <a class="btn-main" href="index#packages">Mua ngay</a>
        </div>
    </div>
</header>


<div class="tour-detail-wrapper">


    <div class="breadcrumb">

        <div class="container-breadcrumb">

            <a href="index">Trang chủ</a> <i class="fas fa-chevron-right"></i>

            <a href="index#packages">Gói Bảo Hiểm</a> <i class="fas fa-chevron-right"></i>

            <span>${insurancePackage.name}</span>

        </div>

    </div>


    <%--  <section class="tour-hero">--%>

    <%--    <div class="hero-overlay">--%>

    <%--      <div class="container-hero-text">--%>

    <%--        <h1>${insurancePackage.name}</h1>--%>

    <%--      </div>--%>

    <%--    </div>--%>

    <%--  </section>--%>


    <!-- Section package-detail với tiêu đề căn giữa -->

    <section class="package-detail">

        <div class="container">

            <h1 style="text-align: center;">Chi Tiết Gói Bảo Hiểm</h1>  <!-- Giữ tiêu đề căn giữa -->

            <div class="package-info">

                <h2 class="package-name">${insurancePackage.name}
                    (${insurancePackage.packageGroup_ID == 1 ? 'Cá Nhân' : 'Gia Đình'})</h2>

                <p class="package-price">
                    Giá: <fmt:formatNumber value="${insurancePackage.price}" pattern="#,###"/> VNĐ
                </p>

                <p class="package-description">${insurancePackage.description}</p>

            </div>

            <div class="benefits-section">

                <h3>Chi Tiết Quyền Lợi</h3>

                <div class="insurance-table-wrapper">

                    <table class="insurance-table">

                        <thead>

                        <tr>

                            <th class="left-header">Quyền lợi Bảo hiểm</th>

                            <th>Cơ bản (VNĐ)</th>

                        </tr>

                        </thead>

                        <tbody>

                        <c:forEach var="benefit" items="${list}" varStatus="status">

                            <!-- Section header nếu group_name không rỗng -->

                            <c:if test="${benefit.benefitGroup ne currentGroup}">

                                <tr class="section-header">

                                    <td colspan="2">${benefit.benefitGroup}</td>

                                </tr>
                                <c:set var="currentGroup" value="${benefit.benefitGroup}"/>


                            </c:if>

                            <!-- Row cho benefit -->

                            <tr>

                                <td>${benefit.benefitName}<br><small>${benefit.benefitDescription}</small></td>

                                <td class="benefit-price">${benefit.limit_text}</td>

                            </tr>

                        </c:forEach>

                        </tbody>

                    </table>

                </div>

            </div>

            <div class="actions">

                <button class="btn-back" onclick="window.location.href='index.html'">Quay lại</button>

                <a class="btn-buy" href="add-cart?type=INSURANCEPACKAGE&id=${insurancePackage.package_ID}&q=1">Thêm vào giỏ hàng</a>

            </div>

        </div>

    </section>


</div>


<footer class="footer">
    <div class="footer-container">
        <!-- Cột 1: Logo và mô tả -->
        <div class="footer-column">
            <img src="${pageContext.request.contextPath}/image/travel-insurance.png" alt="Logo" class="footer-logo">
            <p>
                ${company.slogan_footer}
                <%--                Bảo vệ những gì bạn yêu quý<br>--%>
                <%--                Luôn bên bạn trong mọi hành trình--%>
            </p>
        </div>

        <!-- Cột 2: Liên kết nhanh -->
        <div class="footer-column">
            <h3>Liên kết nhanh</h3>
            <ul>
                <li><a href="index#home">Trang chủ</a></li>
                <li><a href="index#benefits">Quyền lợi</a></li>
                <li><a href="index#products">Gói bảo hiểm</a></li>
                <li><a href="index#questions">Câu hỏi thường gặp</a></li>
                <li><a href="index#contact-section">Liên hệ</a></li>
            </ul>
        </div>

        <!-- Cột 3: Thông tin liên hệ -->
        <div class="footer-column">
            <h3>Liên hệ</h3>
            <ul>
                <li><strong>Địa chỉ:</strong>
                    ${company.address}
                    <%--                    Khu phố 33, phường Linh Xuân, TP.Hồ Chí Minh, Việt Nam--%>
                </li>
                <li><strong>Hotline:</strong>
                    ${company.hotline}
                    <%--                    +84 123 456 789--%>
                </li>
                <li><strong>Email:</strong>
                    ${company.email}
                    <%--                    support@travelinsurance.vn--%>
                </li>
                <li><strong>Giờ làm việc:</strong>
                    ${company.office_hours}
                    <%--                    8:00 - 20:00 (T2 - CN)--%>
                </li>
            </ul>
        </div>

        <!-- Cột 4: Mạng xã hội -->
        <div class="footer-column">
            <h3>Kết nối với chúng tôi</h3>
            <div class="social-icons">
                <a href="${company.facebook}"><img src="${pageContext.request.contextPath}/image/communication.png"
                                                   alt="Facebook"></a>
                <a href="${company.instagram}"><img src="${pageContext.request.contextPath}/image/instagram.png"
                                                    alt="Instagram"></a>
                <a href="${company.youtube}"><img src="${pageContext.request.contextPath}/image/youtube.png"
                                                  alt="YouTube"></a>
            </div>
        </div>
    </div>

    <div class="footer-bottom">
        <span>© ${company.copy_right}<br></span>
        <span>${company.address}</span>
    </div>
</footer>

</body>

</html>