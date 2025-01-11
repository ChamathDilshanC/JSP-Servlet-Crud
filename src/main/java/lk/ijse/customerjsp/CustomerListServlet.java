package lk.ijse.customerjsp;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lk.ijse.customerjsp.DTO.CustomerDTO;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "customerListServlet", urlPatterns = {"/customer-list"})
public class CustomerListServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/customerdb",
                    "root",
                    "Ijse@123"
            );

            Statement stm = connection.createStatement();
            ResultSet rst = stm.executeQuery("SELECT * FROM customer");

            List<CustomerDTO> customers = new ArrayList<>();

            while (rst.next()) {
                CustomerDTO dto = new CustomerDTO(
                        rst.getInt(1),
                        rst.getString(2),
                        rst.getString(3),
                        rst.getString(4)
                );
                customers.add(dto);
            }
            System.out.println(customers.size());

            req.setAttribute("customers", customers);
            RequestDispatcher dispatcher = req.getRequestDispatcher("/customer-list.jsp");
            dispatcher.forward(req, resp);

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }
}