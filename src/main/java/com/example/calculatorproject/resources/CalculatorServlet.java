package com.example.calculatorproject.resources;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

//@WebServlet("/calculate")
public class CalculatorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        double num1 = Double.parseDouble(request.getParameter("num1"));
        double num2 = Double.parseDouble(request.getParameter("num2"));
        String operation = request.getParameter("operation");

        double result = 0;
        String symbol = "";

        switch (operation) {
            case "add":
                result = num1 + num2;
                symbol = "+";
                break;
            case "sub":
                result = num1 - num2;
                symbol = "-";
                break;
            case "mul":
                result = num1 * num2;
                symbol = "*";
                break;
            case "div":
                if (num2 != 0) {
                    result = num1 / num2;
                    symbol = "/";
                } else {
                    request.setAttribute("error", "Cannot divide by zero!");
                    request.getRequestDispatcher("result.jsp").forward(request, response);
                    return;
                }
                break;
        }

        request.setAttribute("num1", num1);
        request.setAttribute("num2", num2);
        request.setAttribute("symbol", symbol);
        request.setAttribute("result", result);

        request.getRequestDispatcher("result.jsp").forward(request, response);
    }
}
