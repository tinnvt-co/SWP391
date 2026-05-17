<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c"  uri="jakarta.tags.core" %>
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>
<c:set var="pageTitle" value="Role Permissions" scope="request"/>

<%@ include file="/WEB-INF/views/common/header.jsp" %>
<%@ include file="/WEB-INF/views/common/sidebar.jsp" %>

<div class="d-flex justify-content-between align-items-center mb-4">
    <h5 class="mb-0 fw-bold"><i class="bi bi-shield-lock me-2 text-primary"></i>Role Permissions — ${role.roleName}</h5>
    <a href="${pageContext.request.contextPath}/roles" class="btn btn-outline-secondary btn-sm">
        <i class="bi bi-arrow-left me-1"></i>Back to List
    </a>
</div>

<div class="card border-0 shadow-sm mb-4" style="max-width:800px;">
    <div class="card-header bg-white fw-semibold">Role Information</div>
    <div class="card-body">
        <dl class="row mb-0">
            <dt class="col-sm-3 text-muted fw-normal">Role Name</dt>
            <dd class="col-sm-9"><span class="badge bg-primary fs-6">${role.roleName}</span></dd>
            <dt class="col-sm-3 text-muted fw-normal">Description</dt>
            <dd class="col-sm-9">${role.description}</dd>
            <dt class="col-sm-3 text-muted fw-normal">Status</dt>
            <dd class="col-sm-9">
                <span class="badge ${role.status eq 'ACTIVE' ? 'bg-success' : 'bg-danger'}">${role.status}</span>
            </dd>
        </dl>
    </div>
</div>

<div class="card border-0 shadow-sm" style="max-width:800px;">
    <div class="card-header bg-white fw-semibold">Permissions</div>
    <div class="card-body p-0">
        <table class="table table-sm table-hover mb-0">
            <thead class="table-light">
                <tr>
                    <th style="width:50%">Feature</th>
                    <th class="text-center">Access</th>
                </tr>
            </thead>
            <tbody>
                <c:choose>

                    <c:when test="${role.roleName eq 'ADMIN'}">
                        <c:forEach var="feature" items="${['Manage Users','Manage Roles','Manage Warehouses','Manage Suppliers','View Generators','View Parts','View Inventory','View Reports','View Activity Logs']}">
                            <tr>
                                <td>${feature}</td>
                                <td class="text-center"><i class="bi bi-check-circle-fill text-success"></i></td>
                            </tr>
                        </c:forEach>
                    </c:when>

                    <c:when test="${role.roleName eq 'MANAGER'}">
                        <c:forEach var="item" items="${[
                            'View Warehouses:true','View Suppliers:true',
                            'View Generators:true','View Parts:true',
                            'View Inventory Transactions:true','View Stock Transfers:true',
                            'Approve Part Requests:true','Approve Purchase Requests:true',
                            'Create Purchase Orders:true','View Repairs:true',
                            'Export Reports:true','Manage Users:false','Manage Roles:false']}">
                            <tr>
                                <td>${fn:substringBefore(item, ':')}</td>
                                <td class="text-center">
                                    <c:choose>
                                        <c:when test="${fn:substringAfter(item, ':') eq 'true'}">
                                            <i class="bi bi-check-circle-fill text-success"></i>
                                        </c:when>
                                        <c:otherwise>
                                            <i class="bi bi-x-circle-fill text-danger"></i>
                                        </c:otherwise>
                                    </c:choose>
                                </td>
                            </tr>
                        </c:forEach>
                    </c:when>

                    <c:when test="${role.roleName eq 'WAREHOUSE_MANAGER'}">
                        <c:forEach var="item" items="${[
                            'View Generators:true','View Parts:true',
                            'Import Inventory:true','Export Inventory:true',
                            'Create Stock Transfers:true','Create Purchase Requests:true',
                            'Assign Repair Tasks:true','View Part Requests:true',
                            'Approve Part Requests:false','Manage Users:false',
                            'Export Reports:false']}">
                            <tr>
                                <td>${fn:substringBefore(item, ':')}</td>
                                <td class="text-center">
                                    <c:choose>
                                        <c:when test="${fn:substringAfter(item, ':') eq 'true'}">
                                            <i class="bi bi-check-circle-fill text-success"></i>
                                        </c:when>
                                        <c:otherwise>
                                            <i class="bi bi-x-circle-fill text-danger"></i>
                                        </c:otherwise>
                                    </c:choose>
                                </td>
                            </tr>
                        </c:forEach>
                    </c:when>

                    <c:when test="${role.roleName eq 'STAFF'}">
                        <c:forEach var="item" items="${[
                            'View Generators:true','View Parts:true',
                            'Create Part Requests:true','Update Repair Status:true',
                            'Report Generator Issues:true',
                            'Import/Export Inventory:false','Approve Requests:false',
                            'Create Purchase Orders:false','Export Reports:false']}">
                            <tr>
                                <td>${fn:substringBefore(item, ':')}</td>
                                <td class="text-center">
                                    <c:choose>
                                        <c:when test="${fn:substringAfter(item, ':') eq 'true'}">
                                            <i class="bi bi-check-circle-fill text-success"></i>
                                        </c:when>
                                        <c:otherwise>
                                            <i class="bi bi-x-circle-fill text-danger"></i>
                                        </c:otherwise>
                                    </c:choose>
                                </td>
                            </tr>
                        </c:forEach>
                    </c:when>

                </c:choose>
            </tbody>
        </table>
    </div>
</div>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
