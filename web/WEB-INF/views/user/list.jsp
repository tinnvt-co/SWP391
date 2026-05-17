<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<c:set var="pageTitle" value="User List" scope="request"/>

<%@ include file="/WEB-INF/views/common/header.jsp" %>
<%@ include file="/WEB-INF/views/common/sidebar.jsp" %>

<div class="d-flex justify-content-between align-items-center mb-4">
    <h5 class="mb-0 fw-bold"><i class="bi bi-people me-2 text-primary"></i>User List</h5>
    <a href="${pageContext.request.contextPath}/users?action=add" class="btn btn-primary btn-sm">
        <i class="bi bi-plus-lg me-1"></i>Add New User
    </a>
</div>

<c:if test="${param.success eq 'added'}">
    <div class="alert alert-success alert-dismissible d-flex align-items-center gap-2" role="alert">
        <i class="bi bi-check-circle-fill"></i>
        <span>User added successfully!</span>
        <button type="button" class="btn-close ms-auto" data-bs-dismiss="alert"></button>
    </div>
</c:if>

<div class="card border-0 shadow-sm">
    <div class="card-body p-0">
        <table class="table table-hover align-middle mb-0">
            <thead class="table-light">
                <tr>
                    <th style="width:50px">#</th>
                    <th>Full Name</th>
                    <th>Username</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Role</th>
                    <th class="text-center">Status</th>
                    <th class="text-center" style="width:100px">Action</th>
                </tr>
            </thead>
            <tbody>
                <c:choose>
                    <c:when test="${not empty users}">
                        <c:forEach var="u" items="${users}" varStatus="st">
                            <tr>
                                <td class="text-muted">${st.index + 1}</td>
                                <td>
                                    <div class="d-flex align-items-center gap-2">
                                        <div class="rounded-circle bg-primary bg-opacity-10 text-primary d-flex align-items-center justify-content-center fw-bold"
                                             style="width:34px;height:34px;font-size:.8rem;">
                                            ${u.fullName.substring(0,1).toUpperCase()}
                                        </div>
                                        <span>${u.fullName}</span>
                                    </div>
                                </td>
                                <td><code>${u.username}</code></td>
                                <td>${u.email}</td>
                                <td>${not empty u.phone ? u.phone : '–'}</td>
                                <td>
                                    <c:choose>
                                        <c:when test="${u.roleName eq 'ADMIN'}">
                                            <span class="badge bg-danger">${u.roleName}</span>
                                        </c:when>
                                        <c:when test="${u.roleName eq 'MANAGER'}">
                                            <span class="badge bg-primary">${u.roleName}</span>
                                        </c:when>
                                        <c:when test="${u.roleName eq 'WAREHOUSE_MANAGER'}">
                                            <span class="badge bg-info text-dark">${u.roleName}</span>
                                        </c:when>
                                        <c:otherwise>
                                            <span class="badge bg-secondary">${u.roleName}</span>
                                        </c:otherwise>
                                    </c:choose>
                                </td>
                                <td class="text-center">
                                    <c:choose>
                                        <c:when test="${u.status eq 'ACTIVE'}">
                                            <span class="badge bg-success-subtle text-success border border-success-subtle">ACTIVE</span>
                                        </c:when>
                                        <c:otherwise>
                                            <span class="badge bg-danger-subtle text-danger border border-danger-subtle">INACTIVE</span>
                                        </c:otherwise>
                                    </c:choose>
                                </td>
                                <td class="text-center">
                                    <a href="${pageContext.request.contextPath}/users?action=detail&id=${u.userId}"
                                       class="btn btn-sm btn-outline-primary" title="View Detail">
                                        <i class="bi bi-eye"></i>
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                    </c:when>
                    <c:otherwise>
                        <tr>
                            <td colspan="8" class="text-center text-muted py-4">No users found.</td>
                        </tr>
                    </c:otherwise>
                </c:choose>
            </tbody>
        </table>
    </div>
    <div class="card-footer bg-white text-muted" style="font-size:.8rem;">
        Total: <strong>${users.size()}</strong> users
    </div>
</div>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
