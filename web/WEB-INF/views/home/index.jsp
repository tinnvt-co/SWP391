<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Generator Management System</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <style>
        body { background-color: #f8f9fa; }

        .navbar-brand span { color: #f5a623; }

        .hero {
            background: linear-gradient(135deg, #1e2a38 0%, #2c3e50 100%);
            color: #fff;
            padding: 100px 0 80px;
        }
        .hero h1 { font-size: 2.6rem; font-weight: 800; }
        .hero p  { font-size: 1.1rem; color: #c1cad5; max-width: 560px; }

        .feature-card {
            border: none;
            border-radius: 12px;
            transition: transform 0.2s, box-shadow 0.2s;
        }
        .feature-card:hover {
            transform: translateY(-4px);
            box-shadow: 0 8px 24px rgba(0,0,0,.1) !important;
        }
        .feature-icon {
            width: 56px; height: 56px;
            border-radius: 14px;
            display: flex; align-items: center; justify-content: center;
            font-size: 1.5rem;
            margin-bottom: 1rem;
        }

        footer { background-color: #1e2a38; color: #6c7a8d; }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark" style="background-color:#1e2a38;">
    <div class="container">
        <a class="navbar-brand fw-bold" href="${pageContext.request.contextPath}/home">
            <i class="bi bi-lightning-charge-fill text-warning me-2"></i>
            Gen<span>MS</span>
        </a>
        <div class="ms-auto">
            <a href="${pageContext.request.contextPath}/login" class="btn btn-warning btn-sm fw-semibold px-4">
                <i class="bi bi-box-arrow-in-right me-1"></i>Login
            </a>
        </div>
    </div>
</nav>

<section class="hero">
    <div class="container">
        <div class="row align-items-center g-5">
            <div class="col-lg-6">
                <p class="text-warning fw-semibold mb-2" style="letter-spacing:.05em;">GENERATOR MANAGEMENT SYSTEM</p>
                <h1 class="mb-3">Manage Your Generator Warehouses Efficiently</h1>
                <p class="mb-4">
                    A centralized platform for tracking generators, spare parts, repairs,
                    and inventory across multiple warehouses — built for managers, warehouse staff, and technicians.
                </p>
                <a href="${pageContext.request.contextPath}/login" class="btn btn-warning btn-lg fw-semibold px-5">
                    <i class="bi bi-box-arrow-in-right me-2"></i>Get Started
                </a>
            </div>
            <div class="col-lg-6 text-center d-none d-lg-block">
                <i class="bi bi-lightning-charge-fill" style="font-size:10rem; color:rgba(245,166,35,.2);"></i>
            </div>
        </div>
    </div>
</section>

<section class="py-5">
    <div class="container">
        <div class="text-center mb-5">
            <h2 class="fw-bold">Key Features</h2>
            <p class="text-muted">Everything you need to run a generator warehouse operation</p>
        </div>

        <div class="row g-4">

            <div class="col-md-4">
                <div class="card feature-card shadow-sm h-100 p-4">
                    <div class="feature-icon bg-primary bg-opacity-10 text-primary">
                        <i class="bi bi-building"></i>
                    </div>
                    <h6 class="fw-bold">Warehouse Management</h6>
                    <p class="text-muted small mb-0">
                        Create and manage multiple warehouses. Assign warehouse managers and track inventory per location.
                    </p>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card feature-card shadow-sm h-100 p-4">
                    <div class="feature-icon bg-warning bg-opacity-10 text-warning">
                        <i class="bi bi-lightning"></i>
                    </div>
                    <h6 class="fw-bold">Generator Tracking</h6>
                    <p class="text-muted small mb-0">
                        Track every generator from import to export. Monitor status: in stock, under repair, or maintenance.
                    </p>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card feature-card shadow-sm h-100 p-4">
                    <div class="feature-icon bg-success bg-opacity-10 text-success">
                        <i class="bi bi-gear"></i>
                    </div>
                    <h6 class="fw-bold">Parts & Inventory</h6>
                    <p class="text-muted small mb-0">
                        Manage spare parts stock. Get low-stock alerts and handle import/export transactions.
                    </p>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card feature-card shadow-sm h-100 p-4">
                    <div class="feature-icon bg-info bg-opacity-10 text-info">
                        <i class="bi bi-clipboard-check"></i>
                    </div>
                    <h6 class="fw-bold">Approval Workflow</h6>
                    <p class="text-muted small mb-0">
                        Part requests, purchase requests, and stock transfers all go through a structured manager-approval flow.
                    </p>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card feature-card shadow-sm h-100 p-4">
                    <div class="feature-icon bg-danger bg-opacity-10 text-danger">
                        <i class="bi bi-tools"></i>
                    </div>
                    <h6 class="fw-bold">Repair & Maintenance</h6>
                    <p class="text-muted small mb-0">
                        Staff can report faults. Warehouse managers assign repair tasks and track progress to completion.
                    </p>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card feature-card shadow-sm h-100 p-4">
                    <div class="feature-icon bg-secondary bg-opacity-10 text-secondary">
                        <i class="bi bi-bar-chart-line"></i>
                    </div>
                    <h6 class="fw-bold">Reports & Export</h6>
                    <p class="text-muted small mb-0">
                        Managers can generate inventory and repair reports, then export to Excel or PDF with one click.
                    </p>
                </div>
            </div>

        </div>
    </div>
</section>

<section class="py-5 bg-white">
    <div class="container">
        <div class="text-center mb-4">
            <h2 class="fw-bold">User Roles</h2>
            <p class="text-muted">Designed for 4 different roles in the organization</p>
        </div>
        <div class="row g-3 justify-content-center">

            <div class="col-sm-6 col-lg-3">
                <div class="text-center p-3 rounded-3 border">
                    <div class="fs-2 mb-2">🛡️</div>
                    <div class="fw-bold text-danger">Admin</div>
                    <small class="text-muted">System management &amp; user accounts</small>
                </div>
            </div>
            <div class="col-sm-6 col-lg-3">
                <div class="text-center p-3 rounded-3 border">
                    <div class="fs-2 mb-2">👔</div>
                    <div class="fw-bold text-primary">Manager</div>
                    <small class="text-muted">Approvals, orders &amp; reports</small>
                </div>
            </div>
            <div class="col-sm-6 col-lg-3">
                <div class="text-center p-3 rounded-3 border">
                    <div class="fs-2 mb-2">🏭</div>
                    <div class="fw-bold text-info">Warehouse Manager</div>
                    <small class="text-muted">Inventory &amp; stock transfers</small>
                </div>
            </div>
            <div class="col-sm-6 col-lg-3">
                <div class="text-center p-3 rounded-3 border">
                    <div class="fs-2 mb-2">🔧</div>
                    <div class="fw-bold text-secondary">Staff</div>
                    <small class="text-muted">Repairs &amp; part requests</small>
                </div>
            </div>

        </div>

        <div class="text-center mt-5">
            <a href="${pageContext.request.contextPath}/login" class="btn btn-dark btn-lg px-5">
                <i class="bi bi-box-arrow-in-right me-2"></i>Login to Your Account
            </a>
        </div>
    </div>
</section>

<footer class="py-4 text-center">
    <div class="container">
        <p class="mb-0" style="font-size:.85rem;">
            &copy; 2026 Generator Management System &nbsp;|&nbsp; SWP391 Project
        </p>
    </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
