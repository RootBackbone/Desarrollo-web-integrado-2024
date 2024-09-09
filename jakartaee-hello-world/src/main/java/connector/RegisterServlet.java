package connector;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String role = request.getParameter("role");

        try {
            Connection conn = DBConnection.getConnection();
            PreparedStatement ps = conn.prepareStatement("INSERT INTO users (username, password, role) VALUES (?, ?, ?)");
            ps.setString(1, username);
            ps.setString(2, password); // Considera usar hash para contraseñas
            ps.setString(3, role);
            ps.executeUpdate();

            // Redirigir a la página de inicio de sesión con mensaje de éxito
            response.sendRedirect("login.jsp?message=Registro+exitoso");

        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("register.jsp?error=Error+al+registrar+usuario");
        }
    }
}
