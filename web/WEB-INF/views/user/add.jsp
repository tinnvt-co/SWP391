<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<c:set var="pageTitle" value="Add New User" scope="request"/>

<%@ include file="/WEB-INF/views/common/header.jsp" %>
<%@ include file="/WEB-INF/views/common/sidebar.jsp" %>

<div class="d-flex justify-content-between align-items-center mb-4">
    <h5 class="mb-0 fw-bold"><i class="bi bi-person-plus me-2 text-primary"></i>Add New User</h5>
    <a href="${pageContext.request.contextPath}/users" class="btn btn-outline-secondary btn-sm">
        <i class="bi bi-arrow-left me-1"></i>Back to List
    </a>
</div>

<div class="card border-0 shadow-sm" style="max-width:680px;">
    <div class="card-body p-4">

        <c:if test="${not empty errorMessage}">
            <div class="alert alert-danger d-flex align-items-center gap-2 mb-3">
                <i class="bi bi-exclamation-circle-fill"></i>
                <span>${errorMessage}</span>
            </div>
        </c:if>

        <form action="${pageContext.request.contextPath}/users?action=add"
              method="post" novalidate id="addUserForm">

            <div class="row g-3">

                <div class="col-12">
                    <label class="form-label fw-semibold">Full Name <span class="text-danger">*</span></label>
                    <input type="text" name="fullName" class="form-control"
                           value="${param.fullName}" placeholder="Enter full name" required>
                </div>

                <div class="col-md-6">
                    <label class="form-label fw-semibold">Username <span class="text-danger">*</span></label>
                    <input type="text" name="username" class="form-control"
                           value="${param.username}" placeholder="Enter username" required>
                </div>

                <div class="col-md-6">
                    <label class="form-label fw-semibold">Password <span class="text-danger">*</span></label>
                    <div class="input-group">
                        <input type="password" name="password" id="pwInput"
                               class="form-control" placeholder="Enter password" required minlength="6">
                        <button type="button" class="btn btn-outline-secondary"
                                onclick="togglePw()">
                            <i class="bi bi-eye" id="pwEye"></i>
                        </button>
                    </div>
                </div>

                <div class="col-12">
                    <label class="form-label fw-semibold">Email <span class="text-danger">*</span></label>
                    <input type="email" name="email" class="form-control"
                           value="${param.email}" placeholder="Enter email" required>
                </div>

                <div class="col-md-6">
                    <label class="form-label fw-semibold">Phone</label>
                    <input type="text" name="phone" class="form-control"
                           value="${param.phone}" placeholder="Enter phone number">
                </div>

                <div class="col-md-6">
                    <label class="form-label fw-semibold">Role <span class="text-danger">*</span></label>
                    <select name="roleId" class="form-select" required>
                        <option value="">-- Select Role --</option>
                        <c:forEach var="r" items="${roles}">
                            <option value="${r.roleId}"
                                    <c:if test="${param.roleId eq r.roleId}">selected</c:if>>
                                ${r.roleName}
                            </option>
                        </c:forEach>
                    </select>
                </div>

                <div class="col-12">
                    <label class="form-label fw-semibold">Address</label>
                    <input type="text" name="address" class="form-control"
                           value="${param.address}" placeholder="Enter address">
                </div>

                <div class="col-md-6">
                    <label class="form-label fw-semibold">Status</label>
                    <select name="status" class="form-select">
                        <option value="ACTIVE"  selected>ACTIVE</option>
                        <option value="INACTIVE">INACTIVE</option>
                    </select>
                </div>

            </div>
            <hr class="my-4">

            <div class="d-flex gap-2">
                <button type="submit" class="btn btn-primary px-4">
                    <i class="bi bi-check-lg me-1"></i>Save User
                </button>
                <a href="${pageContext.request.contextPath}/users"
                   class="btn btn-outline-secondary px-4">Cancel</a>
            </div>

        </form>
    </div>
</div>

<script>
    function togglePw() {
        const inp = document.getElementById('pwInput');
        const ico = document.getElementById('pwEye');
        inp.type = inp.type === 'password' ? 'text' : 'password';
        ico.className = inp.type === 'password' ? 'bi bi-eye' : 'bi bi-eye-slash';
    }

    // Bootstrap client-side validation
    document.getElementById('addUserForm').addEventListener('submit', function(e) {
        if (!this.checkValidity()) {
            e.preventDefault();
            e.stopPropagation();
        }
        this.classList.add('was-validated');
    });
</script>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
