<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Travel Insurance - Giỏ Hàng</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"/>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&family=Roboto:ital,wght@0,100..900;1,100..900&display=swap"
          rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/cart.css">
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

<div class="breadcrumb">
    <div class="container-breadcrumb">
        <a href="index">Trang chủ</a> <i class="fas fa-chevron-right"></i>
        <span>Giỏ hàng</span>
    </div>
</div>

<section class="cart-section">
    <div class="container-cart">
        <div class="global-discount-banner">
            <i class="fas fa-bullhorn"></i>
            <strong>ƯU ĐÃI ĐẶC BIỆT:</strong>
            Giảm ngay <span class="discount-highlight">5%</span> trên tổng đơn hàng khi mua <span class="discount-tour">TOUR DU LỊCH</span> cùng <span class="discount-package">GÓI BẢO HIỂM</span>
        </div>
        <div class="cart-card">

            <!-- CART LEFT -->
            <div class="cart-content">
                <div class="cart-header">
                    <h2>Giỏ hàng của bạn <span>(Số lượng: ${sessionScope.cart.totalQuantity})</span></h2>
                </div>
                <div class="cart-table-wrapper">
                    <table class="cart-table">
                        <thead>
                        <tr>
                            <th class="col-stt">STT</th>
                            <th class="col-type">Phân loại</th>
                            <th class="col-name">Tên sản phẩm</th>
                            <th class="col-qty">Số lượng</th>
                            <th class="col-price">Thành tiền</th>
                            <th class="col-del"></th>
                        </tr>
                        </thead>
                        <tbody>
                        <!-- ITEM -->
                        <c:set var="index" value="1"/>
                        <c:forEach items="${sessionScope.cart.items}" var="ci">
                            <tr class="cart-item">
                                <td class="col-stt">${index} <c:set value="${index+1}" var="index"/></td>

                                <td class="col-type">
                                <span class="type-badge">
                                    <c:choose>
                                        <c:when test="${ci.type == 'TOUR'}">Tour</c:when>
                                        <c:when test="${ci.type == 'INSURANCEPACKAGE'}">Bảo hiểm</c:when>
                                    </c:choose>
                                </span>
                                </td>

                                <td class="col-name">
                                    <div class="item-info">
                                        <div class="item-text">
                                            <h4>
                                                <c:choose>
                                                    <c:when test="${ci.type == 'INSURANCEPACKAGE'}">
                                                        Bảo hiểm
                                                        ${ci.insurancePackage.name}
                                                        (<c:choose>
                                                        <c:when test="${ci.insurancePackage.packageGroup_ID == 1}">Cá nhân</c:when>
                                                        <c:when test="${ci.insurancePackage.packageGroup_ID == 2}">Gia đình</c:when>
                                                    </c:choose>)
                                                    </c:when>

                                                    <c:when test="${ci.type == 'TOUR'}">
                                                        ${ci.tour.name}
                                                    </c:when>
                                                </c:choose>
                                            </h4>
                                        </div>
                                    </div>
                                </td>

                                <td class="col-qty">
                                    <div class="qty-control">
                                        <form action="update-quantity" method="post">
                                            <input type="hidden" name="id" value="${ci.id}">
                                            <input type="hidden" name="delta" value="-1">
                                            <button type="submit">-</button>
                                        </form>

                                        <input type="text" value="${ci.quantity}" readonly>

                                        <form action="update-quantity" method="post">
                                            <input type="hidden" name="id" value="${ci.id}">
                                            <input type="hidden" name="delta" value="1">
                                            <button type="submit">+</button>
                                        </form>
                                    </div>
                                </td>

                                <td class="col-price">
                                    <fmt:formatNumber value="${ci.total}" pattern="#,###"/> VNĐ
                                </td>

                                <td class="col-del">
                                    <form action="delete-item" method="post">
                                        <input type="hidden" name="id" value="${ci.id}">
                                        <button class="fas fa-trash-alt remove-btn" type="submit"></button>
                                    </form>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
                <a href="index.html#packages" class="cart-back-link">
                    <i class="fas fa-long-arrow-alt-left"></i>
                    Tiếp tục chọn gói khác
                </a>

            </div>
            <!-- CART RIGHT -->
            <aside class="cart-summary">
                <div class="summary-box">
                    <h3>Tổng đơn hàng</h3>
                    <div class="summary-row">
                        <span>Tạm tính</span>
                        <span>
                            <fmt:formatNumber value="${sessionScope.cart.total}" pattern="#,###"/> VNĐ
                        </span>
                    </div>
                    <div class="summary-row">
                        <span>Giảm giá</span>
                        <span>
                            <fmt:formatNumber value="${sessionScope.cart.discount}" pattern="#,###"/> VNĐ
                        </span>
                    </div>
                    <div class="summary-divider"></div>
                    <div class="summary-row total">
                        <span>Tổng cộng</span>
                        <span class="highlight">
                            <fmt:formatNumber value="${sessionScope.cart.totalDiscount}" pattern="#,###"/> VNĐ
                        </span>
                    </div>
                    <a class="btn-checkout" href="checkout">
                        THANH TOÁN
                    </a>
                </div>
            </aside>

        </div>
    </div>
</section>


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