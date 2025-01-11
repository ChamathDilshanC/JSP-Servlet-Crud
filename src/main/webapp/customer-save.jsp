<%--
  Created by IntelliJ IDEA.
  User: Chamath
  Date: 1/11/2025
  Time: 10:53 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer Save Management</title>
</head>
<style>
    body {
        font-family: 'Segoe UI', system-ui, -apple-system, sans-serif;
        background-color: #f1f5f9;
        color: #1e293b;
        line-height: 1.6;
        margin: 0;
        padding: 2rem;
    }

    h1 {
        color: #1e293b;
        font-size: 2rem;
        font-weight: 600;
        margin-bottom: 2rem;
    }

    .textField {
        width: 100%;
        max-width: 300px;
        padding: 0.75rem 1rem;
        border: 1px solid #e2e8f0;
        border-radius: 0.5rem;
        font-size: 1rem;
        transition: border-color 0.2s, box-shadow 0.2s;
        margin: 0.5rem 0;
    }

    .textField:focus {
        outline: none;
        border-color: #2563eb;
        box-shadow: 0 0 0 3px rgba(37, 99, 235, 0.1);
    }

    .saveButton {
        background-color: #2563eb;
        color: white;
        padding: 0.75rem 1.5rem;
        border-radius: 0.5rem;
        border: none;
        font-size: 1rem;
        font-weight: 500;
        cursor: pointer;
        transition: background-color 0.2s;
        width: auto;
        min-width: 200px;
        height: auto;
    }

    .saveButton:hover {
        background-color: #1d4ed8;
    }

    form {
        background: white;
        padding: 2rem;
        border-radius: 1rem;
        box-shadow: 0 4px 6px -1px rgb(0 0 0 / 0.1);
        max-width: 600px;
        margin: 0 auto;
    }

    label {
        display: block;
        font-weight: 500;
        margin-bottom: 0.5rem;
        color: #1e293b;
    }

    h3 {
        margin-top: 1rem;
        padding: 1rem;
        border-radius: 0.5rem;
    }

    h3[style*="color: green"] {
        background-color: #dcfce7;
        color: #16a34a !important;
        border: 1px solid #86efac;
    }

    h3[style*="color: red"] {
        background-color: #fee2e2;
        color: #dc2626 !important;
        border: 1px solid #fecaca;
    }
    .textField:invalid {
        border-color: #dc2626;
    }
</style>
<body>

<h1>Save Customer</h1>
<form action="customer-save" method="POST" onsubmit="return validateForm()">
    <label for="txtCustomerName">Customer Name:</label><br/><br/>
    <input type="text" id="txtCustomerName" name="customer_name" placeholder="Name" class="textField" required/><br/><br/>

    <label for="txtCustomerAddress">Customer Address :</label><br/><br/>
    <input type="text" id="txtCustomerAddress" name="customer_address" placeholder="Address" class="textField" required/><br/><br/>

    <label for="txtCustomerEmail">Customer Email :</label><br/><br/>
    <input type="email" id="txtCustomerEmail" name="customer_email" placeholder="Email" class="textField" required/><br/><br/>

    <button type="submit" class="saveButton">Save Customer</button>
</form>

<%
    String success = request.getParameter("success");
    String error = request.getParameter("error");
%>

<%
    if (success != null){
%>
<div>
    <h3 style="color: green"> <%=success%></h3>
</div>
<%
    }
    if (error!= null) {
%>
<div>
    <h3 style="color: red"> <%=error%></h3>
</div>
<%
    }
%>

<script>
    function validateForm() {
        let name = document.getElementById('txtCustomerName').value;
        let address = document.getElementById('txtCustomerAddress').value;
        let email = document.getElementById('txtCustomerEmail').value;

        if (name === '' || address === '' || email === '') {
            alert('Please fill in all fields');
            return false;
        }
        return true;
    }
</script>

</body>
</html>
