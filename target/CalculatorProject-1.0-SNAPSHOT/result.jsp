<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Calculation Result</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, #74ebd5 0%, #ACB6E5 100%);
            height: 100vh;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .result-container {
            background-color: white;
            padding: 40px;
            border-radius: 16px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 350px;
        }

        h1 {
            margin-bottom: 20px;
            color: #333;
        }

        p {
            font-size: 20px;
            margin: 15px 0;
        }

        .error {
            color: red;
            font-weight: bold;
            margin: 20px 0;
        }

        a {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 8px;
            font-size: 16px;
        }

        a:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="result-container">
        <h1>Calculation Result</h1>
        <%
            String error = (String) request.getAttribute("error");
            if (error != null) {
        %>
            <p class="error"><%= error %></p>
        <%
            } else {
                double num1 = (Double) request.getAttribute("num1");
                double num2 = (Double) request.getAttribute("num2");
                String symbol = (String) request.getAttribute("symbol");
                double result = (Double) request.getAttribute("result");
        %>
            <p><%= num1 %> <%= symbol %> <%= num2 %> = <b><%= result %></b></p>
        <%
            }
        %>
        <a href="index.html">🔙 Go Back</a>
    </div>
</body>
</html>
