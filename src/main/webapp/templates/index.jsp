<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="vi_VN"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Bảo hiểm du lịch</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"/>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&family=Roboto:ital,wght@0,100..900;1,100..900&display=swap"
          rel="stylesheet">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/index.css">
    <script src="${pageContext.request.contextPath}/js/index.js"></script>
</head>
<body>

<!-- Header hiển thị ở cố định đầu trang -->
<header class="header">
    <div class="container-header">
        <div href="#home" class="logo">
            <img src="${pageContext.request.contextPath}/image/${company.logo}" alt="">
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
                <span class="cart-count"
                      id="cart-count">${sessionScope.cart != null ? sessionScope.cart.totalQuantity : 0}</span>
            </a>
            <a class="btn-main" href="index#packages">Mua ngay</a>
        </div>
    </div>
</header>

<!--Trang background-->
<section class="home" id="home"
         style="--bg-url: url('${pageContext.request.contextPath}/image/${company.background}')">

    <div class="container-home">
        <div class="home-title">
            <h3>Bảo hiểm du lịch</h3>
            <h1>${company.name}</h1>
            <p>${company.slogan_header}</p>
            <%--            <p>Hành trình của bạn - Trách nhiệm của chúng tôi</p>--%>
            <a class="btn-explore" href="#home-intro">Khám phá ngay</a>
        </div>
    </div>
</section>

<!--Section phần giới thiệu-->
<section class="home-intro" id="home-intro">
    <div class="container-home-intro">
        <h2>Về chúng tôi</h2>
        <p>
            ${company.about_us}
            <%--            Trong nhịp sống hiện đại, những thành phố ngày càng khang trang,--%>
            <%--            những cung đường càng thêm rực rỡ, và những kỳ quan thiên nhiên vẫn--%>
            <%--            còn rất nhiều trên cuộc đời, không ngừng khiến con người khao khát khám phá.--%>
            <%--            Du lịch không chỉ là hành trình di chuyển, mà còn là hành trình tận hưởng vẻ đẹp,--%>
            <%--            trải nghiệm và cảm nhận cuộc sống.--%>
            <%--        </p>--%>
            <%--        <p>--%>
            <%--            Hiểu được điều đó, <strong>Travel Insurance</strong> ra đời với sứ mệnh trở thành người--%>
            <%--            bạn đồng hành đáng tin cậy trên mọi chuyến đi của bạn. Chúng tôi mang đến--%>
            <%--            sự an tâm, tiện lợi và bảo vệ toàn diện, giúp bạn tận hưởng từng khoảnh--%>
            <%--            khắc của hành trình một cách vui vẻ, thoải mái và trọn vẹn nhất.--%>
        </p>
    </div>
</section>

<!--Trang tour du lịch-->
<section id="tours" class="tours">
    <div class="tours-title">
        <h2>Tour Du Lịch Phổ Biến</h2>
        <p>Kết hợp du lịch và bảo hiểm để có chuyến đi an toàn nhất</p>
    </div>

    <div class="slider-wrapper">
        <button class="slider-btn prev-btn" id="prevBtn">
            <i class="fas fa-chevron-left"></i>
        </button>

        <div class="slider-track-container">
            <ul class="slider-track">
                <c:forEach var="tour" items="${list}">
                    <li class="tour-slide">
                        <div class="tour-card">
                            <div class="img-wrapper">
                                <img src="${tour.image}" alt="Thailand" class="">
                                <span class="tour-badge">${tour.badge_type}</span>
                            </div>
                            <div class="tour-content">
                                <h3>${tour.name}</h3>
                                <div class="tour-meta">
                                    <span><i class="fas fa-clock"></i> ${tour.duration}</span>
                                    <span><i class="fas fa-star"></i> ${tour.rating}</span>
                                </div>
                                <p>${tour.route}</p>
                                <span class="tour-price">
    <fmt:formatNumber value="${tour.price}" pattern="#,###"/> VNĐ
</span>
                                <div class="tour-actions">
                                    <a class="btn-checkTour"
                                       href="${pageContext.request.contextPath}/tour-detail?id=${tour.tour_ID}">Chi
                                        tiết</a>
                                    <a class="btn-tour" href="tour-detail?id=${tour.tour_ID}">Đặt Tour</a>
                                </div>
                            </div>
                        </div>
                    </li>
                </c:forEach>
            </ul>
        </div>

        <button class="slider-btn next-btn" id="nextBtn">
            <i class="fas fa-chevron-right"></i>
        </button>
    </div>
</section>

<!--Gói bảo hiểm-->
<section class="packages" id="packages">
    <div class="package-title">
        <h2>Gói Bảo Hiểm Du Lịch</h2>
        <p>Lựa chọn gói bảo vệ phù hợp cho Cá nhân hoặc Gia đình</p>
    </div>

    <div class="toggle-container">
        <button class="toggle-btn active">Cá Nhân</button>
        <button class="toggle-btn">Gia Đình</button>
    </div>

    <!-- Grid cho Cá nhân (động từ DB, lọc packageGroup_ID == 1) -->
    <div class="package-grid active">
        <c:forEach var="pkg" items="${packageList}">
            <c:if test="${pkg.packageGroup_ID == 1}"> <!-- Giả định 1 = Cá Nhân -->
                <div class="package-card">
                    <c:if test="${pkg.is_popular}">
                        <div class="ribbon">Phổ biến</div>
                    </c:if>
                    <h3 class="package-name">${pkg.name}</h3>
                    <div class="package-price">
                        <fmt:formatNumber value="${pkg.price}" pattern="#,###"/> VNĐ
                    </div>
                    <ul class="benefits-list">
                        <!-- Thay đổi: Lấy highlights từ DB và split thành danh sách động -->
                        <c:if test="${not empty pkg.highlights}">
                            <c:forEach var="highlight" items="${pkg.highlights.split(';')}">
                                <li><i class="fas fa-check-circle"></i> ${highlight.trim()}</li>
                            </c:forEach>
                        </c:if>
                        <c:if test="${empty pkg.highlights}">
                            <li><i class="fas fa-check-circle"></i> Không có thông tin nổi bật</li>
                        </c:if>
                    </ul>
                    <button class="btn-checkPack"
                            onclick="window.location.href='${pageContext.request.contextPath}/package-detail?id=${pkg.package_ID}'">
                        Chi tiết quyền lợi
                    </button>
                    <a class="btn-select" href="add-cart?type=INSURANCEPACKAGE&id=${pkg.package_ID}&q=1">Chọn gói
                        này</a>
                </div>
            </c:if>
        </c:forEach>
    </div>

    <!-- Grid cho Gia đình (động từ DB, lọc packageGroup_ID == 2) -->
    <div class="package-grid">
        <c:forEach var="pkg" items="${packageList}">
            <c:if test="${pkg.packageGroup_ID == 2}"> <!-- Giả định 2 = Gia Đình -->
                <div class="package-card">
                    <c:if test="${pkg.is_popular}">
                        <div class="ribbon">Phổ biến</div>
                    </c:if>
                    <h3 class="package-name">${pkg.name}</h3>
                    <div class="package-price">
                        <fmt:formatNumber value="${pkg.price}" pattern="#,###"/> VNĐ
                    </div>
                    <ul class="benefits-list">
                        <!-- Thay đổi: Lấy highlights từ DB và split thành danh sách động -->
                        <c:if test="${not empty pkg.highlights}">
                            <c:forEach var="highlight" items="${pkg.highlights.split(';')}">
                                <li><i class="fas fa-check-circle"></i> ${highlight.trim()}</li>
                            </c:forEach>
                        </c:if>
                        <c:if test="${empty pkg.highlights}">
                            <li><i class="fas fa-check-circle"></i> Không có thông tin nổi bật</li>
                        </c:if>
                    </ul>
                    <button class="btn-checkPack"
                            onclick="window.location.href='${pageContext.request.contextPath}/package-detail?id=${pkg.package_ID}'">
                        Chi tiết quyền lợi
                    </button>
                    <a class="btn-select" href="add-cart?type=INSURANCEPACKAGE&id=${pkg.package_ID}&q=1">Thêm vào giỏ
                        hàng</a>
                </div>
            </c:if>
        </c:forEach>
    </div>
</section>


<!--Câu hỏi thường gặp-->
<div class="questions" id="questions">
    <div class="container-questions">
        <div class="questions-title">
            <h2>Câu hỏi thường gặp</h2>
        </div>
        <div class="questions-list">
            <c:forEach var="faq" items="${listFAQ}">
                <details>
                    <summary>${faq.question}</summary>
                    <p>${faq.answer}</p>
                </details>
            </c:forEach>
        </div>
    </div>
</div>

<!--Tài liệu-->
<div class="document" id="document">
    <div class="document-container">
        <h2>Tài liệu</h2>
        <div class="document-wrapper">
            <a href="${pageContext.request.contextPath}/file-pdf/TaiLieuGioiThieu.pdf" target="_blank"
               class="document-card">
                <img src="${pageContext.request.contextPath}/image/document_icon.png" alt="document Icon">
                <p>Tài liệu giới thiệu</p>
            </a>
            <a href="${pageContext.request.contextPath}/file-pdf/QuyTacBaoHiem.pdf" target="_blank"
               class="document-card">
                <img src="${pageContext.request.contextPath}/image/document_icon.png" alt="document Icon">
                <p>Quy tắc bảo hiểm</p>
            </a>
            <a href="${pageContext.request.contextPath}/file-pdf/HuongDanKhieuNai.pdf" target="_blank"
               class="document-card">
                <img src="${pageContext.request.contextPath}/image/document_icon.png" alt="document Icon">
                <p>Hướng dẫn khiếu nại bồi thường</p>
            </a>
        </div>
    </div>
</div>

<!-- Liên hệ -->
<div class="contact-section" id="contact-section">
    <div class="contact-wrapper">
        <div class="contact-text">
            <h2>Bạn cần hỗ trợ?<br>Hãy gửi yêu cầu gọi thoại hoặc liên hệ với chúng tôi qua số điện thoại bên dưới!</h2>
            <div class="info-box">
                <p><strong>Trong chuyến đi</strong><br>
                    <span class="hotline">+84 123 456 789</span><br>
                    Hỗ trợ dịch vụ toàn cầu</p>
                <p><strong>Trước & Sau chuyến đi</strong><br>
                    <span class="hotline">+84 123 456 789</span><br>
                    Thứ 2 đến Thứ 6 (giờ hành chính), không bao gồm ngày lễ</p>
            </div>
        </div>

        <form class="contact-form" action="contact" method="POST">
            <input type="text" name="name" placeholder="Họ và tên" required>
            <input type="text" name="phone" placeholder="Điện thoại" pattern="^^0[0-9]{9}$"
                   title="Vui lòng nhập số điện thoại hợp lệ " required>
            <input type="email" name="email" placeholder="Email" required>
            <input type="text" name="message" placeholder="Mô tả yêu cầu" required>
            <button type="submit">Gửi yêu cầu</button>
        </form>
    </div>
</div>

<!-- Footer -->
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