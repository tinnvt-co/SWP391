<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<c:set var="pageTitle" value="Edit User" scope="request"/>

<%@ include file="/WEB-INF/views/common/header.jsp" %>
<%@ include file="/WEB-INF/views/common/sidebar.jsp" %>

<div class="d-flex justify-content-between align-items-center mb-4">
    <h5 class="mb-0 fw-bold"><i class="bi bi-pencil-square me-2 text-primary"></i>Edit User</h5>
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

        <form action="${pageContext.request.contextPath}/users?action=edit" method="post" novalidate id="editForm">
            <input type="hidden" name="userId" value="${user.userId}">

            <div class="row g-3">

                <div class="col-12">
                    <label class="form-label fw-semibold">Full Name <span class="text-danger">*</span></label>
                    <input type="text" name="fullName" class="form-control"
                           value="${user.fullName}" required>
                </div>

                <div class="col-12">
                    <label class="form-label fw-semibold">Username</label>
                    <input type="text" class="form-control bg-light" value="${user.username}" disabled>
                    <small class="text-muted">Username cannot be changed.</small>
                </div>

                <div class="col-12">
                    <label class="form-label fw-semibold">Email <span class="text-danger">*</span></label>
                    <input type="email" name="email" class="form-control"
                           value="${user.email}" required>
                </div>

                <div class="col-md-6">
                    <label class="form-label fw-semibold">Phone</label>
                    <input type="text" name="phone" class="form-control"
                           value="${user.phone}">
                </div>

                <div class="col-md-6">
                    <label class="form-label fw-semibold">Role <span class="text-danger">*</span></label>
                    <select name="roleId" class="form-select" required>
                        <c:forEach var="r" items="${roles}">
                            <option value="${r.roleId}"
                                    <c:if test="${r.roleId eq user.roleId}">selected</c:if>>
                                ${r.roleName}
                            </option>
                        </c:forEach>
                    </select>
                </div>

                <div class="col-12">
                    <label class="form-label fw-semibold">Address</label>
                    <input type="text" name="address" class="form-control"
                           value="${user.address}">
                </div>

                <div class="col-md-6">
                    <label class="form-label fw-semibold">Status</label>
                    <select name="status" class="form-select">
                        <option value="ACTIVE"   <c:if test="${user.status eq 'ACTIVE'}">selected</c:if>>ACTIVE</option>
                        <option value="INACTIVE" <c:if test="${user.status eq 'INACTIVE'}">selected</c:if>>INACTIVE</option>
                    </select>
                </div>

            </div>

            <hr class="my-4">

            <div class="d-flex gap-2">
                <button type="submit" class="btn btn-primary px-4">
                    <i class="bi bi-check-lg me-1"></i>Save Changes
                </button>
                <a href="${pageContext.request.contextPath}/users" class="btn btn-outline-secondary px-4">Cancel</a>
            </div>
        </form>
    </div>
</div>

<script>
    document.getElementById('editForm').addEventListener('submit', function(e) {
        if (!this.checkValidity()) {
            e.preventDefault();
            e.stopPropagation();
        }
        this.classList.add('was-validated');
    });
</script>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
