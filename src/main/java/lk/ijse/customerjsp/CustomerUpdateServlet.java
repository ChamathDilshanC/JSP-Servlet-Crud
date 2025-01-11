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

@WebServlet(name="customerUpdateServlet",urlPatterns = "/customer-update")
public class CustomerUpdateServlet extends HttpServlet {
    private String URL = "jdbc:mysql://localhost:3306/customerdb";
    private String USER = "root";
    private String PASSWORD = "Ijse@123";
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("customer_id");
        String name = req.getParameter("customer_name");
        String address = req.getParameter("customer_address");
        String email = req.getParameter("customer_email");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            try (Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
                 PreparedStatement pstm = connection.prepareStatement("UPDATE customer SET name = ?, address = ?, email = ? WHERE id = ? ")) {

                pstm.setObject(1, name);
                pstm.setObject(2, address);
                pstm.setObject(3, email);
                pstm.setObject(4, id);

                int affectedRows = pstm.executeUpdate();
                if (affectedRows > 0) {
                    resp.sendRedirect("customer-update.jsp?success=Customer Updated Successfully");
                    System.out.println("Customer Updated Successfully");
                } else {
                    resp.sendRedirect("customer-update.jsp?error=Failed to Updated Customer");
                }
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}
