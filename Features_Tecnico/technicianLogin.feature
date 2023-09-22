Feature: Inicia sesión en la aplicación web.
  Como técnico
  quiero iniciar sesión con mi correo y contraseña registrado
  para acceder a la aplicación web.

  Background:
    Given que el técnico quiere iniciar sesión

  Scenario: el técnico se encuentre en el Login del sistema (ruta feliz)
    Given que el técnico de equipo quiere iniciar sesión
    When ingresa su correo y contraseña validos en los campos que solicita el Login
    Then el sistema le permite acceder.

  Scenario: el técnico se encuentre en el Login del sistema (ruta alternativa)
    Given que el técnico de equipo quiere iniciar sesión.
    When se olvide de ingresar a un campo.
    Then la vista resalta los campos faltantes

  Scenario: el técnico se encuentre en el Login del sistema (ruta triste)
    Given que el técnico de equipo quiere iniciar sesión.
    When ingresa los datos de una cuenta invalida.
    Then la vista muestra un aviso informAndo que la cuenta es incorrecta.

