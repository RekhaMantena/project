<%@ page import="java.util.*, com.jfsd_lab.exp_6.model.*, org.springframework.web.util.HtmlUtils"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Event</title>
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
        form {
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 400px;
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
            color: #333;
            margin-top: 10px;
            display: block;
        }

        input[type="text"],
        textarea,
        input[type="number"],
        select {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        button {
            background-color: #007bff;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            margin-top: 20px;
            font-size: 16px;
        }

        button:hover {
            background-color: #0056b3;
        }

        .message {
            color: green;
            margin-bottom: 15px;
            text-align: center;
        }

        a {
            display: block;
            text-align: center;
            margin-top: 20px;
            color: #007bff;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <h2>Edit Event</h2>

    <%
    String message = (String) request.getAttribute("message");
    if (message != null && !message.isEmpty()) {
    %>
    <div class="message"><%=HtmlUtils.htmlEscape(message)%></div>
    <%
    }
    %>

    <%
    @SuppressWarnings("unused")
    Event event = (Event) request.getAttribute("event");
    List<User> allUsers = (List<User>) request.getAttribute("allUsers");
    %>

    <form action="<%=request.getContextPath()%>/editEvent/<%=event.getId()%>" method="post">
        <input type="hidden" name="id" value="<%=event.getId()%>"/>

        <label for="title">Event Title:</label>
        <input type="text" name="title" id="title" value="<%=event.getTitle()%>" required/>

        <label for="description">Description:</label>
        <textarea name="description" id="description" rows="4" required><%=event.getDescription()%></textarea>

        <label for="amount">Amount:</label>
        <input type="number" name="amnt" id="amount" value="<%=event.getAmnt()%>" required/>

        <label for="resourcePerson">Resource Person:</label>
        <select name="resourcePerson.id" id="resourcePerson" class="select2">
            <option value="" disabled>Select a user</option>
            <%
            if (allUsers != null && !allUsers.isEmpty()) {
                for (User user : allUsers) {
            %>
            <option value="<%=user.getId()%>" <%= event.getResourcePerson() != null && event.getResourcePerson().getId() == user.getId() ? "selected" : "" %>>
                <%=user.getName()%>
            </option>
            <%
                }
            }
            %>
        </select>

        <button type="submit">Update Event</button>
    </form>

    <a href="<%=request.getContextPath()%>/manage-events">Back to Manage Events</a>
</body>
</html>
