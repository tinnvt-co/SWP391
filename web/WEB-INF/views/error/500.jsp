<%@ page contentType="text/html;charset=UTF-8" isErrorPage="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>500 – Server Error</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <style>
        body { background:#f0f4f8; display:flex; align-items:center; justify-content:center; min-height:100vh; }
    </style>
</head>
<body>
<div class="text-center">
    <i class="bi bi-exclamation-octagon" style="font-size:4rem; color:#fd7e14;"></i>
    <h2 class="mt-3 fw-bold">500 – Internal Server Error</h2>
    <p class="text-muted">Something went wrong on our end. Please try again later.</p>
    <a href="${pageContext.request.contextPath}/dashboard" class="btn btn-primary mt-2">
        <i class="bi bi-house me-1"></i>Back to Dashboard
    </a>
</div>
</body>
</html>
