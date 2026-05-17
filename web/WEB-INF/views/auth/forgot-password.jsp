<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forgot Password – Generator Management System</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <style>
        body {
            background-color: #f0f4f8;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .card {
            width: 100%;
            max-width: 420px;
            border: none;
            border-radius: 12px;
            box-shadow: 0 4px 24px rgba(0,0,0,.08);
        }
    </style>
</head>
<body>

<div class="card p-4">
    <div class="text-center mb-3">
        <i class="bi bi-key fs-1 text-warning"></i>
        <h5 class="mt-2 fw-bold">Forgot Password</h5>
        <p class="text-muted" style="font-size:.85rem;">Enter your email to receive a reset link</p>
    </div>

    <c:if test="${not empty errorMessage}">
        <div class="alert alert-danger py-2">${errorMessage}</div>
    </c:if>
    <c:if test="${not empty successMessage}">
        <div class="alert alert-success py-2">${successMessage}</div>
    </c:if>

    <form action="${pageContext.request.contextPath}/forgot-password" method="post">
        <div class="mb-3">
            <label class="form-label fw-semibold">Email address</label>
            <div class="input-group">
                <span class="input-group-text"><i class="bi bi-envelope"></i></span>
                <input type="email" name="email" class="form-control"
                       placeholder="Enter your email" required>
            </div>
        </div>
        <div class="d-grid">
            <button type="submit" class="btn btn-primary">Send Reset Link</button>
        </div>
    </form>

    <div class="text-center mt-3">
        <a href="${pageContext.request.contextPath}/login"
           class="text-decoration-none" style="font-size:.85rem;">
            <i class="bi bi-arrow-left me-1"></i>Back to Login
        </a>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
