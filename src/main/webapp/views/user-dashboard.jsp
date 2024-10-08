<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
    <title>User Dashboard</title>
    <style>
        /* General Page Style */
        body {
            font-family: Arial, sans-serif;
            background-color: #87CEEB; /* Sky-blue background */
            margin: 0;
            padding: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        /* Dashboard container */
        .dashboard-container {
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 400px;
            text-align: center;
        }

        h2 {
            color: #333;
            margin-bottom: 20px;
        }

        p {
            font-size: 16px;
            color: #555;
        }

        /* Buttons */
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

        /* Links section */
        .links {
            margin-top: 20px;
        }
    </style>
</head>
<body>

    <div class="dashboard-container">
        <h2>User Dashboard</h2>

        <!-- Display message if available -->
        <%
        String message = (String) request.getAttribute("message");
        if (message != null) {
        %>
        <p><%=message%></p>
        <%
        }
        %>

        <!-- Retrieve and display user info -->
        <%
        com.jfsd_lab.exp_6.model.User user = (com.jfsd_lab.exp_6.model.User) session.getAttribute("user");
        if (user != null) {
        %>
        <p>
            Welcome to your dashboard, <%=user.getUsername()%>! You are a regular user.
        </p>

        <div class="links">
            <a href="<%=request.getContextPath()%>/logout" class="button">Logout</a>
            <a href="register-events" class="button">Register Events</a>
            <a href="registered-events" class="button">My Registered Events</a>
        </div>

        <%
        } else {
            // Redirect to login if user is not found in session
            response.sendRedirect("login.jsp");
        }
        %>

    </div>

</body>
</html>
