Feature: Recuperación de contraseña en la aplicación web.
  Como técnico
  quiero cambiar mi contraseña olvidada
  para poder acceder a la aplicación web.

  Background:
    Given que el técnico ha olvidado su contraseña y quiere iniciar sesión

  Scenario: el técnico de equipo olvidó su contraseña. (ruta feliz)
    Given que el técnico de equipo quiere iniciar sesión y ha olvidado su contraseña.
    When presione el enlace " Forget Password"
    Then se le envía un correo con un código
    When ingresa el código
    Then el sistema valida el código y podrá cambiar la contraseña.
    When ingresa la nueva contraseña y le de click al botón de “Guardar”
    Then la vista muestra un aviso con la etiqueta: “Password Updated Succesfully”.

  Scenario: el técnico de equipo olvidó su contraseña. (ruta alternativa)
    Given que el técnico de equipo quiere iniciar sesión y ha olvidado su contraseña.
    When presione el enlace " Forget Password"
    Then se le envía un correo con un código
    When ingresa el código incorrecto
    Then el sistema valida el código y podrá cambiar la contraseña.
    When ingrese una contraseña usada antes y le de click al botón de “Guardar”
    Then el sistema le indica que no puede ser una contraseña usada antes.

  Scenario: el técnico de equipo olvidó su contraseña. (ruta triste)
    Given que el técnico de equipo quiere iniciar sesión y ha olvidado su contraseña.
    When presione el enlace " recover password"
    Then se le envía un correo con un código
    When ingresa el código incorrecto
    Then el sistema valida el código
    Then la vista muestra un aviso con la etiqueta: “invalid code”.
