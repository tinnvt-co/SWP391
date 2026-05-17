<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login – Generator Management System</title>
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
        .login-card {
            width: 100%;
            max-width: 420px;
            border: none;
            border-radius: 12px;
            box-shadow: 0 4px 24px rgba(0,0,0,.08);
        }
        .login-brand {
            text-align: center;
            margin-bottom: 1.5rem;
        }
        .login-brand i {
            font-size: 2.5rem;
            color: #f5a623;
        }
        .login-brand h5 {
            margin-top: .4rem;
            font-weight: 700;
            color: #1e2a38;
        }
    </style>
</head>
<body>

<div class="login-card card p-4">
    <div class="login-brand">
        <i class="bi bi-lightning-charge-fill"></i>
        <h5>Generator Management System</h5>
        <p class="text-muted" style="font-size:.85rem;">Sign in to your account</p>
    </div>

    <c:if test="${not empty errorMessage}">
        <div class="alert alert-danger py-2 d-flex align-items-center gap-2">
            <i class="bi bi-exclamation-circle"></i>
            <span>${errorMessage}</span>
        </div>
    </c:if>
    <c:if test="${not empty successMessage}">
        <div class="alert alert-success py-2 d-flex align-items-center gap-2">
            <i class="bi bi-check-circle"></i>
            <span>${successMessage}</span>
        </div>
    </c:if>

    <form action="${pageContext.request.contextPath}/login" method="post" autocomplete="off">
        <div class="mb-3">
            <label class="form-label fw-semibold">Username</label>
            <div class="input-group">
                <span class="input-group-text"><i class="bi bi-person"></i></span>
                <input type="text" name="username" class="form-control"
                       value="${not empty param.username ? param.username : ''}"
                       placeholder="Enter username" required autofocus>
            </div>
        </div>

        <div class="mb-4">
            <label class="form-label fw-semibold">Password</label>
            <div class="input-group">
                <span class="input-group-text"><i class="bi bi-lock"></i></span>
                <input type="password" name="password" id="passwordInput"
                       class="form-control" placeholder="Enter password" required>
                <button type="button" class="btn btn-outline-secondary"
                        onclick="togglePassword()">
                    <i class="bi bi-eye" id="eyeIcon"></i>
                </button>
            </div>
        </div>

        <div class="d-grid">
            <button type="submit" class="btn btn-primary">
                <i class="bi bi-box-arrow-in-right me-1"></i> Login
            </button>
        </div>
    </form>

    <div class="text-center mt-3">
        <a href="${pageContext.request.contextPath}/forgot-password"
           class="text-decoration-none" style="font-size:.85rem;">
            Forgot password?
        </a>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script>
    function togglePassword() {
        const input = document.getElementById('passwordInput');
        const icon  = document.getElementById('eyeIcon');
        if (input.type === 'password') {
            input.type = 'text';
            icon.className = 'bi bi-eye-slash';
        } else {
            input.type = 'password';
            icon.className = 'bi bi-eye';
        }
    }
</script>
</body>
</html>
