# 🚀 Customer Management System

A modern web application for managing customer data built with JSP (JavaServer Pages) and Servlets.

## ✨ Features

- 📝 Add new customers with details (name, address, email)
- 👥 View all registered customers in a responsive table
- 🔄 Update existing customer information
- ❌ Remove customers from the system
- ✅ Form validation and error handling
- 🎯 Clean and modern user interface

## 🛠️ Technologies Used

- **Java EE** - Enterprise edition for building web applications
- **JSP** - JavaServer Pages for dynamic content
- **Servlets** - Handle HTTP requests and business logic
- **JDBC** - Database connectivity for Java
- **MySQL** - Database management
- **HTML/CSS** - Frontend structure and styling
- **JavaScript** - Client-side validations

## 📦 Prerequisites

- JDK 8 or higher
- Apache Tomcat 9.x
- MySQL 8.x
- Maven (for dependency management)
- IDE (IntelliJ IDEA/Eclipse)

## 🚀 Getting Started

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/customer-management.git
   ```

2. **Set up the database**
   ```sql
   CREATE DATABASE customer_db;
   USE customer_db;

   CREATE TABLE customers (
       id INT PRIMARY KEY AUTO_INCREMENT,
       name VARCHAR(100) NOT NULL,
       address VARCHAR(200) NOT NULL,
       email VARCHAR(100) UNIQUE NOT NULL
   );
   ```

3. **Configure database connection**
   - Update `database.properties` with your MySQL credentials

4. **Build the project**
   ```bash
   mvn clean install
   ```

5. **Deploy to Tomcat**
   - Deploy the generated WAR file to Tomcat

## 🏗️ Project Structure

```
customer-management/
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   ├── controller/
│   │   │   ├── model/
│   │   │   ├── dao/
│   │   │   └── util/
│   │   ├── webapp/
│   │   │   ├── WEB-INF/
│   │   │   ├── index.jsp
│   │   │   ├── customer-save.jsp
│   │   │   ├── customer-list.jsp
│   │   │   ├── customer-update.jsp
│   │   │   └── customer-delete.jsp
│   │   └── resources/
│   └── test/
├── pom.xml
└── README.md
```
## 🌟 Features in Detail

### Customer Management
- Create new customer records
- View comprehensive customer list
- Update existing customer information
- Delete customer records
- Input validation and error handling

### User Interface
- Responsive design
- Modern card-based layout
- Clean and intuitive forms
- Interactive feedback
- Success/Error notifications

## 🔒 Security Features

- Input validation
- SQL injection prevention
- XSS attack prevention
- Form submission validation

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👥 Contact

GitHub - [@Mygithub](https://github.com/ChamathDilshanC)

Project Link: [https://github.com/ChamathDilshanC/JSP-Servlet-Crud)

## 🙏 Acknowledgments

- Java EE Documentation
- Apache Tomcat Documentation
- MySQL Documentation
- Modern CSS Tips and Tricks
