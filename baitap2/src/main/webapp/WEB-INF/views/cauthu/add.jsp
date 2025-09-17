<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Thêm mới Cầu Thủ</title>
    <!-- Thêm Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<div class="container mt-5">
    <div class="card shadow-lg rounded-3">
        <div class="card-header bg-primary text-white text-center">
            <h2 class="mb-0">Thêm Cầu Thủ Mới</h2>
        </div>
        <div class="card-body">
            <form action="${pageContext.request.contextPath}/Cauthu/add" method="post">
                <div class="mb-3">
                    <label class="form-label">Mã Cầu Thủ</label>
                    <input type="text" name="MaCauThu" class="form-control" required>
                </div>

                <div class="mb-3">
                    <label class="form-label">Họ Tên</label>
                    <input type="text" name="HoTen" class="form-control" required>
                </div>

                <div class="mb-3">
                    <label class="form-label">Ngày Sinh</label>
                    <input type="date" name="NgaySinh" class="form-control" required>
                </div>

                <div class="mb-3">
                    <label class="form-label">Kinh Nghiệm</label>
                    <input type="text" name="KinhNghiem" class="form-control" required>
                </div>

                <div class="mb-3">
                    <label class="form-label">Vị Trí</label>
                    <input type="text" name="Vitri" class="form-control" required>
                </div>

                <div class="mb-3">
                    <label class="form-label">Ảnh đại diện (URL)</label>
                    <input type="text" name="Image" class="form-control">
                </div>

                <div class="d-flex justify-content-between">
                    <a href="${pageContext.request.contextPath}/Cauthu" class="btn btn-secondary">
                        Hủy
                    </a>
                    <button type="submit" class="btn btn-success">
                        <i class="bi bi-save"></i> Lưu
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">
</body>
</html>
