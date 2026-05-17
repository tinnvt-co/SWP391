<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<c:set var="pageTitle" value="Role List" scope="request"/>

<%@ include file="/WEB-INF/views/common/header.jsp" %>
<%@ include file="/WEB-INF/views/common/sidebar.jsp" %>

<div class="d-flex justify-content-between align-items-center mb-4">
    <h5 class="mb-0 fw-bold"><i class="bi bi-shield-lock me-2 text-primary"></i>Role List</h5>
</div>

<div class="row g-3">
    <c:forEach var="r" items="${roles}">
        <div class="col-md-6">
            <div class="card border-0 shadow-sm h-100">
                <div class="card-body d-flex align-items-center gap-3">
                    <div class="rounded-3 p-3
                        <c:choose>
                            <c:when test='${r.roleName eq "ADMIN"}'>bg-danger bg-opacity-10</c:when>
                            <c:when test='${r.roleName eq "MANAGER"}'>bg-primary bg-opacity-10</c:when>
                            <c:when test='${r.roleName eq "WAREHOUSE_MANAGER"}'>bg-info bg-opacity-10</c:when>
                            <c:otherwise>bg-secondary bg-opacity-10</c:otherwise>
                        </c:choose>">
                        <i class="bi bi-shield fs-4
                            <c:choose>
                                <c:when test='${r.roleName eq "ADMIN"}'>text-danger</c:when>
                                <c:when test='${r.roleName eq "MANAGER"}'>text-primary</c:when>
                                <c:when test='${r.roleName eq "WAREHOUSE_MANAGER"}'>text-info</c:when>
                                <c:otherwise>text-secondary</c:otherwise>
                            </c:choose>"></i>
                    </div>
                    <div class="flex-grow-1">
                        <div class="fw-bold">${r.roleName}</div>
                        <small class="text-muted">${r.description}</small>
                    </div>
                    <a href="${pageContext.request.contextPath}/roles?action=detail&id=${r.roleId}"
                       class="btn btn-sm btn-outline-primary">
                        <i class="bi bi-eye me-1"></i>Permissions
                    </a>
                </div>
            </div>
        </div>
    </c:forEach>
</div>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
