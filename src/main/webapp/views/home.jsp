<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Extracurricular Activities</title>
             
    
    <style>
        /* General Page Style */
        body {
            font-family: Arial, sans-serif;
            background-color: #87CEEB; /* Sky Blue background color */
            margin: 0;
            padding: 0;
        }

        /* Header */
        header {
            background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent background for readability */
            padding: 20px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }

        header h1 {
            margin: 0;
            font-size: 22px;
            font-weight: bold;
        }

        /* Navbar */
        nav {
            display: flex;
            justify-content: center;
            padding: 10px 0;
        }

        nav a {
            margin: 0 15px;
            text-decoration: none;
            color: #333;
            font-size: 16px;
        }

        nav a:hover {
            color: #007bff;
        }

        /* Main Section */
        .main-section {
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.9); /* Slightly transparent white */
            border-radius: 10px;
            margin: 20px auto;
            width: 90%;
            max-width: 800px;
            text-align: center;
        }

        .main-section img {
            width: 100%; /* Adjust to your needs */
            max-width: 600px; /* Limit maximum width */
            height: auto; /* Maintain aspect ratio */
            border-radius: 10px;
        }

        .main-section h2 {
            font-size: 36px;
            color: #2c6e49;
            margin-bottom: 20px;
        }

        .main-section p {
            font-size: 16px;
            color: #555;
            margin-bottom: 20px;
        }

        /* Button */
        .login-button {
            background-color: #28a745;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            text-decoration: none;
        }

        .login-button:hover {
            background-color: #218838;
        }

        /* Logos Section */
        .logos-section {
            display: flex;
            justify-content: space-around;
            align-items: center;
            margin-top: 30px;
        }

        .logos-section .logo {
            text-align: center;
        }

        .logos-section img {
            width: 100px;
            height: 100px;
            object-fit: contain;
        }

        .logos-section p {
            margin-top: 10px;
            font-size: 14px;
            color: #333;
        }
    </style>
</head>
<body>
    <header>
    
        <h1>STUDENT EXTRACURRICULAR ACTIVITY MANAGEMENT</h1>
        <nav>
            <a href="create-admin">ADMIN</a>
            <a href="#">EVENTS</a>
            <a href="#">CONTACT</a>
            <a href="login">LOGIN</a>
            <a href="add-user">REGISTER</a>
        </nav>
    </header>
   
    <section class="main-section">
    
        <h2>EXTRACURRICULAR ACTIVITIES</h2>
        <p>Extracurricular activities can help students in many ways, including developing skills such as teamwork, leadership, time management, and problem-solving.</p>
        <a href="#" class="login-button">LOGIN</a>
    
</body>
</html>
