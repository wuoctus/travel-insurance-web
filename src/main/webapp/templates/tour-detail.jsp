<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="vi_VN"/>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Chi tiết Tour - Thái Lan</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"/>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&family=Roboto:ital,wght@0,100..900;1,100..900&display=swap"
          rel="stylesheet">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/tour-detail.css">
</head>

<body>

<header class="header">
    <div class="container-header">
        <div href="#home" class="logo">
            <img src="${pageContext.request.contextPath}/image/travel-insurance.png" alt="">
            <div class="logo-text">
                <h1>Travel<br>Insurance</h1>
            </div>
        </div>
        <nav class="nav-header">
            <ul class="menu">
                <li class="sub-menu"><a href="index#home">Trang chủ</a></li>
                <li class="sub-menu"><a href="index#tours">Tour du lịch</a></li>
                <li class="sub-menu"><a href="index#packages">Gói bảo hiểm</a></li>
                <li class="sub-menu"><a href="index#questions">Câu hỏi thường gặp</a></li>
                <li class="sub-menu"><a href="index#contact-section">Liên hệ</a></li>
            </ul>
        </nav>
        <div class="buy-header">
            <a class="cart-icon" href="${pageContext.request.contextPath}/cart">
                <i class="fas fa-shopping-cart"></i>
                <span class="cart-count"
                      id="cart-count">${sessionScope.cart != null ? sessionScope.cart.totalQuantity : 0}</span>
            </a>
            <a class="btn-main" href="index#packages" style="text-decoration: none">Mua ngay</a>
        </div>
    </div>
</header>

<div class="tour-detail-wrapper">

    <div class="breadcrumb">
        <div class="container-breadcrumb">
            <a href="index">Trang chủ</a> <i class="fas fa-chevron-right"></i>
            <a href="index#tours">Tour Du Lịch</a> <i class="fas fa-chevron-right"></i>
            <span>${tour.name}</span>
        </div>
    </div>

    <section class="tour-hero">
        <img src="${tour.image}" alt="${tour.name}" class="hero-img">
        <div class="hero-overlay">
            <div class="container-hero-text">
                <span class="tour-tag">${tour.badge_type}</span>
                <h1>${tour.name}</h1>
                <div class="hero-meta">
                    <span><i class="fas fa-clock"></i> ${tour.duration}</span>
                    <span><i class="fas fa-map-marker-alt"></i> ${tour.route}</span>
                    <span><i class="fas fa-star"></i> ${tour.rating}</span>
                </div>
            </div>
        </div>
    </section>

    <div class="container-tour-content">
        <div class="tour-layout">

            <div class="tour-main-info">
                <div class="content-box">
                    <h2>Lịch trình chi tiết</h2>
                    <div class="timeline">
                        <c:forEach var="day" items="${list}" varStatus="loop">
                            <details class="timeline-item" open>


                                <summary>
                                    <span class="day-number">${day.day_number}</span>
                                    <span class="title">${day.day_title}</span>
                                </summary>
                                <div class="day-content">
                                    <c:set var="rawContent" value="${day.day_content}"/>

                                        <%-- Thay thế các từ khóa bằng chính nó nhưng có thêm thẻ <br/> phía trước --%>
                                    <c:set var="content" value="${fn:replace(rawContent, 'Sáng:', '+Sáng:')}"/>
                                    <c:set var="content" value="${fn:replace(content, 'Trưa:', '+Trưa:')}"/>
                                    <c:set var="content" value="${fn:replace(content, 'Chiều:', '+Chiều:')}"/>
                                    <c:set var="content" value="${fn:replace(content, 'Tối:', '+Tối:')}"/>

                                    <c:set var="parts" value="${fn:split(content, '+')}"/>
                                    <ul class="day-content-content">
                                        <c:forEach var="buoi" items="${parts}">
                                            <c:if test="${not empty fn:trim(buoi)}">
                                                <li>${fn:trim(buoi)}</li>
                                            </c:if>
                                        </c:forEach>
                                        <c:if test="${loop.last}">
                                            <p>
                                                <strong>*Lưu ý :</strong> <br>
                                                (*) Thứ tự các điểm thăm quan có thể thay đổi theo tình hình thực tế tại
                                                thời điểm xuất phát nhưng vẫn đảm bảo đầy đủ các quyền lợi và các điểm
                                                thăm quan theo chương trình. <br>
                                                (*)Lưu ý đặc biệt đối với Quý khách ở xa, có ý định bay đi ngay sau khi
                                                kết thúc tour thì cân nhắc kỹ, để tránh bị lỡ chuyến, vì hành trình ngày
                                                cuối đi từ xa về, thời gian khó kiểm soát. <br>
                                                (*) Vì những yêu tố khách quan trong giai đoạn này, điểm tham quan có
                                                thể đóng cửa và được thay bằng điểm khác phù hợp với chương trình. <br>
                                                (*) Trong trường hợp đoàn gom dưới 10 khách thì tour không khởi hành.
                                                Công ty sẽ tư vấn cho Qúy khách chuyển tour sang ngày khởi hành lân cận
                                                hoặc thông báo chi phí phát sinh để khởi hành được đoàn. <br>
                                                (*) Đây là chương trình du lịch trọn gói, Travel-Insurace không có trách
                                                nhiệm hoàn trả chi phí chênh lệch cho các khách hàng thuộc diện miễn
                                                giảm hoặc đối tượng ưu tiên như trẻ nhỏ, người lớn tuổi, người có công
                                                với cách mạng… Chính sách miễn giảm, ưu tiên (nếu có) chỉ dành cho khách
                                                lẻ của các điểm tham quan
                                            </p>
                                        </c:if>
                                    </ul>
                                </div>
                            </details>
                        </c:forEach>
                        <%--
                        <details class="timeline-item" open>
                            <summary>
                                <span class="day-number">Ngày 2</span>
                                <span class="title">Đảo San Hô - Chợ Nổi 4 Miền</span>
                            </summary>
                            <div class="day-content">
                                <ul class="day-content-content">
                                    <li>Sáng: Đi cano ra Đảo Coral. Tự do tắm biển hoặc chơi dù kéo, lặn biển (chi phí tự túc).</li>
                                    <li>Chiều: Tham quan Vườn nhiệt đới Nong Nooch (xem show voi, vườn khủng long) hoặc Lâu đài Tỷ phú (Baan Sukhawadee).</li>
                                    <li>Thưởng thức Alcazar/Colosseum Show (show biểu diễn của các nghệ sĩ chuyển giới).</li>
                                </ul>
                            </div>
                        </details>

                        <details class="timeline-item" open>
                            <summary>
                                <span class="day-number">Ngày 3</span>
                                <span class="title">Pattaya - Bangkok - Shopping</span>
                            </summary>
                            <div class="day-content">
                                <ul class="day-content-content">
                                    <li>Sáng: Trả phòng, khởi hành về lại Bangkok. Ghé thăm Trung tâm nghiên cứu rắn độc hoặc Trại hổ.</li>
                                    <li>Trưa: Ăn Buffet quốc tế tại tòa nhà Baiyoke Sky 86 tầng (ngắm toàn cảnh thủ đô).</li>
                                    <li>Chiều: Viếng Phật Bốn Mặt linh thiêng. Tự do mua sắm tại Central World, Big C.</li>
                                    <li>Tối: Ăn tối tự túc hoặc nhận phòng khách sạn Bangkok nghỉ ngơi.</li>
                                </ul>
                            </div>
                        </details>

                        <details class="timeline-item" open>
                            <summary>
                                <span class="day-number">Ngày 4</span>
                                <span class="title">Bangkok - TP.HCM</span>
                            </summary>
                            <div class="day-content">
                                <ul class="day-content-content">
                                    <li>Sáng: Dạo thuyền trên sông Chao Phraya, xem cá nổi. Viếng Chùa Phật Vàng (Wat Traimit) hoặc Chùa Thuyền (Wat Yannawa).</li>
                                    <li>Trưa/Chiều: Xe đưa ra sân bay, làm thủ tục về lại Việt Nam.</li>
                                    <p>
                                        *Lưu ý : <br>
                                        (*) Thứ tự các điểm thăm quan có thể thay đổi theo tình hình thực tế tại thời điểm xuất phát nhưng vẫn đảm bảo đầy đủ các quyền lợi và các điểm thăm quan theo chương trình. <br>
                                        (*)Lưu ý đặc biệt đối với Quý khách ở xa, có ý định bay đi ngay sau khi kết thúc tour thì cân nhắc kỹ, để tránh bị lỡ chuyến, vì hành trình ngày cuối đi từ xa về, thời gian khó kiểm soát. <br>
                                        (*) Vì những yêu tố khách quan trong giai đoạn này, điểm tham quan có thể đóng cửa và được thay bằng điểm khác phù hợp với chương trình. <br>
                                        (*) Trong trường hợp đoàn gom dưới 10 khách thì tour không khởi hành. Công ty sẽ tư vấn cho Qúy khách chuyển tour sang ngày khởi hành lân cận hoặc thông báo chi phí phát sinh để khởi hành được đoàn. <br>
                                        (*) Đây là chương trình du lịch trọn gói, Travel-Insurace không có trách nhiệm hoàn trả chi phí chênh lệch cho các khách hàng thuộc diện miễn giảm hoặc đối tượng ưu tiên như trẻ nhỏ, người lớn tuổi, người có công với cách mạng… Chính sách miễn giảm, ưu tiên (nếu có) chỉ dành cho khách lẻ của các điểm tham quan
                                    </p>
                                </ul>
                            </div>
                        </details> --%>
                    </div>
                </div>
            </div>

            <div class="tour-sidebar">
                <div class="booking-card">
                    <div class="price-header">
                        <span class="price-label">Giá từ</span>
                        <div class="price-value">
                            <fmt:formatNumber value="${tour.price}" type="number" groupingUsed="true"/>
                            <span> VNĐ/khách</span>
                        </div>

                        <form class="booking-form">
                            <div class="form-group">
                                <label>Ngày khởi hành</label>
                                <input type="date" class="form-control" id="startDate">
                                <small id="dateError" style="color:red; display:none; margin-top:4px;">
                                    Vui lòng chọn ngày khởi hành
                                </small>
                            </div>

                            <div class="form-group">
                                <label>Số lượng khách</label>
                                <div class="quantity-control">
                                    <button type="button" onclick="adjustGuest(-1)">-</button>
                                    <input type="number" value="1" id="guestCount" min="1" readonly>
                                    <button type="button" onclick="adjustGuest(1)">+</button>
                                </div>
                            </div>
                            <div class="total-section">
                                <span>Tổng cộng:</span>
                                <span class="total-price" id="totalPrice">
                                    <fmt:formatNumber value="${tour.price}" type="number" groupingUsed="true"/> VNĐ
                                </span>
                            </div>
                            <a class="btn-book-now" href="javascript:void(0)" id="addToCartBtn"
                               addCart="add-cart?type=TOUR&id=${tour.tour_ID}">
                                Thêm vào giỏ hàng
                            </a>


                        </form>

                        <div class="insurance-note">
                            <i class="fas fa-shield-alt"></i> Cam kết về Uy tín và Chất lượng
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <input type="checkbox" id="support-toggle" style="display: none;">
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

<script>
    const GIA_TOUR_GOC = ${tour.price};
    const totalPriceElement = document.getElementById('totalPrice');
    const guestInput = document.getElementById('guestCount');
    const addToCartBtn = document.getElementById("addToCartBtn");
    const startDateInput = document.getElementById("startDate");
    const dateError = document.getElementById("dateError");

    function updateTotalPrice() {
        const soLuongKhach = parseInt(guestInput.value) || 1;
        const tongTien = GIA_TOUR_GOC * soLuongKhach;
        totalPriceElement.innerText = tongTien.toLocaleString('vi-VN') + " VNĐ";
    }

    window.adjustGuest = function (amount) {
        let current = parseInt(guestInput.value) || 1;
        let newValue = current + amount;
        if (newValue < 1) newValue = 1;
        guestInput.value = newValue;
        updateTotalPrice();
    };


    window.addEventListener('DOMContentLoaded', () => {
        updateTotalPrice();
    });
    if (addToCartBtn) {
        addToCartBtn.addEventListener("click", function () {
            const startDate = startDateInput.value;
            dateError.style.display = "none";
            startDateInput.style.border = "1px solid #ccc";
            if (!startDate) {
                dateError.style.display = "block";
                startDateInput.style.border = "1px solid red";
                startDateInput.focus();
                return;
            }
            const baseUrl = this.getAttribute("addCart");
            const q = guestInput.value; // số lượng khách
            const finalUrl = baseUrl + "&q=" + q;
            window.location.href = finalUrl;
        });
    }
</script>
</body>
</html>