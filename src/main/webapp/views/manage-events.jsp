<%@ page import="java.util.*, com.jfsd_lab.exp_6.model.*"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
    <title>Manage Events</title>
    <style>
        /* General Page Style */
        body {
            font-family: Arial, sans-serif;
            background-color: #87CEEB; /* Sky-blue background */
            margin: 0;
            padding: 20px;
        }

        /* Container for table */
        .container {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 1000px;
            margin: 0 auto;
        }

        /* Table Styling */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
            color: #333;
        }

        tr:hover {
            background-color: #f5f5f5;
        }

        td a {
            color: #007bff;
            text-decoration: none;
        }

        td a:hover {
            text-decoration: underline;
        }

        .del-link {
            color: red;
        }

        /* Back to Dashboard Button */
        .back-link {
            display: inline-block;
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            text-decoration: none;
            font-size: 14px;
        }

        .back-link:hover {
            background-color: #0056b3;
        }

    </style>
</head>
<body>

    <div class="container">
        <h2>Manage Events</h2>

        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Title</th>
                    <th>Description</th>
                    <th>Amount</th>
                    <th>Resource Person</th>
                    <th>Registered Users</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <%
                @SuppressWarnings("unchecked")
                List<Event> allEvents = (List<Event>) request.getAttribute("allEvents");
                if (allEvents != null && !allEvents.isEmpty()) {
                    for (Event event : allEvents) {
                %>
                <tr>
                    <td><%=event.getId()%></td>
                    <td><%=event.getTitle()%></td>
                    <td><%=event.getDescription()%></td>
                    <td><%=event.getAmnt()%></td>
                    <td><%=event.getResourcePerson().getName()%></td>
                    <td>
                        <%
                        List<User> registeredUsers = event.getRegisteredUsers();
                        if (registeredUsers == null) {
                            registeredUsers = new ArrayList<>();
                        }
                        if (registeredUsers != null && !registeredUsers.isEmpty()) {
                            for (User user : registeredUsers) {
                        %> 
                        <span><%=user.getName()%></span><br /> 
                        <%
                        }
                        } else {
                        %> 
                        No registered users. 
                        <%
                        }
                        %>
                    </td>
                    <td>
                        <a href="<%=request.getContextPath()%>/editEvent/<%=event.getId()%>">Edit</a> 
                        <a class="del-link" href="<%=request.getContextPath()%>/deleteEvent/<%=event.getId()%>"
                            onclick="return confirm('Are you sure you want to delete this event?');">Delete</a>
                    </td>
                </tr>
                <%
                }
                } else {
                %>
                <tr>
                    <td colspan="7">No events found.</td>
                </tr>
                <%
                }
                %>
            </tbody>
        </table>

        <a href="<%=request.getContextPath()%>/admin-dashboard" class="back-link">Back to Dashboard</a>
    </div>

</body>
</html>
