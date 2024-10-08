<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add User</title>
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

        /* Form container */
        .form-container {
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

        label {
            font-size: 14px;
            color: #333;
        }

        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
            margin-top: 20px;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        a {
            display: inline-block;
            margin-top: 15px;
            color: #007bff;
            text-decoration: none;
            font-size: 14px;
        }

        a:hover {
            text-decoration: underline;
        }

        p {
            font-size: 14px;
            color: #555;
        }
    </style>
</head>
<body>

    <div class="form-container">
        <h2>Register</h2>

        <!-- Display message if available -->
        <%
        String message = (String) request.getAttribute("message");
        if (message != null) {
        %>
        <p><%=message%></p>
        <%
        }
        %>

        <form action="add-user" method="post">
            <label for="name">Name:</label> 
            <input type="text" id="name" name="name" required><br>

            <label for="username">Username:</label> 
            <input type="text" id="username" name="username" required><br>

            <label for="password">Password:</label> 
            <input type="password" id="password" name="password" required><br>

            <input type="submit" value="Register">
        </form>

        <a href="home">Back to Home</a>
    </div>

</body>
</html>
