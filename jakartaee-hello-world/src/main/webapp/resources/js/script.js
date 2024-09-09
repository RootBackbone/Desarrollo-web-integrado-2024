// Validaciones y otras funciones
document.querySelector('form').addEventListener('submit', function(e) {
    const username = document.getElementById('username').value;
    const password = document.getElementById('password').value;
    if (username === "" || password === "") {
        e.preventDefault();
        document.getElementById('error-message').textContent = "Por favor, completa todos los campos.";
    }
});
