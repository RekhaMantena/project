<%@ page import="java.util.List, com.jfsd_lab.exp_6.model.User"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
    <title>Add Event</title>
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>

    <style>
        /* General Page Style */
        body {
            font-family: Arial, sans-serif;
            background-color: #87CEEB; /* Sky Blue background */
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        /* Form Container */
        .form-container {
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

        /* Table Styling */
        table {
            width: 100%;
        }

        table td {
            padding: 10px;
            font-size: 16px;
        }

        /* Input and Textarea Styling */
        input[type="text"], textarea, select {
            width: 100%;
            padding: 8px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        /* Button Styling */
        input[type="submit"] {
            background-color: #28a745;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        input[type="submit"]:hover {
            background-color: #218838;
        }

    </style>

    <script>
        $(document).ready(function() {
            $('.select2').select2({
                placeholder : "Select a user",
                allowClear : true
            });
        });
    </script>
</head>
<body>

    <div class="form-container">
        <h2>Add Event</h2>

        <form:form action="add-event" method="post" modelAttribute="event">
            <table>
                <tr>
                    <td>Title:</td>
                    <td><form:input path="title" /></td>
                </tr>
                <tr>
                    <td>Description:</td>
                    <td><form:textarea path="description" rows="3" /></td>
                </tr>
                <tr>
                    <td>Amount:</td>
                    <td><form:input path="amnt" /></td>
                </tr>
                <tr>
                    <td>Resource Person:</td>
                    <td>
                        <form:select path="resourcePerson.id" cssClass="select2">
                            <form:option value="" label="Select a user" />
                            <%
                            @SuppressWarnings("unchecked")
                            List<User> allUsers = (List<User>) request.getAttribute("allUsers");
                            for (User user : allUsers) {
                            %>
                            <form:option value="<%= user.getId() %>"><%=user.getName()%></form:option>
                            <%
                            }
                            %>
                        </form:select>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Add Event" />
                    </td>
                </tr>
            </table>
        </form:form>
    </div>

</body>
</html>
