<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="vi_VN"/>
<c:set var="role" value="${sessionScope.user.role}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý Bảo Hiểm</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/admin.css">

</head>
<body class="${sessionScope.user.role}">
<header>
    <div class="logo-text">
        <img src="${pageContext.request.contextPath}/image/${company.logo}" alt="" class="logo">
        <div class="logo-text-wrapper">
            <h1>${company.name}</h1>
            <%--            <h1>Insurance</h1>--%>

        </div>
        <div class="straight"></div>
    </div>

    <h1>Quản Lý Bảo Hiểm</h1>
    <div class="admin">
        <label>
            ${sessionScope.user.username}
        </label>
        <img src="${pageContext.request.contextPath}/image/user-gear.png" alt="admin" width="40">
    </div>

</header>
<div class="square"></div>
<!-- SIDEBAR -->
<%--<ul class="sidebar">--%>
<%--    <li><a href="#customers">--%>
<%--        <i class="fa fa-users"></i>--%>
<%--        Danh sách khách hàng</a></li>--%>
<%--    <li><a href="#information">--%>
<%--        <i class="fa fa-building"></i>--%>
<%--        Thông tin công ty</a></li>--%>
<%--    <li id="h"><a href="#">--%>
<%--        <i class="fa fa-shield"></i>--%>
<%--        Quản lý Gói Bảo Hiểm</a>--%>
<%--        <ul class="sub">--%>
<%--            <li id="sub-add"><a href="#tab-add">--%>
<%--                <i class="fa fa-shield"></i>--%>
<%--                <i class="fa fa-plus"></i>--%>
<%--                Thêm Bảo Hiểm</a></li>--%>
<%--            <li id="sub-delete"><a href="#tab-delete">--%>
<%--                <i class="fa fa-shield"></i>--%>
<%--                <i class="fa fa-plus"></i>--%>
<%--                Xóa Bảo Hiểm</a></li>--%>
<%--        </ul>--%>
<%--    </li>--%>
<%--    <li><a href="#admin-tour">--%>
<%--        <i class="fa fa-plane"></i>--%>
<%--        Quản lý du lịch</a></li>--%>
<%--    <li><a href="#add-tour">--%>
<%--        <i class="fa-solid fa-map-location-dot"></i>--%>
<%--        Thêm tour du lịch</a></li>--%>
<%--    <li><a href="#contacts">--%>
<%--        <i class="fa fa-address-book"></i>--%>
<%--        Danh sách liên hệ</a></li>--%>
<%--    <li><a href="#price">--%>
<%--        <i class="fa fa-tags"></i>--%>
<%--        Thay đổi giá</a></li>--%>
<%--    <li><a href="#config-form">--%>
<%--        <i class="fa fa-user-cog"></i>--%>
<%--        Cấu hình user</a></li>--%>
<%--    <li><a href="#support">--%>
<%--        <i class="fa fa-headset"></i>--%>
<%--        Thông tin hỗ trợ</a></li>--%>
<%--    &lt;%&ndash;    <li><a href="#change-password">&ndash;%&gt;--%>
<%--    &lt;%&ndash;        <i class="fa fa-key"></i>&ndash;%&gt;--%>
<%--    &lt;%&ndash;        Đổi mật khẩu&ndash;%&gt;--%>
<%--    &lt;%&ndash;    </a></li>&ndash;%&gt;--%>
<%--    <li><a href="login">--%>
<%--        <i class="fa fa-sign-out-alt"></i>--%>
<%--        Thoát</a></li>--%>

<%--</ul>--%>
<ul class="sidebar">

    <!-- ================= CSKH + ADMIN ================= -->
    <c:if test="${role eq 'ADMIN' || role eq 'CSKH'}">
        <li><a href="#customers">
            <i class="fa fa-users"></i>
            Danh sách khách hàng
        </a></li>

        <li><a href="#contacts">
            <i class="fa fa-address-book"></i>
            Danh sách liên hệ
        </a></li>
    </c:if>

    <!-- ================= QLTT + ADMIN ================= -->
    <c:if test="${role eq 'ADMIN' || role eq 'QLTT'}">
        <li><a href="#information">
            <i class="fa fa-building"></i>
            Thông tin công ty
        </a></li>

        <li><a href="#support">
            <i class="fa fa-headset"></i>
            Thông tin hỗ trợ
        </a></li>
    </c:if>

    <!-- ================= QLSP + ADMIN ================= -->
    <c:if test="${role eq 'ADMIN' || role eq 'QLSP'}">
        <li id="h">
            <a href="#">
                <i class="fa fa-shield"></i>
                Quản lý Gói Bảo Hiểm
            </a>
            <ul class="sub">
                <li id="sub-add">
                    <a href="#tab-add">
                        <i class="fa fa-plus"></i>
                        Thêm Bảo Hiểm
                    </a>
                </li>
                <li id="sub-delete">
                    <a href="#tab-delete">
                        <i class="fa fa-trash"></i>
                        Xóa Bảo Hiểm
                    </a>
                </li>
            </ul>
        </li>

        <li><a href="#price">
            <i class="fa fa-tags"></i>
            Thay đổi giá
        </a></li>
        <li><a href="#admin-tour">
            <i class="fa fa-plane"></i>
            Quản lý du lịch
        </a></li>

        <li><a href="#add-tour">
            <i class="fa-solid fa-map-location-dot"></i>
            Thêm tour du lịch
        </a></li>
    </c:if>

    <!-- ================= TOUR + ADMIN ================= -->
    <c:if test="${role eq 'ADMIN'}">
        <%--        <li><a href="#admin-tour">--%>
        <%--            <i class="fa fa-plane"></i>--%>
        <%--            Quản lý du lịch--%>
        <%--        </a></li>--%>

        <%--        <li><a href="#add-tour">--%>
        <%--            <i class="fa-solid fa-map-location-dot"></i>--%>
        <%--            Thêm tour du lịch--%>
        <%--        </a></li>--%>

        <li><a href="#config-form">
            <i class="fa fa-user-cog"></i>
            Cấu hình user
        </a></li>
    </c:if>

    <!-- ================= LOGOUT (AI CŨNG THẤY) ================= -->

    <li><a href="#change-password">
        <i class="fa fa-key"></i>
        Thay đổi mật khẩu
    </a></li>
    <li><a href="${pageContext.request.contextPath}/login">
        <i class="fa fa-sign-out-alt"></i>
        Thoát
    </a></li>

</ul>


<!-- NỘI DUNG -->
<div class="content">

    <!-- SECTION 1: THAY ĐỔI GIÁ -->
    <div id="price" class="section">
        <h2>Thay đổi giá gói bảo hiểm</h2>
        <form action="admin" method="POST">
            <input type="hidden" name="action" value="update-price">
            <label>Chọn loại bảo hiểm:</label>
            <select name="maLoai" id="select-loai-price" onchange="filterPricePackages()">
                <c:forEach var="p" items="${pac}">
                    <option value="${p.packageGroup_ID}">Bảo hiểm ${p.name}</option>
                    <%--                <option value="2">Bảo hiểm Du lịch gia đình</option>--%>
                </c:forEach>
            </select><br><br>

            <label>Chọn gói:</label>
            <div id="package-price-select-container">
                <select id="default-package-select" class="form-select" disabled>
                    <option>Vui lòng chọn loại trước</option>
                </select>

                <c:forEach var="group" items="${pac}">
                    <select name="maGoi"
                            id="${group.packageGroup_ID}"
                            class="price-package-dropdown"
                            style="display: none;"
                            disabled>
                        <option value="">-- Chọn gói bảo hiểm --</option>
                        <c:forEach var="pkg" items="${listIns}">
                            <%-- Chỉ hiện các gói thuộc group hiện tại --%>
                            <c:if test="${pkg.packageGroup_ID == group.packageGroup_ID}">
                                <%--                                <option value="${pkg.package_ID}">Gói ${pkg.name}</option>--%>
                                <option value="${pkg.package_ID}" data-price="${pkg.price}">
                                    Gói ${pkg.name} - Giá hiện tại: <fmt:formatNumber value="${pkg.price}"
                                                                                      type="number"/> VNĐ
                                </option>
                            </c:if>

                        </c:forEach>
                    </select>
                </c:forEach>
            </div>
            <br>

            <label>Giá mới (VNĐ):</label>
            <div class="input-group">
                <input type="text"
                       id="displayGiaMoi"
                       class="form-control"
                       style="font-weight: bold; color: blue;"
                       oninput="handleMoneyInput(this)"
                       required>
                <input type="hidden" name="giaMoi" id="realGiaMoi" min="0" required><br><br>
            </div>
            <div id="price-in-words" style="margin-top: 5px; font-style: italic; color: #28a745; font-weight: 500;">
                Bằng chữ: <span id="text-preview">Chưa nhập số tiền</span>
            </div>
            <button type="submit" class="btn btn-primary">Cập nhật giá</button>
        </form>
    </div>
    <!-- SECTION: THÔNG TIN CÔNG TY -->
    <div id="information" class="section">

        <h2>Thông tin công ty</h2>

        <form action="admin" method="POST" enctype="multipart/form-data">
            <input type="hidden" name="action" value="update-company">

            <!-- Tên công ty -->
            <div class="form-row">
                <label>Tên công ty:</label>
                <input type="text" name="companyName"
                       value=""
                       class="input-field"
                       placeholder="${company.name}">
            </div>


            <!-- Logo -->
            <div class="form-row" id="logo">
                <label>Logo</label>
                <div style="margin-bottom: 10px;">
                    <img id="preview-logo"
                         src="${pageContext.request.contextPath}/image/${company.logo}"
                         alt="Logo Preview"
                         style="max-width: 75px; display: ${not empty company.logo ? 'block' : 'none'}; border: 1px solid #ddd; padding: 5px; border-radius: 4px;">
                </div>
                <input type="file" name="logoFile" onchange="handlePreview(this, 'preview-logo')">

            </div>

            <%--            background--%>
            <div class="form-row" id="background">
                <label>Background</label>
                <div style="margin-bottom: 10px;">
                    <img id="preview-background"
                         src="${pageContext.request.contextPath}/image/${company.background}"
                         alt="Logo Preview"
                         style="max-width: 75px; display: ${not empty company.background ? 'block' : 'none'}; border: 1px solid #ddd; padding: 5px; border-radius: 4px;">
                </div>
                <input type="file" name="backgroundFile" onchange="handlePreview(this, 'preview-background')">
            </div>
            <%--            sloganheader--%>
            <div class="form-row">
                <label>Slogan Header:</label>
                <textarea type="text" name="slogan-header"
                          class="input-field"
                          value=""
                          placeholder="${company.slogan_header}"
                          rows="2"></textarea>
            </div>
            <div class="form-row">
                <label>Về chúng tôi:</label>
                <textarea name="about-us"
                          class="input-field"
                          rows="4"
                          placeholder="${company.about_us}"></textarea>
            </div>
            <!-- Hotline -->
            <div class="form-row">
                <label>Hotline:</label>
                <input type="text" name="hotline"
                       value=""
                       class="input-field"
                       placeholder="${company.hotline}">
            </div>

            <!-- Email -->
            <div class="form-row">
                <label>Email:</label>
                <input type="email" name="email"
                       value=""
                       class="input-field"
                       placeholder="${company.email}">
            </div>

            <!-- Copyright -->
            <div class="form-row">
                <label>Copyright:</label>
                <input type="text" name="copyright"
                       value=""
                       class="input-field"
                       placeholder="${company.copy_right}">
            </div>


            <!-- Mạng xã hội -->
            <div class="form-row">
                <label>Facebook:</label>
                <input type="text" name="facebook"
                       value=""
                       class="input-field"
                       placeholder="${company.facebook}">
            </div>

            <div class="form-row">
                <label>Youtube:</label>
                <input type="text" name="youtube"
                       value=""
                       class="input-field"
                       placeholder="${company.youtube}">
            </div>

            <div class="form-row">
                <label>Instagram:</label>
                <input type="text" name="instagram"
                       value=""
                       class="input-field"
                       placeholder="${company.instagram}">
            </div>
            <div class="form-row">
                <label>Slogan footer:</label>
                <textarea type="text" name="slogan-footer"
                          class="input-field" value=""
                          rows="2"
                          placeholder="${company.slogan_footer}"></textarea>
            </div>

            <!-- Địa chỉ -->
            <div class="form-row">
                <label>Địa chỉ:</label>
                <textarea type="text" name="address"
                          value=""
                          class="input-field"
                          rows="2"
                          placeholder="${company.address}"></textarea>
            </div>
            <div class="form-row">
                <label>Giờ làm việc:</label>
                <input type="text" name="office-hours"
                       value=""
                       class="input-field"
                       placeholder="${company.office_hours}">
            </div>


            <!-- Action -->
            <div class="form-actions">
                <button type="submit" class="btn btn-primary" name="action" value="update-company">Lưu</button>
                <a href="admin#customers" class="btn btn-secondary">Thoát</a>
            </div>

        </form>
    </div>
    <%--gói du lịch--%>
    <div id="admin-tour" class="section">

        <h2>Quản lý Tour du lịch</h2>

        <!-- ========== DANH SÁCH TOUR ========== -->

        <table class="management-table">
            <thead>
            <tr>
                <th>STT</th>
                <th>Tên tour</th>
                <th>Thời gian</th>
                <th>Giá</th>
                <th>Đánh giá</th>
                <th>Trạng thái</th>
                <th>Tác vụ</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="t" items="${listTour}" varStatus="loop">

                <tr>
                    <td>${loop.count}</td>
                    <td>${t.name}</td>
                    <td>${t.duration}</td>
                    <td>
                        <fmt:formatNumber value="${t.price}" type="number"/> VNĐ
                    </td>
                    <td> ${t.rating}</td>
                    <td>
                        <form action="admin" method="POST">
                            <input type="hidden" name="action" value="toggle">
                            <input type="hidden" name="tourId" value="${t.tour_ID}">

                            <c:if test="${t.status == 1}">
                            <span style="color:green;font-weight:500">

                                    Hiển thị</span>
                            </c:if>
                            <c:if test="${t.status == 0}">
                            <span style="color:gray;font-weight:500">

                                    Ẩn</span>
                            </c:if>
                    </td>
                    <td>
                        <!-- Sửa -->
                            <%--                        <a href="admin-tour?action=edit&tourId=${t.tour_ID}"--%>
                            <%--                           title="Sửa tour">--%>
                            <%--                            <i class="fa fa-pen-to-square"></i>--%>
                            <%--                        </a>--%>

                        <!-- Ẩn / Hiện -->
                        <button type="submit" title="Ẩn / Hiện"
                                style="border: none; background: none; cursor: pointer;">
                            <c:choose>
                                <c:when test="${t.status == 1}">
                                    <i class="fa-solid fa-eye" style="color: #28a745;"></i>
                                </c:when>
                                <c:otherwise>
                                    <i class="fa-solid fa-eye-slash" style="color: #6c757d;"></i>
                                </c:otherwise>
                            </c:choose>
                        </button>

                        <!-- Xóa -->
                            <%--                        <a href="admin-tour?action=delete&tourId=${t.tour_ID}"--%>
                            <%--                           onclick="return confirm('Xóa tour này?')"--%>
                            <%--                           style="color:#dc3545">--%>
                            <%--                            <i class="fa fa-trash"></i>--%>
                            <%--                        </a>--%>
                    </td>
                    </form>
                </tr>
            </c:forEach>
            </tbody>
        </table>


        <!-- ========== THÊM TOUR ========== -->

    </div>
    <%--    thêm gói đu lịch--%>
    <div id="add-tour" class="section">
        <h2>Thêm Tour mới</h2>

        <form action="admin" method="post">
            <input type="hidden" name="action" value="add-tour">

            <div class="form-row">
                <label>Tên tour:</label>
                <input type="text" name="name" class="input-field" required>
            </div>
            <div class="form-row">
                <label>Nổi bật</label>
                <input type="text" name="badge-type" class="input-field" required>
            </div>

            <div class="form-row">
                <label>Thời gian:</label>
                <input type="text" name="duration" placeholder="VD: 3N2Đ" class="input-field">
            </div>

            <div class="form-row price" id="form-row-price">
                <label>Giá (VNĐ):</label>
                <div class="input-group">
                    <input type="text"
                           id="displayPriceTour"
                           class="input-field"
                           style="font-weight: bold; color: blue;"
                           oninput="handleMoneyInput(this)"
                           placeholder="Ví dụ: 1.000.000"
                           required>
                    <input type="hidden" name="price" id="realPriceTour" required>
                </div>
            </div>
            <div id="add-tour-price"
                 style="margin-top: 5px; font-style: italic; color: #28a745; font-weight: 500;">
                Bằng chữ: <span id="text-preview-tour">Chưa nhập số tiền</span>
            </div>

            <div class="form-row">
                <label>Đánh giá:</label>
                <input type="number" step="0.1" name="rating" min="0" max="5" class="input-field">
            </div>

            <div class="form-row">
                <label>Tuyến đường:</label>
                <input type="text" name="route" class="input-field">
            </div>

            <div class="form-row">
                <label>Ảnh (URL):</label>
                <input type="text" name="image" class="input-field">
            </div>

            <div class="form-row">
                <label>Mô tả:</label>
                <textarea name="description" class="input-field" rows="3"></textarea>
            </div>
            <div class="form-row">
                <label>Hiển thị:</label>
                <input type="checkbox" value="1" checked class="checkbox-field">
            </div>

            <!-- ===== CHI TIẾT NGÀY ===== -->
            <h4>Chi tiết lịch trình</h4>
            <div id="dayContainer">

            </div>

            <button type="button" class="btn btn-secondary" onclick="addDay()">
                Thêm ngày
            </button>

            <div class="form-actions" id="button-add">
                <button type="submit" class="btn btn-primary" name="action" value="add">Lưu</button>
                <a href="admin#customers" class="btn btn-secondary">Thoát</a>
            </div>
        </form>
    </div>

    <%--    hỗ trợ--%>
    <div id="support" class="section support-wrapper">
        <div class="support-box">
            <p class="support-title">
                Nếu cần hỗ trợ kỹ thuật, quý khách vui lòng thực hiện một trong ba cách sau:
            </p>

            <ol class="support-list">
                <li>
                    Truy cập:
                    <a href="https://supportcnttNLU.com" target="_blank">
                        supportcnttNLU.com
                    </a>
                    và gửi yêu cầu hỗ trợ.
                </li>
                <li>
                    Gửi email cho phòng kỹ thuật:
                    <span class="highlight">kythuat@cnttNLU.vn</span>
                </li>
                <li>
                    Gọi số Hotline Hỗ Trợ Khách Hàng:
                    <span class="highlight">0915101017</span>,
                    <span class="highlight">0912817117</span>
                </li>
            </ol>
        </div>
    </div>

    <!-- SECTION 2: DANH SÁCH KHÁCH HÀNG -->
    <div id="customers" class="section">
        <h2>Danh sách khách hàng đã mua bảo hiểm</h2>

        <table>
            <thead>
            <tr>
                <th>STT</th>
                <th>Họ và tên</th>
                <th>SĐT</th>
                <th>Email</th>
                <th>Địa chỉ</th>
                <th>Sản Phẩm</th>
                <th>Trạng thái</th>
                <th>Ngày tạo</th>
            </tr>
            </thead>
            <tbody>
            <!-- DỮ LIỆU KHÁCH HÀNG Ở ĐÂY -->
            <c:forEach var="c" items="${customer}" varStatus="loop">
                <tr>

                    <td>${loop.count}</td>
                    <td>${c.name}</td>
                    <td>${c.phone}</td>
                    <td>${c.email}</td>
                    <td>${c.address}</td>
                    <td>${c.productName}</td>
                    <td>${c.status}</td>
                    <td>${c.createdAt}</td>
                </tr>
            </c:forEach>
            <%--            <tr>--%>
            <%--                <td>2</td>--%>
            <%--                <td>Trần Thị Hạnh</td>--%>
            <%--                <td>0987 654 321</td>--%>
            <%--                <td>28/11/1985</td>--%>
            <%--                <td>45 Nguyễn Trãi, Hà Nội</td>--%>
            <%--                <td>hanh.tt@example.com</td>--%>
            <%--                <td>Nâng cao</td>--%>
            <%--                <td>2025-11-15</td>--%>
            <%--            </tr>--%>
            </tbody>
        </table>
    </div>
    <!-- Section 3: cấu hình user -->
    <div id="config-form" class="section">
        <h3>Cấu hình users</h3>
        <form action="admin" method="POST">
            <input type="hidden" name="action" value="user">
            <div class="form-row">
                <label>Loại tài khoản:</label>
                <select name="role" class="input-field">
                    <option value="CSKH">CSKH</option>
                    <option value="QLSP">QLSP</option>
                    <option value="QLTT">QLTT</option>

                    <%--                    <option>admin</option>--%>
                    <%--                    <option>staff</option>--%>
                </select>
            </div>
            <div class="form-row">
                <label>Tên tài khoản:</label>
                <input type="text" name="username" class="input-field">
            </div>
            <div class="form-row">
                <label>Email:</label>
                <input type="text" name="email" class="input-field">
            </div>
            <div class="form-row">
                <label>SDT:</label>
                <input type="text" name="phone" class="input-field">
            </div>
            <div class="form-row">
                <label>Mật khẩu:</label>
                <input type="password" name="pass" class="input-field">
            </div>
            <div class="form-row">
                <label>Trạng thái:</label>
                <input type="checkbox" name="isActive" checked class="checkbox-field" value="1">
            </div>


            <%--        <div class="form-row">--%>
            <%--            <label class="full-width-label">Quyền hạn:</label>--%>
            <%--            <div class="permissions-grid">--%>

            <%--                <div class="perm-col">--%>
            <%--                    <label><input type="checkbox"> Quản lý sản phẩm</label>--%>
            <%--                    <label><input type="checkbox"> Danh sách điện thoại</label>--%>
            <%--                </div>--%>

            <%--                <div class="perm-col">--%>

            <%--                    <label><input type="checkbox"> Thay đổi giá</label>--%>
            <%--                    <label><input type="checkbox"> Cấu hình user</label>--%>
            <%--                </div>--%>

            <%--                <div class="perm-col">--%>
            <%--                    <label><input type="checkbox"> Danh sách đơn hàng</label>--%>
            <%--                    <label><input type="checkbox"> Khách hàng Liên hệ</label>--%>

            <%--                </div>--%>

            <%--            </div>--%>
            <%--        </div>--%>

            <div class="form-actions">
                <button type="submit" class="btn btn-primary">Lưu</button>
                <button class="btn btn-secondary">Thoát</button>
            </div>
        </form>
    </div>

    <%--    <!-- SECTION: ĐỔI MẬT KHẨU  -->--%>
    <div id="change-password" class="section">
        <h2>Đổi mật khẩu </h2>

        <form action="admin" method="post" class="change-password-form">
            <input type="hidden" name="action" value="change-password">

            <div class="form-row">
                <label>Mật khẩu hiện tại:</label>
                <input type="password"
                       name="oldPassword"
                       class="input-field"
                       placeholder="Nhập mật khẩu hiện tại"
                       required>
            </div>

            <div class="form-row">
                <label>Mật khẩu mới:</label>
                <input type="password"
                       name="newPassword"
                       id="newPassword"
                       class="input-field"
                       placeholder="Nhập mật khẩu mới"
                       required>
            </div>

            <div class="form-row">
                <label>Xác nhận mật khẩu mới:</label>
                <input type="password"
                       name="confirmPassword"
                       id="confirmPassword"
                       class="input-field"
                       placeholder="Nhập lại mật khẩu mới"
                       required>
            </div>

            <!-- thông báo lỗi / thành công -->
            <c:if test="${not empty sessionScope.error}">
                <div class="alert alert-danger"
                     style="color: #721c24; background-color: #f8d7da; border: 1px solid #f5c6cb; padding: 15px; margin: 10px 0; border-radius: 4px;width: fit-content;">
                        ${sessionScope.error}

                </div>
                <c:remove var="error" scope="session"/>
            </c:if>

            <c:if test="${not empty sessionScope.success}">
                <div class="alert alert-success"
                     style="color: #155724; background-color: #d4edda; border: 1px solid #c3e6cb; padding: 15px; margin: 10px 0; border-radius: 4px;width: fit-content;">
                        ${sessionScope.success}
                </div>
                <c:remove var="success" scope="session"/>
            </c:if>

            <div class="form-actions">
                <button type="submit" class="btn btn-primary">
                    <i class="fa fa-key"></i> Cập nhật mật khẩu
                </button>
                <a href="admin" class="btn btn-secondary">Thoát</a>
            </div>
        </form>
    </div>
    <!-- danh sách liên hệ -->
    <div id="contacts" class="section">
        <h2>Danh sách Khách hàng Liên hệ</h2>

        <table>
            <thead>
            <tr>
                <th>STT</th>
                <th>Họ và tên</th>
                <th>Email</th>
                <th>SĐT</th>
                <th>Nội dung</th>
                <th>Ngày tạo</th>
                <th>Trạng thái</th>
                <th>Tác vụ</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="con" items="${list}" varStatus="loop">
                <tr>
                    <td>${loop.count}</td>
                    <td>${con.name}</td>
                    <td>${con.email}</td>
                    <td>${con.phone}</td>
                    <td>${con.message}</td>
                        <%--                    <td>${con.create_at}--%>
                        <%--                    </td>--%>
                    <td>
                        <c:if test="${con.create_at != null}">
                            <fmt:parseDate value="${con.create_at}" pattern="yyyy-MM-dd'T'HH:mm" var="parsedDate"
                                           type="both"/>

                            <div style="font-weight: 500;">
                                <fmt:formatDate value="${parsedDate}" pattern="dd-MM-yyyy"/>
                            </div>

                            <div style="color: #666; font-size: 0.9em;">
                                <fmt:formatDate value="${parsedDate}" pattern="HH:mm:ss"/>
                            </div>
                        </c:if>
                    </td>
                    <td>
                        <c:if test="${con.status == 0}">
                            <span style="color:red">Chưa liên hệ</span>
                        </c:if>
                        <c:if test="${con.status == 1}">
                            <span style="color:green">Đã liên hệ</span>
                        </c:if>
                    </td>
                    <td>
                        <c:choose>
                            <c:when test="${con.status == 1}">
                                <i class="fa-solid fa-circle-check" style="color: #28a745; font-size: 1.2rem;"
                                   title="Đã liên hệ"></i>
                            </c:when>
                            <c:otherwise>
                                <a href="admin?action=mark-contact&contact-id=${con.contactId}"
                                   title="Đánh dấu đã liên hệ">
                                    <i class="fa-regular fa-circle-check"
                                       style="color: #6c757d; font-size: 1.2rem;"></i>
                                </a>
                            </c:otherwise>
                        </c:choose>
                        <a href="admin?action=delete-contact&contact-id=${con.contactId}"
                           style="color: #dc3545;" title="Xóa liên hệ">
                            <i class="fa-solid fa-trash-can" style="font-size: 1.2rem;"></i>
                        </a>
                    </td>
                </tr>
            </c:forEach>
            <%--            <tr>--%>
            <%--                <td>2</td>--%>
            <%--                <td>Trần Thị B</td>--%>
            <%--                <td>b.tran@example.com</td>--%>
            <%--                <td>0988yyyyyy</td>--%>
            <%--                <td>Nội dung yêu cầu</td>--%>
            <%--            </tr>--%>
            </tbody>
        </table>
    </div>

    <!-- thêm sản phẩm -->
    <div id="tab-add" class="section">
        <h3>Nhập thông tin gói mới</h3>
        <form action="admin" method="POST" class="add-product-form">
            <input type="hidden" name="action" value="add-package">
            <div class="form-row-compact">
                <label for="new_type">Loại Bảo hiểm:</label>
                <select id="new_type" name="loaiBaoHiem">
                    <c:forEach var="it" items="${pac}">
                        <option value="${it.packageGroup_ID}">Bảo Hiểm ${it.name}</option>
                        <%--                        <option value="2">Bảo hiểm Du lịch gia đình</option>--%>
                    </c:forEach>
                </select>
            </div>
            <div class="form-row-compact">
                <label for="new_package">Tên Gói:</label>
                <input type="text" id="new_package" name="tenGoi" required>
            </div>
            <div class="form-row-compact">
                <label for="new_desc">Mô tả ngắn:</label>
                <textarea id="new_desc" name="moTa"></textarea>
            </div>
            <div class="form-row-compact">
                <label>Giá (VNĐ):</label>
                <div class="input-container-admin">
                    <input type="text"
                           id="displayGiaThemMoi"
                           class="form-control"
                           style="font-weight: bold; color: blue;"
                           placeholder="Ví dụ: 500.000"
                           oninput="handleMoneyInputAdd(this)"
                           required>

                    <input type="hidden" name="gia" id="realGiaThemMoi">
                </div>

                <div id="price-in-words-add"
                     style="margin-top: 5px; font-style: italic; color: #28a745; font-size: 0.9em;">
                    Bằng chữ: <span id="text-preview-add">Chưa nhập số tiền</span>
                </div>
            </div>


            <button type="submit" class="btn btn-primary add-product-btn">Thêm Gói</button>
        </form>
    </div>
    <!-- xóa sản phẩm -->
    <div id="tab-delete" class="section">
        <h3>Chọn gói cần xóa</h3>
        <div class="management-table">
            <table>
                <thead>
                <tr>
                    <th>STT</th>
                    <th>Mã Loại-Mã Gói</th>
                    <th>Loại Bảo Hiểm</th>
                    <th>Tên Gói</th>
                    <th>Giá (VNĐ)</th>
                    <th>Thao tác</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="pac" items="${listMap}" varStatus="loop">
                    <tr>
                        <td>${loop.count}</td>
                        <td>${pac.group_id} - ${pac.package_id}</td>
                        <td>${pac.group_name}</td>
                        <td>${pac.name}</td>
                        <td><fmt:formatNumber value="${pac.price}" type="number" groupingUsed="true"/> VNĐ</td>
                        <td>
                            <a class="btn btn-delete" href="admin?action=delete&id=${pac.package_id} "
                            >Xóa</a>
                        </td>
                    </tr>
                </c:forEach>
                <%--                   <tr>--%>
                <%--                   <td>2-2</td>--%>
                <%--                   --%>
                <%--                   <td>Du lịch gia đình</td>--%>
                <%--                   <td>Nâng cao</td>--%>
                <%--                   <td>1,500,000</td>--%>
                <%--                   <td>--%>
                <%--                   <button class=" btn btn-delete" data-id="2-2">Xóa</button>--%>
                <%--    </td>--%>
                <%--</tr>--%>
                </tbody>
            </table>
        </div>
    </div>


</div>

<script>
    function filterPricePackages() {

        const selectedTypeId = document.getElementById('select-loai-price').value;


        const allDropdowns = document.querySelectorAll('.price-package-dropdown');
        const defaultSelect = document.getElementById('default-package-select');


        allDropdowns.forEach(sel => {
            sel.style.display = 'none';
            sel.disabled = true;
        });
        defaultSelect.style.display = 'none';


        if (selectedTypeId !== "") {
            const targetSelect = document.getElementById(selectedTypeId);
            if (targetSelect) {
                targetSelect.style.display = 'block';
                targetSelect.disabled = false;
            }
        } else {
            defaultSelect.style.display = 'block';
        }
    }


    function handleMoneyInput(input) {
        let rawValue = input.value.replace(/\D/g, "");
        document.getElementById('realGiaMoi').value = rawValue;

        if (rawValue !== "") {
            input.value = Number(rawValue).toLocaleString('vi-VN');

            document.getElementById('text-preview').innerText = docSoTien(rawValue) + " đồng";
        } else {
            input.value = "";
            document.getElementById('text-preview').innerText = "Chưa nhập số tiền";
        }
    }


    function handleMoneyInputAdd(input) {

        let rawValue = input.value.replace(/\D/g, "");


        document.getElementById('realGiaThemMoi').value = rawValue;


        if (rawValue !== "" && rawValue !== "0") {
            input.value = Number(rawValue).toLocaleString('vi-VN');

            document.getElementById('text-preview-add').innerText = docSoTien(rawValue) + " đồng";
        } else {
            input.value = "";
            document.getElementById('text-preview-add').innerText = "Chưa nhập số tiền";
        }
    }


    function docSoTien(so) {
        const ChuSo = ["không", "một", "hai", "ba", "bốn", "năm", "sáu", "bảy", "tám", "chín"];
        const Tien = ["", "nghìn", "triệu", "tỷ", "nghìn tỷ", "triệu tỷ"];

        function docBlock(so) {
            let a = Math.floor(so / 100);
            let b = Math.floor((so % 100) / 10);
            let c = so % 10;
            let kq = "";
            if (a > 0) kq += ChuSo[a] + " trăm ";
            if (b > 1) kq += ChuSo[b] + " mươi ";
            else if (b == 1) kq += "mười ";
            else if (a > 0 && c > 0) kq += "lẻ ";
            if (c == 5 && b > 0) kq += "lăm ";
            else if (c > 1 || (c == 1 && b == 0)) kq += ChuSo[c] + " ";
            else if (c == 1 && b > 0) kq += "mốt ";
            return kq;
        }

        if (so == 0) return ChuSo[0];
        let res = "", i = 0;
        do {
            let block = so % 1000;
            if (block > 0) {
                let s = docBlock(block);
                res = s + Tien[i] + " " + res;
            }
            i++;
            so = Math.floor(so / 1000);
        } while (so > 0);


        res = res.trim();
        return res.charAt(0).toUpperCase() + res.slice(1);
    }

    function handlePreview(input, previewId) {
        const previewElement = document.getElementById(previewId);


        if (input.files && input.files[0]) {
            const reader = new FileReader();

            reader.onload = function (e) {

                previewElement.src = e.target.result;
                previewElement.style.display = 'block';
            };

            reader.readAsDataURL(input.files[0]);
        }
    }

    let dayDetails = 0;

    function addDay() {
        dayDetails++;
        console.log(dayDetails);
        const container = document.getElementById("dayContainer");

        const dayDiv = document.createElement("div");
        dayDiv.className = "tour-day";

        dayDiv.innerHTML =
            '<label>Ngày ' + dayDetails + '</label>' +
            '<input type="hidden" name="day_number[]" value="' + dayDetails + '">' +
            '<input type="text" name="day_title[]" placeholder="Tiêu đề ngày ' + dayDetails + '">' +
            '<textarea name="day_content[]" placeholder="Nội dung ngày ' + dayDetails + '"></textarea>';

        container.appendChild(dayDiv);
    }

</script>
</body>
</html>