<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<html lang="es">
<head>
    <title>Crear Cuenta</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container my-5">
        <h2 class="text-center">Crear una Cuenta</h2>
        <form action="MiServlet" method="post" class="needs-validation" novalidate>
            <!-- Validación del Nombre -->
            <div class="mb-3">
                <label for="nombre" class="form-label">Nombre:</label>
                <input type="text" class="form-control" id="nombre" name="nombre" pattern="[A-Za-z\s]{3,}" title="El nombre debe tener al menos 3 letras y solo puede contener letras y espacios" required>
                <div class="invalid-feedback">
                    El nombre debe tener al menos 3 letras y solo puede contener letras y espacios.
                </div>
            </div>

            <!-- Validación del Correo -->
            <div class="mb-3">
                <label for="correo" class="form-label">Correo:</label>
                <input type="email" class="form-control" id="correo" name="correo" required>
                <div class="invalid-feedback">
                    Por favor, introduce un correo electrónico válido.
                </div>
            </div>

            <!-- Validación de la Contraseña -->
            <div class="mb-3">
                <label for="password" class="form-label">Contraseña:</label>
                <input type="password" class="form-control" id="password" name="password" minlength="8" title="La contraseña debe tener al menos 8 caracteres" required>
                <div class="invalid-feedback">
                    La contraseña debe tener al menos 8 caracteres.
                </div>
            </div>

            <button type="submit" class="btn btn-primary">Crear Cuenta</button>
        </form>
    </div>
    <script>
        (function () {
            'use strict'

            var forms = document.querySelectorAll('.needs-validation')

            Array.prototype.slice.call(forms)
                .forEach(function (form) {
                    form.addEventListener('submit', function (event) {
                        if (!form.checkValidity()) {
                            event.preventDefault()
                            event.stopPropagation()
                        }

                        form.classList.add('was-validated')
                    }, false)
                })
        })()
    </script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
</body>
</html>
