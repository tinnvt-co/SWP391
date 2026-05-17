<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${not empty pageTitle ? pageTitle : 'Generator Management System'}</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <style>
        body { background-color: #f4f6f9; }

        #sidebar {
            width: 250px;
            min-height: 100vh;
            background-color: #1e2a38;
            position: fixed;
            top: 0; left: 0;
            overflow-y: auto;
            z-index: 1000;
            transition: width 0.2s;
        }
        #sidebar .sidebar-brand {
            padding: 1rem 1.25rem;
            color: #fff;
            font-size: 1rem;
            font-weight: 700;
            border-bottom: 1px solid rgba(255,255,255,.08);
            white-space: nowrap;
        }
        #sidebar .nav-label {
            font-size: .7rem;
            text-transform: uppercase;
            letter-spacing: .08em;
            color: #6c7a8d;
            padding: .75rem 1.25rem .25rem;
        }
        #sidebar .nav-link {
            color: #c1cad5;
            padding: .5rem 1.25rem;
            font-size: .875rem;
            display: flex;
            align-items: center;
            gap: .6rem;
            border-radius: 0;
            white-space: nowrap;
        }
        #sidebar .nav-link:hover,
        #sidebar .nav-link.active {
            color: #fff;
            background-color: rgba(255,255,255,.07);
        }
        #sidebar .nav-link.active {
            border-left: 3px solid #4e91fd;
        }
        #sidebar .nav-link i { font-size: 1rem; width: 1.2rem; text-align: center; }

        #main-content {
            margin-left: 250px;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }
        #topbar {
            background: #fff;
            border-bottom: 1px solid #e3e6ea;
            padding: .5rem 1.5rem;
            display: flex;
            align-items: center;
            justify-content: space-between;
            position: sticky;
            top: 0;
            z-index: 999;
        }
        .page-wrapper { padding: 1.5rem; flex: 1; }
    </style>
</head>
<body>
