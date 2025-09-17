<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Danh sách Cầu Thủ</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .player-img {
            border-radius: 8px;
            box-shadow: 0 2px 6px rgba(0,0,0,0.15);
            transition: transform .2s;
        }
        .player-img:hover {
            transform: scale(1.05);
        }
    </style>
</head>
<body class="bg-light">

<div class="container mt-5">
    <div class="d-flex justify-content-between align-items-center mb-3">
        <h2 class="text-primary">Danh sách Cầu Thủ</h2>
        <a href="${pageContext.request.contextPath}/Cauthu/add" class="btn btn-success">
            + Thêm Cầu Thủ
        </a>
    </div>

    <div class="card shadow-lg rounded-3">
        <div class="card-body">
            <table class="table table-striped table-hover align-middle text-center">
                <thead class="table-primary">
                <tr>
                    <th>STT</th>
                    <th>Mã Cầu Thủ</th>
                    <th>Họ Tên</th>
                    <th>Ngày Sinh</th>
                    <th>Kinh Nghiệm</th>
                    <th>Vị Trí</th>
                    <th>Hình Ảnh</th>
                    <th>Thao Tác</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${cauthuList}" var="cauthu" varStatus="status">
                    <tr>
                        <td>${status.count}</td>
                        <td>${cauthu.maCauThu}</td>
                        <td>${cauthu.hoTen}</td>
                        <td>${cauthu.ngaySinh}</td>
                        <td>${cauthu.kinhNghiem}</td>
                        <td>
                            <span class="badge bg-info text-dark">${cauthu.vitri}</span>
                        </td>
                        <td>
                            <img src="${pageContext.request.contextPath}${cauthu.image}"
                                 alt="Ảnh cầu thủ" width="90" height="110" class="player-img"/>
                        </td>
                        <td>
                            <a href="${pageContext.request.contextPath}/Cauthu/delete/${cauthu.maCauThu}"
                               class="btn btn-sm btn-danger"
                               onclick="return confirm('Bạn có chắc muốn xóa cầu thủ này?');">
                                Xóa
                            </a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
