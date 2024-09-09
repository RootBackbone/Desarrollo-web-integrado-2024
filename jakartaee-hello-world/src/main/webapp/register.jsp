<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registrar Usuario</title>
    <link rel="stylesheet" href="resources/css/styles.css">
</head>
<body>
    <div class="register-container">
    <!-- Imagen de Deadpool -->
        <img src="resources/images/deadpool2.png" alt="Deadpool" class="login-image">

        <h2>Registrar Usuario</h2>
        <form action="RegisterServlet" method="POST">
            <div class="input-group">
                <label for="username">Usuario:</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="input-group">
                <label for="password">Contrase&ntilde;a:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="input-group">
                <label for="role">Rol:</label>
                <select id="role" name="role">
                    <option value="usuario">Usuario Local</option>
                   <!-- <option value="admin">Administrador</option> -->
                </select>
            </div>
            <button type="submit">Registrar</button>
        </form>
    </div>
</body>
</html>
