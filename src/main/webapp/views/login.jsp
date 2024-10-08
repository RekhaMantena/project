<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
    <title>Login</title>
    <style>
        /* General Page Style */
        body {
            font-family: Arial, sans-serif;
            background-color: #87CEEB; /* Sky Blue background color */
            margin: 0;
            padding: 0;
            text-align: center;
        }

        h2 {
            color: #2c6e49;
        }

        /* Form Styles */
        form {
            background-color: rgba(255, 255, 255, 0.9); /* Slightly transparent white */
            padding: 20px;
            border-radius: 10px;
            display: inline-block; /* Center the form */
        }

        label {
            display: block;
            margin-top: 10px;
        }

        input[type="text"],
        input[type="password"] {
            padding: 10px;
            margin-top: 5px;
            width: 200px;
        }

        input[type="submit"] {
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #218838;
        }

        a {
            display: block;
            margin-top: 20px;
            text-decoration: none;
            color: #007bff;
        }
    </style>
</head>
<body>
    <h2>Login</h2>

    <!-- Display message if available -->
    <%
    String message = (String) request.getAttribute("message");
    if (message != null) {
    %>
        <p><%=message%></p>
    <%
    }
    %>

    <form action="login" method="post">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required>
        <br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>
        <br>
        <input type="submit" value="Login">
    </form>
    <a href="index.html">Back to home</a>
</body>
</html>
