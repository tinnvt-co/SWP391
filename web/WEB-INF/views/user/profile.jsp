<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<c:set var="pageTitle" value="My Profile" scope="request"/>

<%@ include file="/WEB-INF/views/common/header.jsp" %>
<%@ include file="/WEB-INF/views/common/sidebar.jsp" %>

<div class="d-flex justify-content-between align-items-center mb-4">
    <h5 class="mb-0 fw-bold"><i class="bi bi-person-circle me-2 text-primary"></i>My Profile</h5>
    <a href="${pageContext.request.contextPath}/change-password" class="btn btn-outline-warning btn-sm">
        <i class="bi bi-key me-1"></i>Change Password
    </a>
</div>

<c:if test="${param.success eq 'password_changed'}">
    <div class="alert alert-success alert-dismissible d-flex align-items-center gap-2">
        <i class="bi bi-check-circle-fill"></i>
        <span>Password changed successfully!</span>
        <button type="button" class="btn-close ms-auto" data-bs-dismiss="alert"></button>
    </div>
</c:if>

<div class="row g-3">
    <div class="col-lg-4">
        <div class="card border-0 shadow-sm text-center p-4">
            <div class="mx-auto mb-3 rounded-circle bg-primary bg-opacity-10 text-primary d-flex align-items-center justify-content-center fw-bold"
                 style="width:80px;height:80px;font-size:2rem;">
                ${user.fullName.substring(0,1).toUpperCase()}
            </div>
            <h6 class="fw-bold mb-1">${user.fullName}</h6>
            <p class="text-muted mb-2" style="font-size:.85rem;"><code>${user.username}</code></p>
            <c:choose>
                <c:when test="${user.roleName eq 'ADMIN'}">
                    <span class="badge bg-danger px-3 py-2">${user.roleName}</span>
                </c:when>
                <c:when test="${user.roleName eq 'MANAGER'}">
                    <span class="badge bg-primary px-3 py-2">${user.roleName}</span>
                </c:when>
                <c:when test="${user.roleName eq 'WAREHOUSE_MANAGER'}">
                    <span class="badge bg-info text-dark px-3 py-2">${user.roleName}</span>
                </c:when>
                <c:otherwise>
                    <span class="badge bg-secondary px-3 py-2">${user.roleName}</span>
                </c:otherwise>
            </c:choose>
            <hr class="my-3">
            <span class="badge ${user.status eq 'ACTIVE' ? 'bg-success-subtle text-success border border-success-subtle' : 'bg-danger-subtle text-danger border border-danger-subtle'} px-3 py-2">
                ${user.status}
            </span>
        </div>
    </div>

    <div class="col-lg-8">
        <div class="card border-0 shadow-sm">
            <div class="card-header bg-white fw-semibold border-0 pt-3">
                <i class="bi bi-info-circle me-2 text-primary"></i>Account Information
            </div>
            <div class="card-body">
                <dl class="row mb-0">
                    <dt class="col-sm-4 text-muted fw-normal">Full Name</dt>
                    <dd class="col-sm-8">${user.fullName}</dd>

                    <dt class="col-sm-4 text-muted fw-normal">Username</dt>
                    <dd class="col-sm-8"><code>${user.username}</code></dd>

                    <dt class="col-sm-4 text-muted fw-normal">Email</dt>
                    <dd class="col-sm-8"><a href="mailto:${user.email}">${user.email}</a></dd>

                    <dt class="col-sm-4 text-muted fw-normal">Phone</dt>
                    <dd class="col-sm-8">${not empty user.phone ? user.phone : '–'}</dd>

                    <dt class="col-sm-4 text-muted fw-normal">Address</dt>
                    <dd class="col-sm-8">${not empty user.address ? user.address : '–'}</dd>

                    <dt class="col-sm-4 text-muted fw-normal">Member Since</dt>
                    <dd class="col-sm-8">${user.createdAt}</dd>
                </dl>
            </div>
        </div>
    </div>
</div>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
