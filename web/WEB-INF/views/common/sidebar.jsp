<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%
    model.User loginUser = (model.User) session.getAttribute("loginUser");
    String cp = request.getContextPath();
    String uri = request.getRequestURI();
%>

<!-- ===== SIDEBAR ===== -->
<nav id="sidebar">
    <div class="sidebar-brand">
        <i class="bi bi-lightning-charge-fill text-warning"></i>
        &nbsp;GenMS
    </div>

    <ul class="nav flex-column mt-2 pb-3">

        <!-- Dashboard -->
        <li class="nav-item">
            <a href="<%= cp %>/dashboard"
               class="nav-link <%= uri.contains("/dashboard") ? "active" : "" %>">
                <i class="bi bi-speedometer2"></i> Dashboard
            </a>
        </li>

        <!-- ── Admin section ── -->
        <% if (loginUser != null && (loginUser.isAdmin())) { %>
        <div class="nav-label">Administration</div>

        <li class="nav-item">
            <a href="<%= cp %>/users"
               class="nav-link <%= uri.contains("/users") ? "active" : "" %>">
                <i class="bi bi-people"></i> Users
            </a>
        </li>
        <% } %>

        <!-- ── Manager / Admin ── -->
        <% if (loginUser != null && (loginUser.isAdmin() || loginUser.isManager())) { %>
        <div class="nav-label">Management</div>

        <li class="nav-item">
            <a href="<%= cp %>/warehouses"
               class="nav-link <%= uri.contains("/warehouses") ? "active" : "" %>">
                <i class="bi bi-building"></i> Warehouses
            </a>
        </li>
        <li class="nav-item">
            <a href="<%= cp %>/suppliers"
               class="nav-link <%= uri.contains("/suppliers") ? "active" : "" %>">
                <i class="bi bi-truck"></i> Suppliers
            </a>
        </li>
        <% } %>

        <!-- ── Inventory (all roles) ── -->
        <div class="nav-label">Inventory</div>

        <li class="nav-item">
            <a href="<%= cp %>/generators"
               class="nav-link <%= uri.contains("/generators") ? "active" : "" %>">
                <i class="bi bi-lightning"></i> Generators
            </a>
        </li>
        <li class="nav-item">
            <a href="<%= cp %>/parts"
               class="nav-link <%= uri.contains("/parts") ? "active" : "" %>">
                <i class="bi bi-gear"></i> Parts
            </a>
        </li>
        <li class="nav-item">
            <a href="<%= cp %>/inventory"
               class="nav-link <%= uri.contains("/inventory") ? "active" : "" %>">
                <i class="bi bi-box-seam"></i> Transactions
            </a>
        </li>
        <li class="nav-item">
            <a href="<%= cp %>/transfers"
               class="nav-link <%= uri.contains("/transfers") ? "active" : "" %>">
                <i class="bi bi-arrow-left-right"></i> Stock Transfers
            </a>
        </li>

        <!-- ── Requests / Orders ── -->
        <div class="nav-label">Requests</div>

        <li class="nav-item">
            <a href="<%= cp %>/part-requests"
               class="nav-link <%= uri.contains("/part-requests") ? "active" : "" %>">
                <i class="bi bi-clipboard-plus"></i> Part Requests
            </a>
        </li>
        <li class="nav-item">
            <a href="<%= cp %>/purchase-requests"
               class="nav-link <%= uri.contains("/purchase-requests") ? "active" : "" %>">
                <i class="bi bi-cart-plus"></i> Purchase Requests
            </a>
        </li>
        <% if (loginUser != null && (loginUser.isAdmin() || loginUser.isManager())) { %>
        <li class="nav-item">
            <a href="<%= cp %>/purchase-orders"
               class="nav-link <%= uri.contains("/purchase-orders") ? "active" : "" %>">
                <i class="bi bi-receipt"></i> Purchase Orders
            </a>
        </li>
        <% } %>

        <!-- ── Repairs ── -->
        <div class="nav-label">Maintenance</div>

        <li class="nav-item">
            <a href="<%= cp %>/repairs"
               class="nav-link <%= uri.contains("/repairs") ? "active" : "" %>">
                <i class="bi bi-tools"></i> Repairs
            </a>
        </li>

        <!-- ── Reports (Manager/Admin) ── -->
        <% if (loginUser != null && (loginUser.isAdmin() || loginUser.isManager())) { %>
        <div class="nav-label">Reports</div>

        <li class="nav-item">
            <a href="<%= cp %>/reports"
               class="nav-link <%= uri.contains("/reports") ? "active" : "" %>">
                <i class="bi bi-bar-chart-line"></i> Reports
            </a>
        </li>
        <% } %>

    </ul>
</nav>

<!-- ===== MAIN WRAPPER ===== -->
<div id="main-content">

    <!-- Topbar -->
    <div id="topbar">
        <span class="fw-semibold text-secondary" style="font-size:.9rem;">
            ${not empty pageTitle ? pageTitle : ''}
        </span>

        <div class="d-flex align-items-center gap-3">
            <!-- Notification bell -->
            <a href="<%= cp %>/notifications" class="text-secondary position-relative" style="font-size:1.2rem;">
                <i class="bi bi-bell"></i>
                <%-- TODO: badge count from session --%>
            </a>

            <!-- User dropdown -->
            <div class="dropdown">
                <button class="btn btn-sm btn-light dropdown-toggle d-flex align-items-center gap-2"
                        data-bs-toggle="dropdown">
                    <i class="bi bi-person-circle fs-5"></i>
                    <span style="font-size:.85rem;">
                        <%= loginUser != null ? loginUser.getFullName() : "Guest" %>
                    </span>
                </button>
                <ul class="dropdown-menu dropdown-menu-end">
                    <li><a class="dropdown-item" href="<%= cp %>/profile">
                        <i class="bi bi-person me-2"></i>Profile</a></li>
                    <li><hr class="dropdown-divider"></li>
                    <li><a class="dropdown-item text-danger" href="<%= cp %>/logout">
                        <i class="bi bi-box-arrow-right me-2"></i>Logout</a></li>
                </ul>
            </div>
        </div>
    </div>

    <!-- Page content starts here -->
    <div class="page-wrapper">
