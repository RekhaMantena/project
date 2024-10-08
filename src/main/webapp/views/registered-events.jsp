<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="java.util.*, com.jfsd_lab.exp_6.model.*"%>

<!DOCTYPE html>
<html>
<head>
    <title>Registered Events</title>
    <style>
        /* General Page Style */
        body {
            font-family: Arial, sans-serif;
            background-color: #87CEEB; /* Sky-blue background */
            margin: 0;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        h1 {
            color: #333;
        }

        /* Table Style */
        table {
            border-collapse: collapse;
            width: 80%;
            margin-top: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f2f2f2;
            color: #333;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        td {
            color: #555;
        }

        /* Button to go back to dashboard */
        .back-button {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .back-button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h1>Events You Have Registered For</h1>

    <%
    @SuppressWarnings("all")
    List<Event> registeredEvents = (List<Event>) request.getAttribute("registeredEvents");

    if (registeredEvents != null && !registeredEvents.isEmpty()) {
    %>
    <table>
        <thead>
            <tr>
                <th>Event ID</th>
                <th>Title</th>
                <th>Description</th>
                <th>Amount</th>
                <th>Resource Person</th>
            </tr>
        </thead>
        <tbody>
            <%
            for (Event event : registeredEvents) {
            %>
            <tr>
                <td><%=event.getId()%></td>
                <td><%=event.getTitle()%></td>
                <td><%=event.getDescription()%></td>
                <td><%=event.getAmnt()%></td>
                <td><%=event.getResourcePerson() != null ? event.getResourcePerson().getName() : "N/A"%></td>
            </tr>
            <%
            }
            %>
        </tbody>
    </table>
    <%
    } else {
    %>
    <p>You have not registered for any events yet.</p>
    <%
    }
    %>

    <a href="<%=request.getContextPath()%>/user-dashboard" class="back-button">Back to Dashboard</a>

</body>
</html>
