<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="vi_VN"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Travel Insurance - Thanh Toán</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"/>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&family=Roboto:ital,wght@0,100..900;1,100..900&display=swap"
          rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/checkout.css">
    <script src="${pageContext.request.contextPath}/js/checkout.js"> defer</script>
</head>
<body>

<!-- Header hiển thị ở cố định đầu trang -->
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

<div class="checkout-body">

    <div class="breadcrumb">
        <div class="container-breadcrumb">
            <a href="index">Trang chủ</a> <i class="fas fa-chevron-right"></i>
            <a href="cart">Giỏ hàng</a> <i class="fas fa-chevron-right"></i>
            <span>Thanh toán</span>
        </div>
    </div>

    <div class="container-checkout">

        <div class="page-header-block">
            <h2 class="section-title">Xác nhận & Thanh toán</h2>
        </div>

        <form action="create-order" method="POST" class="checkout-layout">
            <div class="col-left">
                <div class="content-box">
                    <div class="box-head">
                        <i class="fas fa-user-circle"></i>
                        <h3>THÔNG TIN NGƯỜI ĐẶT</h3>
                    </div>
                    <div class="box-body">
                        <div class="input-row">
                            <div class="input-group">
                                <label>Họ và tên <span class="required">*</span></label>
                                <input type="text" name="buyer-name" class="buyer-name"
                                       placeholder="Nhập đầy đủ họ và tên">
                            </div>
                            <div class="input-group">
                                <label>Số điện thoại <span class="required">*</span></label>
                                <input type="text" name="buyer-phone" class="buyer-phone"
                                       placeholder="Nhập số điện thoại">
                            </div>
                        </div>
                        <div class="input-row">
                            <div class="input-group">
                                <label>Email <span class="required">*</span></label>
                                <input type="email" name="buyer-email" class="buyer-email"
                                       placeholder="Nhập email để nhận thông tin">
                            </div>
                            <div class="input-group">
                                <label>Địa chỉ</label>
                                <input type="text" name="buyer-address" class="buyer-address"
                                       placeholder="Nhập địa chỉ liên hệ">
                            </div>
                        </div>
                    </div>
                </div>

                <div class="content-box">
                    <div class="box-head">
                        <i class="fas fa-shopping-bag"></i>
                        <h3>DANH SÁCH SẢN PHẨM</h3>
                    </div>

                    <div class="cart-list">

                        <c:forEach items="${sessionScope.cart.items}" var="item">

                            <div class="cart-item">
                                <div class="item-top">
                                    <div class="item-title">
                                    <span class="badge badge-blue">
                                            <c:if test="${item.type == 'TOUR'}">Tour Du Lịch</c:if>
                                            <c:if test="${item.type == 'INSURANCEPACKAGE'}">Bảo Hiểm</c:if>
                                    </span>
                                        <h4>${item.name}</h4>
                                    </div>
                                    <div class="item-price">
                                        <fmt:formatNumber value="${item.price}" pattern="#,###"/> VNĐ
                                    </div>
                                </div>

                                <c:choose>

                                    <c:when test="${item.type == 'TOUR'}">

                                        <c:forEach begin="1" end="${item.quantity}" var="i">
                                            <div class="sub-form-wrapper">
                                                <div class="sub-title">
                                                    <i class="fas fa-users"></i> Khách tham gia tour #${i}
                                                </div>

                                                <div class="input-row">
                                                    <div class="input-group">
                                                        <label>Họ và tên</label>
                                                        <input type="text" name="p_name_${item.id}_${i}"
                                                               class="tourist" placeholder="Họ và Tên">
                                                    </div>
                                                    <div class="input-group">
                                                        <label>Ngày sinh</label>
                                                        <input type="date" name="p_birthday_${item.id}_${i}"
                                                               class="tourist">
                                                    </div>
                                                </div>

                                                <div class="input-row">
                                                    <div class="input-group">
                                                        <label>Số điện thoại</label>
                                                        <input type="text" name="p_phone_${item.id}_${i}"
                                                               class="tourist" placeholder="Số Điện Thoại">
                                                    </div>
                                                    <div class="input-group">
                                                        <label>Ngày khởi hành</label>
                                                        <input type="date" name="start_date_${item.id}_${i}"
                                                               class="tourist">
                                                    </div>
                                                </div>

                                                <div class="input-row">
                                                    <div class="input-group">
                                                        <label>CCCD/HỘ CHIẾU</label>
                                                        <input type="text" name="p_cccd_${item.id}_${i}"
                                                               class="tourist" placeholder="Số CCCD hoặc Hộ Chiếu">
                                                    </div>
                                                </div>

                                                <div class="input-group">
                                                    <label>Giới tính</label>
                                                    <select name="p_gender_${item.id}_${i}">
                                                        <option value="Nam">Nam</option>
                                                        <option value="Nữ">Nữ</option>
                                                        <option value="Khác">Khác</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </c:forEach>

                                    </c:when>

                                    <c:when test="${item.type == 'INSURANCEPACKAGE' && item.insurancePackage.packageGroup_ID != 2}">

                                        <c:forEach begin="1" end="${item.quantity}" var="i">
                                            <div class="sub-form-wrapper">
                                                <div class="sub-title">
                                                    <i class="fas fa-user-shield"></i> Người được bảo hiểm #${i}
                                                </div>

                                                <div class="input-row">
                                                    <div class="input-group">
                                                        <label>Họ và tên</label>
                                                        <input type="text" name="p_name_${item.id}_${i}"
                                                               class="tourist" placeholder="Họ Và Tên">
                                                    </div>
                                                    <div class="input-group">
                                                        <label>Ngày sinh</label>
                                                        <input type="date" name="p_birthday_${item.id}_${i}"
                                                               class="tourist">
                                                    </div>
                                                </div>

                                                <div class="input-row">
                                                    <div class="input-group">
                                                        <label>Số điện thoại</label>
                                                        <input type="text" name="p_phone_${item.id}_${i}"
                                                               class="tourist" placeholder="Số Điện Thoại">
                                                    </div>
                                                </div>

                                                <div class="input-row">
                                                    <div class="input-group">
                                                        <label>CCCD/HỘ CHIẾU</label>
                                                        <input type="text" name="p_cccd_${item.id}_${i}"
                                                               class="tourist" placeholder="Số CCCD hoặc Hộ Chiếu">
                                                    </div>
                                                </div>

                                                <div class="input-group">
                                                    <label>Giới tính</label>
                                                    <select name="p_gender_${item.id}_${i}">
                                                        <option value="Nam">Nam</option>
                                                        <option value="Nữ">Nữ</option>
                                                        <option value="Khác">Khác</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </c:forEach>

                                    </c:when>

                                    <c:when test="${item.type == 'INSURANCEPACKAGE' && item.insurancePackage.packageGroup_ID == 2}">

                                        <div class="sub-form-wrapper">
                                            <div class="sub-title">
                                                <i class="fas fa-user-shield"></i> Người được bảo hiểm #1
                                            </div>

                                            <div class="input-row">
                                                <div class="input-group">
                                                    <label>Họ và tên</label>
                                                    <input type="text" name="p_name_${item.id}_1"
                                                           class="tourist" placeholder="Họ Và Tên">
                                                </div>
                                                <div class="input-group">
                                                    <label>Ngày sinh</label>
                                                    <input type="date" name="p_birthday_${item.id}_1"
                                                           class="tourist">
                                                </div>
                                            </div>

                                            <div class="input-row">
                                                <div class="input-group">
                                                    <label>Số điện thoại</label>
                                                    <input type="text" name="p_phone_${item.id}_1"
                                                           class="tourist" placeholder="Số Điện Thoại">
                                                </div>
                                            </div>

                                            <div class="input-row">
                                                <div class="input-group">
                                                    <label>CCCD/HỘ CHIẾU</label>
                                                    <input type="text" name="p_cccd_${item.id}_1"
                                                           class="tourist" placeholder="Số CCCD hoặc Hộ Chiếu">
                                                </div>
                                            </div>

                                            <div class="input-group">
                                                <label>Giới tính</label>
                                                <select name="p_gender_${item.id}_1">
                                                    <option value="Nam">Nam</option>
                                                    <option value="Nữ">Nữ</option>
                                                    <option value="Khác">Khác</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="sub-form-wrapper">
                                            <div class="sub-title">
                                                <i class="fas fa-user-shield"></i> Người được bảo hiểm #2
                                            </div>

                                            <div class="input-row">
                                                <div class="input-group">
                                                    <label>Họ và tên</label>
                                                    <input type="text" name="p_name_${item.id}_2"
                                                           class="tourist" placeholder="Họ Và Tên">
                                                </div>
                                                <div class="input-group">
                                                    <label>Ngày sinh</label>
                                                    <input type="date" name="p_birthday_${item.id}_2"
                                                           class="tourist">
                                                </div>
                                            </div>

                                            <div class="input-row">
                                                <div class="input-group">
                                                    <label>Số điện thoại</label>
                                                    <input type="text" name="p_phone_${item.id}_2"
                                                           class="tourist" placeholder="Số Điện Thoại">
                                                </div>
                                            </div>

                                            <div class="input-row">
                                                <div class="input-group">
                                                    <label>CCCD/HỘ CHIẾU</label>
                                                    <input type="text" name="p_cccd_${item.id}_2"
                                                           class="tourist" placeholder="Số CCCD hoặc Hộ Chiếu">
                                                </div>
                                            </div>

                                            <div class="input-group">
                                                <label>Giới tính</label>
                                                <select name="p_gender_${item.id}_2">
                                                    <option value="Nam">Nam</option>
                                                    <option value="Nữ">Nữ</option>
                                                    <option value="Khác">Khác</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="sub-form-wrapper">
                                            <div class="sub-title">
                                                <i class="fas fa-user-shield"></i> Người được bảo hiểm #3 (Trẻ em dưới 15 tuổi)
                                            </div>

                                            <div class="input-row">
                                                <div class="input-group">
                                                    <label>Họ và tên</label>
                                                    <input type="text" name="p_name_${item.id}_3"
                                                           class="tourist" placeholder="Họ Và Tên">
                                                </div>
                                                <div class="input-group">
                                                    <label>Ngày sinh</label>
                                                    <input type="date" name="p_birthday_${item.id}_3"
                                                           class="tourist">
                                                </div>
                                            </div>

                                            <div class="input-row">
                                                <div class="input-group">
                                                    <label>Số điện thoại</label>
                                                    <input type="text" name="p_phone_${item.id}_3"
                                                           class="tourist" placeholder="Số Điện Thoại">
                                                </div>
                                            </div>

                                            <div class="input-row">
                                                <div class="input-group">
                                                    <label>CCCD/HỘ CHIẾU</label>
                                                    <input type="text" name="p_cccd_${item.id}_3"
                                                           class="tourist" placeholder="Số CCCD hoặc Hộ Chiếu">
                                                </div>
                                            </div>

                                            <div class="input-group">
                                                <label>Giới tính</label>
                                                <select name="p_gender_${item.id}_3">
                                                    <option value="Nam">Nam</option>
                                                    <option value="Nữ">Nữ</option>
                                                    <option value="Khác">Khác</option>
                                                </select>
                                            </div>
                                        </div>

                                    </c:when>

                                </c:choose>
                            </div>
                        </c:forEach>
                    </div>

                </div>
            </div>

            <div class="col-right">
                <div class="summary-box">
                    <h3 class="summary-title">Thanh Toán</h3>

                    <ul class="price-list">
                        <li>
                            <span>Tạm tính</span>
                            <span>
                                <fmt:formatNumber value="${cart.total}" type="number"/> VNĐ
                            </span>
                        </li>
                        <li>
                            <span>Giảm giá</span>
                            <span>
                                <fmt:formatNumber value="${cart.discount}" type="number"/> VNĐ
                            </span>
                        </li>
                        <li class="total-line">
                            <span>Tổng tiền</span>
                            <span class="final-price">
                                <fmt:formatNumber value="${cart.totalDiscount}" type="number"/> VNĐ
                            </span>
                        </li>
                    </ul>

                    <div class="payment-options">
                        <h4>Phương thức thanh toán</h4>
                        <label class="radio-option">
                            <input type="radio" name="payment-method" value="bank_transfer" checked>
                            <span class="radio-text"><i class="fas fa-university"></i> Chuyển khoản ngân hàng</span>
                        </label>
                        <label class="radio-option">
                            <input type="radio" name="payment-method" value="qr_code">
                            <span class="radio-text"><i class="fas fa-qrcode"></i> Quét mã QR</span>
                        </label>
                        <label class="radio-option">
                            <input type="radio" name="payment-method" value="credit_card">
                            <span class="radio-text"><i
                                    class="far fa-credit-card"></i> Thẻ Quốc tế Visa, Master, JCB</span>
                        </label>
                    </div>

                    <button type="submit" class="btn-main btn-full-width">
                        Thanh toán ngay
                    </button>

                    <p class="secure-note"><i class="fas fa-lock"></i> Bảo mật thông tin 100%</p>
                </div>
            </div>

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