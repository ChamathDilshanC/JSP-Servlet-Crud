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


@WebServlet(name = "customerDeleteServlet", value = "/customer-delete")
public class CustomerDeleteServlet extends HttpServlet {
    private String URL = "jdbc:mysql://localhost:3306/customerdb";
    private String USER = "root";
    private String PASSWORD = "Ijse@123";

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("customer_id");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            try (Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
                 PreparedStatement pstm = connection.prepareStatement("DELETE FROM customer WHERE id=?")) {

                pstm.setObject(1, id);

                int affectedRows = pstm.executeUpdate();
                if (affectedRows > 0) {
                    resp.sendRedirect("customer-delete.jsp?success=Customer Deleted Successfully");
                    System.out.println("Customer Deleted Successfully");
                } else {
                    resp.sendRedirect("customer-delete.jsp?error=Customer Not Found");
                }
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}
