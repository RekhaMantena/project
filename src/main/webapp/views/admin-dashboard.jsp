<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
    <title>Admin Dashboard</title>
    <style>
        /* General Page Style */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        /* Dashboard Container */
        .dashboard-container {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 400px;
            text-align: center;
        }

        /* Heading */
        h2 {
            font-size: 24px;
            color: #333;
            margin-bottom: 20px;
        }

        p {
            font-size: 16px;
            color: #555;
        }

        /* Button Styles */
        .button {
            display: inline-block;
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            margin: 10px 0;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            cursor: pointer;
            font-size: 16px;
        }

        .button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

    <div class="dashboard-container">
        <h2>Admin Module</h2>

        <%
        // Retrieve user from session
        com.jfsd_lab.exp_6.model.User user = (com.jfsd_lab.exp_6.model.User) session.getAttribute("user");
        String message = (String) session.getAttribute("message");

        if (message != null) {
        %>
        <p><%=message%></p>
        <%
        // Clear message after displaying
        session.removeAttribute("message");
        }

        if (user != null) {
        %>
        <p>Welcome to admin, <%=user.getName()%>! You have admin privileges.</p>
        <%
        } else {
        %>
        <p>User not found in session. Please log in again.</p>
        <%
        }
        %>

        <!-- Buttons for Admin Actions -->
        <a href="<%=request.getContextPath()%>/logout" class="button">Logout</a>
        <a href="add-event" class="button">Add Event</a>
        <a href="manage-events" class="button">Manage Events</a>
    </div>

</body>
</html>
