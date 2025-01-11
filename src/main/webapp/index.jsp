<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Customer Management System</title>
    <style>
        body {
            font-family: 'Segoe UI', system-ui, -apple-system, sans-serif;
            background-color: #f1f5f9;
            color: #1e293b;
            line-height: 1.6;
            margin: 0;
            padding: 2rem;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 1rem;
        }

        h1 {
            color: #1e293b;
            font-size: 2.5rem;
            font-weight: 600;
            margin-bottom: 2rem;
            text-align: center;
        }

        .card-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 2rem;
            padding: 1rem;
        }

        .card {
            background: white;
            border-radius: 1rem;
            box-shadow: 0 4px 6px -1px rgb(0 0 0 / 0.1);
            transition: transform 0.2s, box-shadow 0.2s;
            overflow: hidden;
            text-decoration: none;
            color: inherit;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 15px -3px rgb(0 0 0 / 0.1);
        }

        .card-header {
            padding: 1.5rem;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100px;
        }

        .card.add .card-header {
            background-color: #2563eb;
        }

        .card.view .card-header {
            background-color: #16a34a;
        }

        .card.delete .card-header {
            background-color: #dc2626;
        }

        .card.update .card-header {
            background-color: #eab308;
        }

        .card-icon {
            font-size: 2.5rem;
            color: white;
        }

        .card-content {
            padding: 1.5rem;
            text-align: center;
        }

        .card-title {
            font-size: 1.25rem;
            font-weight: 600;
            margin-bottom: 0.5rem;
            color: #1e293b;
        }

        .card-description {
            color: #64748b;
            font-size: 0.875rem;
            margin-bottom: 1rem;
        }

        /* Simple icon classes using content property */
        .icon-add::before {
            content: "➕";
        }
        .icon-view::before {
            content: "👥";
        }
        .icon-delete::before {
            content: "🗑️";
        }
        .icon-update::before {
            content: "📝";
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Customer Management System</h1>
    <div class="card-grid">
        <a href="customer-save.jsp" class="card add">
            <div class="card-header">
                <span class="card-icon icon-add"></span>
            </div>
            <div class="card-content">
                <h2 class="card-title">Add Customer</h2>
                <p class="card-description">Register a new customer in the system</p>
            </div>
        </a>

        <a href="customer-list" class="card view">
            <div class="card-header">
                <span class="card-icon icon-view"></span>
            </div>
            <div class="card-content">
                <h2 class="card-title">View Customers</h2>
                <p class="card-description">See all registered customers</p>
            </div>
        </a>

        <a href="customer-delete.jsp" class="card delete">
            <div class="card-header">
                <span class="card-icon icon-delete"></span>
            </div>
            <div class="card-content">
                <h2 class="card-title">Delete Customer</h2>
                <p class="card-description">Remove customer from the system</p>
            </div>
        </a>

        <a href="customer-update.jsp" class="card update">
            <div class="card-header">
                <span class="card-icon icon-update"></span>
            </div>
            <div class="card-content">
                <h2 class="card-title">Update Customer</h2>
                <p class="card-description">Modify customer information</p>
            </div>
        </a>
    </div>
</div>
</body>
</html>