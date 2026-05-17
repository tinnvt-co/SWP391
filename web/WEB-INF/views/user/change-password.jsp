<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<c:set var="pageTitle" value="Change Password" scope="request"/>

<%@ include file="/WEB-INF/views/common/header.jsp" %>
<%@ include file="/WEB-INF/views/common/sidebar.jsp" %>

<div class="d-flex justify-content-between align-items-center mb-4">
    <h5 class="mb-0 fw-bold"><i class="bi bi-key me-2 text-warning"></i>Change Password</h5>
    <a href="${pageContext.request.contextPath}/profile" class="btn btn-outline-secondary btn-sm">
        <i class="bi bi-arrow-left me-1"></i>Back to Profile
    </a>
</div>

<div class="card border-0 shadow-sm" style="max-width:480px;">
    <div class="card-body p-4">

        <c:if test="${not empty errorMessage}">
            <div class="alert alert-danger d-flex align-items-center gap-2 mb-3">
                <i class="bi bi-exclamation-circle-fill"></i>
                <span>${errorMessage}</span>
            </div>
        </c:if>

        <form action="${pageContext.request.contextPath}/change-password" method="post" novalidate id="changePwForm">

            <div class="mb-3">
                <label class="form-label fw-semibold">Current Password <span class="text-danger">*</span></label>
                <div class="input-group">
                    <span class="input-group-text"><i class="bi bi-lock"></i></span>
                    <input type="password" name="currentPassword" id="cur" class="form-control"
                           placeholder="Enter current password" required>
                    <button type="button" class="btn btn-outline-secondary" onclick="togglePw('cur','eye0')">
                        <i class="bi bi-eye" id="eye0"></i>
                    </button>
                </div>
            </div>

            <div class="mb-3">
                <label class="form-label fw-semibold">New Password <span class="text-danger">*</span></label>
                <div class="input-group">
                    <span class="input-group-text"><i class="bi bi-lock-fill"></i></span>
                    <input type="password" name="newPassword" id="newPw" class="form-control"
                           placeholder="At least 6 characters" required minlength="6">
                    <button type="button" class="btn btn-outline-secondary" onclick="togglePw('newPw','eye1')">
                        <i class="bi bi-eye" id="eye1"></i>
                    </button>
                </div>
            </div>

            <div class="mb-4">
                <label class="form-label fw-semibold">Confirm New Password <span class="text-danger">*</span></label>
                <div class="input-group">
                    <span class="input-group-text"><i class="bi bi-lock-fill"></i></span>
                    <input type="password" name="confirmPassword" id="confirmPw" class="form-control"
                           placeholder="Repeat new password" required minlength="6">
                    <button type="button" class="btn btn-outline-secondary" onclick="togglePw('confirmPw','eye2')">
                        <i class="bi bi-eye" id="eye2"></i>
                    </button>
                </div>
            </div>

            <div class="d-flex gap-2">
                <button type="submit" class="btn btn-warning px-4 fw-semibold">
                    <i class="bi bi-check-lg me-1"></i>Update Password
                </button>
                <a href="${pageContext.request.contextPath}/profile" class="btn btn-outline-secondary px-4">Cancel</a>
            </div>
        </form>
    </div>
</div>

<script>
    function togglePw(inputId, iconId) {
        const inp = document.getElementById(inputId);
        const ico = document.getElementById(iconId);
        inp.type = inp.type === 'password' ? 'text' : 'password';
        ico.className = inp.type === 'password' ? 'bi bi-eye' : 'bi bi-eye-slash';
    }
    document.getElementById('changePwForm').addEventListener('submit', function(e) {
        if (!this.checkValidity()) { e.preventDefault(); e.stopPropagation(); }
        this.classList.add('was-validated');
    });
</script>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
