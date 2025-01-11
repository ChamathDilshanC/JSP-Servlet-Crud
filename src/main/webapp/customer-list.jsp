<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="lk.ijse.customerjsp.DTO.CustomerDTO" %>
<html>
<head>
    <title>Customer List Management</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Segoe UI', system-ui, -apple-system, sans-serif;
            background-color: #f1f5f9;
            color: #1e293b;
            padding: 2rem;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            background: white;
            padding: 2rem;
            border-radius: 1rem;
            box-shadow: 0 4px 6px -1px rgb(0 0 0 / 0.1);
        }

        h1 {
            color: #1e293b;
            font-size: 2rem;
            font-weight: 600;
            margin-bottom: 2rem;
            display: flex;
            justify-content: center;
            align-items: center;

        }

        .table {
            margin-top: 1rem;
            border-radius: 0.5rem;
            overflow: hidden;
        }

        .table th {
            background-color: #2563eb !important;
            color: white;
            font-weight: 500;
            padding: 1rem;
            text-align: left;
        }

        .table td {
            padding: 1rem;
            border-bottom: 1px solid #e2e8f0;
        }

        .table tr:hover {
            background-color: #f8fafc;
        }

        .alert-info {
            background-color: #e0f2fe;
            color: #0284c7;
            padding: 1rem;
            border-radius: 0.5rem;
            border: 1px solid #bae6fd;
            margin-top: 1rem;
        }
    </style>
</head>
<body>
<div class="container">
    <h1 class="mb-4">Customer List</h1>

    <%
        List<CustomerDTO> customerList = (List<CustomerDTO>) request.getAttribute("customers");
        if (customerList != null && !customerList.isEmpty()) {
    %>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Address</th>
            <th>Email</th>
        </tr>
        </thead>
        <tbody>
        <% for (CustomerDTO customer : customerList) { %>
        <tr>
            <td><%= customer.getId() %></td>
            <td><%= customer.getName() %></td>
            <td><%= customer.getAddress() %></td>
            <td><%= customer.getEmail() %></td>
        </tr>
        <% } %>
        </tbody>
    </table>
    <% } else { %>
    <div class="alert alert-info">
        No customers found in the database.
    </div>
    <% } %>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>