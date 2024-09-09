
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iniciar Sesi&oacute;n</title>
    <link rel="stylesheet" href="resources/css/styles.css">
</head>
<body>
    <div class="login-container">
        <!-- Imagen de Deadpool -->
        <img src="resources/images/deadpool.png" alt="Deadpool" class="login-image">
        
        <h2>Iniciar Sesi&oacute;n</h2>
        <form action="LoginServlet" method="POST">
            <div class="input-group">
                <label for="username">Usuario:</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="input-group">
                <label for="password">Contrase&ntildea:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="input-group">
                <label for="role">Rol:</label>
                <select id="role" name="role">
                    <option value="usuario">Usuario Local</option>
                    <option value="admin">Administrador</option>
                </select>
            </div>
            <button type="submit">Entrar</button>
        </form>
        <c:if test="${param.message != null}">
            <p>${param.message}</p>
        </c:if>
        <c:if test="${param.error != null}">
            <p style="color: red;">${param.error}</p>
        </c:if>
        <!-- Enlaces adicionales -->
        <div class="additional-links">
            <a href="forgot-password.jsp">Olvid&eacute; mi contrase&ntilde;a</a> |
            <a href="register.jsp">Registrar usuario</a>
        </div>
        
        <div id="error-message"></div>
    </div>
    <script src="resources/js/script.js"></script>
</body>
</html>
