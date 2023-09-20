Feature: Iniciar sesión en la aplicación web
    Como dueño de equipo
    Quiero iniciar sesión con mi correo y contraseña registrados
    Para acceder a los servicios que ofrece la aplicación web

    Background:
        Given que el dueño de equipo quiere iniciar sesión

    Scenario: Dueño de equipo inicia sesión exitosamente (Ruta Feliz)
        When ingresa su correo y contraseña válidos en el campo "Login"
        Then el sistema le permite acceder
        And es redirigido a la página principal

    Scenario: Dueño de equipo intenta iniciar sesión con datos inválidos (Ruta Alternativa)
        When ingresa datos inválidos en el campo "Login"
        Then la vista muestra un aviso informando que la cuenta o contraseña son incorrectos

    Scenario: Dueño de equipo olvida ingresar algún campo (Ruta Triste)
        When omite uno o más campos requeridos en el campo "Login"
        Then la vista resalta los campos faltantes
        And muestra un mensaje de que son necesarios para continuar
