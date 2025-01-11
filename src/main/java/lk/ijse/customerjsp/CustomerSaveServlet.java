package lk.ijse.customerjsp;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "customerSaveServlet",  urlPatterns = {"/customer-save"})
public class CustomerSaveServlet extends HttpServlet {

    private String URL = "jdbc:mysql://localhost:3306/customerdb";
    private String USER = "root";
    private String PASSWORD = "Ijse@123";

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("customer_name");
        String address = req.getParameter("customer_address");
        String email = req.getParameter("customer_email");

        if (name == null || address == null || email == null) {
            resp.sendRedirect("customer-save.jsp?error=Please Fill All Fields");
            return;
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            try (Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
                 PreparedStatement pstm = connection.prepareStatement("INSERT INTO customer (name, address, email) VALUES (?, ?, ?)")) {

                pstm.setObject(1, name);
                pstm.setObject(2, address);
                pstm.setObject(3, email);

                int affectedRows = pstm.executeUpdate();
                if (affectedRows > 0) {
                    resp.sendRedirect("customer-save.jsp?success=Customer Saved Successfully");
                    System.out.println("Customer Saved Successfully");
                } else {
                    resp.sendRedirect("customer-save.jsp?error=Failed to Save Customer");
                }
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}