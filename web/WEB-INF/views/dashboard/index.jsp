<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<c:set var="pageTitle" value="Dashboard" scope="request"/>

<%@ include file="/WEB-INF/views/common/header.jsp" %>
<%@ include file="/WEB-INF/views/common/sidebar.jsp" %>

<div class="d-flex justify-content-between align-items-center mb-4">
    <div>
        <h5 class="mb-0 fw-bold">Dashboard</h5>
        <small class="text-muted">Welcome back, <strong>${sessionScope.loginUser.fullName}</strong>
            &nbsp;<span class="badge bg-secondary">${sessionScope.loginUser.roleName}</span>
        </small>
    </div>
</div>

<c:choose>

    <%-- ═══════════════════════════════════════
         ADMIN
    ═══════════════════════════════════════ --%>
    <c:when test="${sessionScope.loginUser.roleName eq 'ADMIN'}">
        <div class="row g-3 mb-4">
            <div class="col-sm-6 col-xl-3">
                <div class="card border-0 shadow-sm">
                    <div class="card-body d-flex align-items-center gap-3">
                        <div class="rounded-3 p-3 bg-primary bg-opacity-10">
                            <i class="bi bi-people fs-4 text-primary"></i>
                        </div>
                        <div>
                            <div class="text-muted" style="font-size:.8rem;">Total Users</div>
                            <div class="fw-bold fs-5">${totalUsers != null ? totalUsers : '–'}</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="card border-0 shadow-sm">
                    <div class="card-body d-flex align-items-center gap-3">
                        <div class="rounded-3 p-3 bg-success bg-opacity-10">
                            <i class="bi bi-building fs-4 text-success"></i>
                        </div>
                        <div>
                            <div class="text-muted" style="font-size:.8rem;">Total Warehouses</div>
                            <div class="fw-bold fs-5">${totalWarehouses != null ? totalWarehouses : '–'}</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="card border-0 shadow-sm">
                    <div class="card-body d-flex align-items-center gap-3">
                        <div class="rounded-3 p-3 bg-warning bg-opacity-10">
                            <i class="bi bi-lightning fs-4 text-warning"></i>
                        </div>
                        <div>
                            <div class="text-muted" style="font-size:.8rem;">Total Generators</div>
                            <div class="fw-bold fs-5">${totalGenerators != null ? totalGenerators : '–'}</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="card border-0 shadow-sm">
                    <div class="card-body d-flex align-items-center gap-3">
                        <div class="rounded-3 p-3 bg-info bg-opacity-10">
                            <i class="bi bi-truck fs-4 text-info"></i>
                        </div>
                        <div>
                            <div class="text-muted" style="font-size:.8rem;">Total Suppliers</div>
                            <div class="fw-bold fs-5">${totalSuppliers != null ? totalSuppliers : '–'}</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card border-0 shadow-sm">
            <div class="card-header bg-white fw-semibold">Recent Activity</div>
            <div class="card-body">
                <c:choose>
                    <c:when test="${not empty recentLogs}">
                        <ul class="list-group list-group-flush">
                            <c:forEach var="log" items="${recentLogs}">
                                <li class="list-group-item d-flex justify-content-between">
                                    <span style="font-size:.875rem;">${log.description}</span>
                                    <small class="text-muted">${log.createdAt}</small>
                                </li>
                            </c:forEach>
                        </ul>
                    </c:when>
                    <c:otherwise>
                        <p class="text-muted text-center py-3 mb-0">No recent activity.</p>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </c:when>

    <%-- ═══════════════════════════════════════
         MANAGER
    ═══════════════════════════════════════ --%>
    <c:when test="${sessionScope.loginUser.roleName eq 'MANAGER'}">
        <div class="row g-3 mb-4">
            <div class="col-sm-6 col-xl-3">
                <div class="card border-0 shadow-sm">
                    <div class="card-body d-flex align-items-center gap-3">
                        <div class="rounded-3 p-3 bg-primary bg-opacity-10">
                            <i class="bi bi-lightning fs-4 text-primary"></i>
                        </div>
                        <div>
                            <div class="text-muted" style="font-size:.8rem;">Total Generators</div>
                            <div class="fw-bold fs-5">${totalGenerators != null ? totalGenerators : '–'}</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="card border-0 shadow-sm">
                    <div class="card-body d-flex align-items-center gap-3">
                        <div class="rounded-3 p-3 bg-warning bg-opacity-10">
                            <i class="bi bi-hourglass-split fs-4 text-warning"></i>
                        </div>
                        <div>
                            <div class="text-muted" style="font-size:.8rem;">Pending Approvals</div>
                            <div class="fw-bold fs-5">${pendingApprovals != null ? pendingApprovals : '–'}</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="card border-0 shadow-sm">
                    <div class="card-body d-flex align-items-center gap-3">
                        <div class="rounded-3 p-3 bg-danger bg-opacity-10">
                            <i class="bi bi-tools fs-4 text-danger"></i>
                        </div>
                        <div>
                            <div class="text-muted" style="font-size:.8rem;">Pending Repairs</div>
                            <div class="fw-bold fs-5">${pendingRepairs != null ? pendingRepairs : '–'}</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="card border-0 shadow-sm">
                    <div class="card-body d-flex align-items-center gap-3">
                        <div class="rounded-3 p-3 bg-success bg-opacity-10">
                            <i class="bi bi-exclamation-triangle fs-4 text-success"></i>
                        </div>
                        <div>
                            <div class="text-muted" style="font-size:.8rem;">Low Stock Parts</div>
                            <div class="fw-bold fs-5">${lowStockCount != null ? lowStockCount : '–'}</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row g-3">
            <div class="col-lg-6">
                <div class="card border-0 shadow-sm">
                    <div class="card-header bg-white fw-semibold">
                        <i class="bi bi-clock-history text-warning me-2"></i>Pending Part Requests
                    </div>
                    <div class="card-body p-0">
                        <c:choose>
                            <c:when test="${not empty pendingPartRequests}">
                                <table class="table table-sm table-hover mb-0">
                                    <thead class="table-light">
                                        <tr><th>Part</th><th>Requested By</th><th>Qty</th></tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="pr" items="${pendingPartRequests}">
                                            <tr>
                                                <td>${pr.partName}</td>
                                                <td>${pr.requestedByName}</td>
                                                <td>${pr.quantity}</td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </c:when>
                            <c:otherwise>
                                <p class="text-muted text-center py-3 mb-0">No pending requests.</p>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="card border-0 shadow-sm">
                    <div class="card-header bg-white fw-semibold">
                        <i class="bi bi-exclamation-triangle text-danger me-2"></i>Low Stock Parts
                    </div>
                    <div class="card-body p-0">
                        <c:choose>
                            <c:when test="${not empty lowStockParts}">
                                <table class="table table-sm table-hover mb-0">
                                    <thead class="table-light">
                                        <tr><th>Part</th><th>Warehouse</th><th>Qty / Min</th></tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="p" items="${lowStockParts}">
                                            <tr>
                                                <td>${p.partName}</td>
                                                <td>${p.warehouseName}</td>
                                                <td class="text-danger fw-bold">${p.quantity} / ${p.minQuantity}</td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </c:when>
                            <c:otherwise>
                                <p class="text-muted text-center py-3 mb-0">All parts are stocked.</p>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </div>
        </div>
    </c:when>

    <%-- ═══════════════════════════════════════
         WAREHOUSE MANAGER
    ═══════════════════════════════════════ --%>
    <c:when test="${sessionScope.loginUser.roleName eq 'WAREHOUSE_MANAGER'}">
        <div class="row g-3 mb-4">
            <div class="col-sm-6 col-xl-3">
                <div class="card border-0 shadow-sm">
                    <div class="card-body d-flex align-items-center gap-3">
                        <div class="rounded-3 p-3 bg-primary bg-opacity-10">
                            <i class="bi bi-lightning fs-4 text-primary"></i>
                        </div>
                        <div>
                            <div class="text-muted" style="font-size:.8rem;">Generators in Warehouse</div>
                            <div class="fw-bold fs-5">${totalGenerators != null ? totalGenerators : '–'}</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="card border-0 shadow-sm">
                    <div class="card-body d-flex align-items-center gap-3">
                        <div class="rounded-3 p-3 bg-success bg-opacity-10">
                            <i class="bi bi-gear fs-4 text-success"></i>
                        </div>
                        <div>
                            <div class="text-muted" style="font-size:.8rem;">Total Parts</div>
                            <div class="fw-bold fs-5">${totalParts != null ? totalParts : '–'}</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="card border-0 shadow-sm">
                    <div class="card-body d-flex align-items-center gap-3">
                        <div class="rounded-3 p-3 bg-warning bg-opacity-10">
                            <i class="bi bi-arrow-left-right fs-4 text-warning"></i>
                        </div>
                        <div>
                            <div class="text-muted" style="font-size:.8rem;">Pending Transfers</div>
                            <div class="fw-bold fs-5">${pendingTransfers != null ? pendingTransfers : '–'}</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="card border-0 shadow-sm">
                    <div class="card-body d-flex align-items-center gap-3">
                        <div class="rounded-3 p-3 bg-danger bg-opacity-10">
                            <i class="bi bi-exclamation-triangle fs-4 text-danger"></i>
                        </div>
                        <div>
                            <div class="text-muted" style="font-size:.8rem;">Low Stock Parts</div>
                            <div class="fw-bold fs-5">${lowStockCount != null ? lowStockCount : '–'}</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card border-0 shadow-sm">
            <div class="card-header bg-white fw-semibold">
                <i class="bi bi-exclamation-triangle text-warning me-2"></i>Low Stock Alert
            </div>
            <div class="card-body p-0">
                <c:choose>
                    <c:when test="${not empty lowStockParts}">
                        <table class="table table-sm table-hover mb-0">
                            <thead class="table-light">
                                <tr><th>Part Name</th><th>Part Code</th><th class="text-center">Stock</th><th class="text-center">Min</th></tr>
                            </thead>
                            <tbody>
                                <c:forEach var="p" items="${lowStockParts}">
                                    <tr>
                                        <td>${p.partName}</td>
                                        <td><code>${p.partCode}</code></td>
                                        <td class="text-center text-danger fw-bold">${p.quantity}</td>
                                        <td class="text-center">${p.minQuantity}</td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </c:when>
                    <c:otherwise>
                        <p class="text-muted text-center py-3 mb-0">All parts are sufficiently stocked.</p>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </c:when>

    <%-- ═══════════════════════════════════════
         STAFF
    ═══════════════════════════════════════ --%>
    <c:when test="${sessionScope.loginUser.roleName eq 'STAFF'}">
        <div class="row g-3 mb-4">
            <div class="col-sm-6 col-xl-4">
                <div class="card border-0 shadow-sm">
                    <div class="card-body d-flex align-items-center gap-3">
                        <div class="rounded-3 p-3 bg-warning bg-opacity-10">
                            <i class="bi bi-tools fs-4 text-warning"></i>
                        </div>
                        <div>
                            <div class="text-muted" style="font-size:.8rem;">My Assigned Repairs</div>
                            <div class="fw-bold fs-5">${myRepairs != null ? myRepairs : '–'}</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-4">
                <div class="card border-0 shadow-sm">
                    <div class="card-body d-flex align-items-center gap-3">
                        <div class="rounded-3 p-3 bg-primary bg-opacity-10">
                            <i class="bi bi-clipboard-plus fs-4 text-primary"></i>
                        </div>
                        <div>
                            <div class="text-muted" style="font-size:.8rem;">My Part Requests</div>
                            <div class="fw-bold fs-5">${myPartRequests != null ? myPartRequests : '–'}</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-4">
                <div class="card border-0 shadow-sm">
                    <div class="card-body d-flex align-items-center gap-3">
                        <div class="rounded-3 p-3 bg-danger bg-opacity-10">
                            <i class="bi bi-exclamation-triangle fs-4 text-danger"></i>
                        </div>
                        <div>
                            <div class="text-muted" style="font-size:.8rem;">Low Stock Alerts</div>
                            <div class="fw-bold fs-5">${lowStockCount != null ? lowStockCount : '–'}</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row g-3">
            <div class="col-lg-6">
                <div class="card border-0 shadow-sm">
                    <div class="card-header bg-white fw-semibold">
                        <i class="bi bi-tools text-warning me-2"></i>My Repair Tasks
                    </div>
                    <div class="card-body p-0">
                        <c:choose>
                            <c:when test="${not empty myRepairList}">
                                <table class="table table-sm table-hover mb-0">
                                    <thead class="table-light">
                                        <tr><th>Generator</th><th>Issue</th><th>Status</th></tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="r" items="${myRepairList}">
                                            <tr>
                                                <td>${r.generatorName}</td>
                                                <td>${r.issueDescription}</td>
                                                <td><span class="badge bg-warning text-dark">${r.repairStatus}</span></td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </c:when>
                            <c:otherwise>
                                <p class="text-muted text-center py-3 mb-0">No repair tasks assigned.</p>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="card border-0 shadow-sm">
                    <div class="card-header bg-white fw-semibold">
                        <i class="bi bi-clipboard-check text-primary me-2"></i>My Part Requests
                    </div>
                    <div class="card-body p-0">
                        <c:choose>
                            <c:when test="${not empty myPartRequestList}">
                                <table class="table table-sm table-hover mb-0">
                                    <thead class="table-light">
                                        <tr><th>Part</th><th>Qty</th><th>Status</th></tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="req" items="${myPartRequestList}">
                                            <tr>
                                                <td>${req.partName}</td>
                                                <td>${req.quantity}</td>
                                                <td>
                                                    <span class="badge ${req.status eq 'APPROVED' ? 'bg-success' : req.status eq 'REJECTED' ? 'bg-danger' : 'bg-secondary'}">
                                                        ${req.status}
                                                    </span>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </c:when>
                            <c:otherwise>
                                <p class="text-muted text-center py-3 mb-0">No part requests submitted.</p>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </div>
        </div>
    </c:when>

</c:choose>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
