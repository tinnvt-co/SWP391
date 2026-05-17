<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reset Password</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <style>
        body { background-color: #f0f4f8; min-height: 100vh; display: flex; align-items: center; justify-content: center; }
        .card { width: 100%; max-width: 420px; border: none; border-radius: 12px; box-shadow: 0 4px 24px rgba(0,0,0,.08); }
    </style>
</head>
<body>
<div class="card p-4">
    <div class="text-center mb-3">
        <i class="bi bi-lock-fill fs-1 text-primary"></i>
        <h5 class="mt-2 fw-bold">Set New Password</h5>
    </div>

    <c:if test="${not empty errorMessage}">
        <div class="alert alert-danger py-2">${errorMessage}</div>
    </c:if>

    <c:choose>
        <c:when test="${not empty token}">
            <form action="${pageContext.request.contextPath}/reset-password" method="post" novalidate id="resetForm">
                <input type="hidden" name="token" value="${token}">

                <div class="mb-3">
                    <label class="form-label fw-semibold">New Password <span class="text-danger">*</span></label>
                    <div class="input-group">
                        <span class="input-group-text"><i class="bi bi-lock"></i></span>
                        <input type="password" name="newPassword" id="newPw" class="form-control"
                               placeholder="Enter new password" required minlength="6">
                        <button type="button" class="btn btn-outline-secondary" onclick="togglePw('newPw','eye1')">
                            <i class="bi bi-eye" id="eye1"></i>
                        </button>
                    </div>
                </div>

                <div class="mb-4">
                    <label class="form-label fw-semibold">Confirm Password <span class="text-danger">*</span></label>
                    <div class="input-group">
                        <span class="input-group-text"><i class="bi bi-lock"></i></span>
                        <input type="password" name="confirmPassword" id="confirmPw" class="form-control"
                               placeholder="Confirm new password" required minlength="6">
                        <button type="button" class="btn btn-outline-secondary" onclick="togglePw('confirmPw','eye2')">
                            <i class="bi bi-eye" id="eye2"></i>
                        </button>
                    </div>
                </div>

                <div class="d-grid">
                    <button type="submit" class="btn btn-primary">Reset Password</button>
                </div>
            </form>
        </c:when>
        <c:otherwise>
            <div class="text-center">
                <a href="${pageContext.request.contextPath}/forgot-password" class="btn btn-primary">Request New Link</a>
            </div>
        </c:otherwise>
    </c:choose>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script>
    function togglePw(inputId, iconId) {
        const inp = document.getElementById(inputId);
        const ico = document.getElementById(iconId);
        inp.type = inp.type === 'password' ? 'text' : 'password';
        ico.className = inp.type === 'password' ? 'bi bi-eye' : 'bi bi-eye-slash';
    }
</script>
</body>
</html>
