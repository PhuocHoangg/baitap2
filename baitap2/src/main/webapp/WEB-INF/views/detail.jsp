<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Chi tiết Cầu Thủ</title>
    <!-- Thêm Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: #f8f9fa;
        }
        .player-card {
            max-width: 600px;
            margin: 40px auto;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            transition: transform .2s;
        }
        .player-card:hover {
            transform: translateY(-5px);
        }
        .player-img {
            object-fit: cover;
            width: 100%;
            height: 300px;
        }
        .info p {
            font-size: 16px;
            margin-bottom: 10px;
        }
        .info b {
            color: #0d6efd;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="card player-card">
        <img src="${pageContext.request.contextPath}${cauthu.image}"
             alt="Ảnh cầu thủ" class="player-img">
        <div class="card-body">
            <h3 class="card-title text-center text-primary mb-4">
                ${cauthu.hoTen}
            </h3>
            <div class="info">
                <p><b>Mã Cầu Thủ:</b> ${cauthu.maCauThu}</p>
                <p><b>Ngày Sinh:</b> ${cauthu.ngaySinh}</p>
                <p><b>Kinh Nghiệm:</b> ${cauthu.kinhNghiem}</p>
                <p><b>Vị Trí:</b> ${cauthu.vitri}</p>
            </div>
            <div class="text-center mt-4">
                <a href="${pageContext.request.contextPath}/Cauthu" class="btn btn-secondary">
                    Quay lại
                </a>
            </div>
        </div>
    </div>
</div>

<!-- Thêm Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
