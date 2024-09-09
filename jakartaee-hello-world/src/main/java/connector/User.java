package connector;

import java.io.Serializable;

public class User implements Serializable {
    private static final long serialVersionUID = 1L;

    private int id;
    private String username;
    private String password; // En un entorno real, esta debería ser una versión cifrada
    private String role; // Por ejemplo: "admin", "user"

    // Constructor vacío
    public User() {
    }

    // Constructor con parámetros
    public User(int id, String username, String password, String role) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.role = role;
    }

    // Getters y Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "User [id=" + id + ", username=" + username + ", role=" + role + "]";
    }

    // Método para verificar la contraseña
    public boolean checkPassword(String inputPassword) {
        // En un entorno real, aquí se debería verificar la contraseña cifrada
        return this.password.equals(inputPassword);
    }
}
