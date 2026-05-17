<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<c:set var="pageTitle" value="Dashboard" scope="request" />

<%@ include file="/WEB-INF/views/common/header.jsp" %>
<%@ include file="/WEB-INF/views/common/sidebar.jsp" %>

<!-- ===== DASHBOARD CONTENT ===== -->

<div class="d-flex justify-content-between align-items-center mb-4">
    <h5 class="mb-0 fw-bold">Dashboard</h5>
    <span class="text-muted" style="font-size:.85rem;">
        Welcome back, <strong>${sessionScope.loginUser.fullName}</strong>
    </span>
</div>

<!-- Stat cards row -->
<div class="row g-3 mb-4">

    <div class="col-sm-6 col-xl-3">
        <div class="card border-0 shadow-sm h-100">
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
        <div class="card border-0 shadow-sm h-100">
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
        <div class="card border-0 shadow-sm h-100">
            <div class="card-body d-flex align-items-center gap-3">
                <div class="rounded-3 p-3 bg-warning bg-opacity-10">
                    <i class="bi bi-tools fs-4 text-warning"></i>
                </div>
                <div>
                    <div class="text-muted" style="font-size:.8rem;">Pending Repairs</div>
                    <div class="fw-bold fs-5">${pendingRepairs != null ? pendingRepairs : '–'}</div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-sm-6 col-xl-3">
        <div class="card border-0 shadow-sm h-100">
            <div class="card-body d-flex align-items-center gap-3">
                <div class="rounded-3 p-3 bg-danger bg-opacity-10">
                    <i class="bi bi-clipboard-x fs-4 text-danger"></i>
                </div>
                <div>
                    <div class="text-muted" style="font-size:.8rem;">Pending Approvals</div>
                    <div class="fw-bold fs-5">${pendingApprovals != null ? pendingApprovals : '–'}</div>
                </div>
            </div>
        </div>
    </div>

</div>

<!-- Second row: Low stock alert + Recent activity placeholder -->
<div class="row g-3">

    <div class="col-lg-6">
        <div class="card border-0 shadow-sm">
            <div class="card-header bg-white border-0 fw-semibold">
                <i class="bi bi-exclamation-triangle text-warning me-2"></i>Low Stock Parts
            </div>
            <div class="card-body p-0">
                <c:choose>
                    <c:when test="${not empty lowStockParts}">
                        <table class="table table-sm table-hover mb-0">
                            <thead class="table-light">
                                <tr>
                                    <th>Part Name</th>
                                    <th>Warehouse</th>
                                    <th class="text-center">Qty</th>
                                    <th class="text-center">Min</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="p" items="${lowStockParts}">
                                    <tr>
                                        <td>${p.partName}</td>
                                        <td>${p.warehouseName}</td>
                                        <td class="text-center text-danger fw-bold">${p.quantity}</td>
                                        <td class="text-center">${p.minQuantity}</td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </c:when>
                    <c:otherwise>
                        <p class="text-muted text-center py-4 mb-0" style="font-size:.875rem;">
                            No low-stock parts at the moment.
                        </p>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </div>

    <div class="col-lg-6">
        <div class="card border-0 shadow-sm">
            <div class="card-header bg-white border-0 fw-semibold">
                <i class="bi bi-clock-history text-primary me-2"></i>Recent Activity
            </div>
            <div class="card-body p-0">
                <c:choose>
                    <c:when test="${not empty recentLogs}">
                        <ul class="list-group list-group-flush">
                            <c:forEach var="log" items="${recentLogs}">
                                <li class="list-group-item d-flex justify-content-between align-items-start">
                                    <div>
                                        <div style="font-size:.85rem;">${log.description}</div>
                                        <small class="text-muted">${log.userName}</small>
                                    </div>
                                    <small class="text-muted">${log.createdAt}</small>
                                </li>
                            </c:forEach>
                        </ul>
                    </c:when>
                    <c:otherwise>
                        <p class="text-muted text-center py-4 mb-0" style="font-size:.875rem;">
                            No recent activity.
                        </p>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </div>

</div>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
