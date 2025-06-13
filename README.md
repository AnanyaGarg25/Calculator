# Calculator

A simple web-based calculator built using Java Servlets and JSP. It performs basic arithmetic operations: addition, subtraction, multiplication, and division.

## 📁 Project Structure

- `index.html`: Frontend form to input numbers and choose an operation
- `CalculatorServlet.java`: Backend logic to process and compute the result
- `result.jsp`: Displays the result or error (like divide by zero)
- `web.xml`: Servlet mapping and configuration

## 🚀 How to Setup & Run

### ✅ Prerequisites

- Java JDK 8 or above
- Apache Tomcat (or TomEE) server
- Maven (for build)
- NetBeans / IntelliJ / Eclipse (or any Java IDE)

### 🛠️ Setup Steps

1. **Clone the repository:**
   ```bash
   git clone https://github.com/AnanyaGarg25/Calculator.git
   
2. **Open the project in your IDE (e.g., NetBeans)**
   
3. **Build the project:**
  - If you're using Maven: mvn clean install
    
4. **Deploy the WAR file to Apache Tomcat:**
  - Deploy the CalculatorProject-1.0-SNAPSHOT from the target/ directory
  - Or run directly through your IDE’s Tomcat integration

5. **Access the app in your browser:**
   - http://localhost:8080/CalculatorProject/
  
## ⚙️ Usage

1. Enter two numbers
2. Select an operation: +, −, ×, or ÷
3. Click Calculate
4. Result will be displayed, or error if invalid (like divide by zero)

## 🧑‍💻 Author

Ananya Garg
GitHub: @AnanyaGarg25
