Feature: Registro de técnico en la aplicación web.
  Como técnico
  quiero registrar mis datos y crear una cuenta
  para utilizar el servicio que proporciona la app

  Scenario: técnico se encuentra en el Landing Page (ruta feliz)
    Given que el técnico se encuentra en la plataforma web
    And quiere registrarse
    When presione el botón “Sign Up” se abrirá un sitio web con un formulario
    Then el técnico completará sus datos
    And presionará el botón “Sign Up”, el sistema le mostrará una ventana flotante con el mensaje de que su registro fue exitoso y le pedirá que pueda acceder a través del Login.

  Scenario: técnico se encuentra en el Landing Page (ruta alternativa)
    Given que el técnico se encuentra en la plataforma web
    And quiere registrarse
    When presione el botón “Sign Up” se abrirá un sitio web con un formulario
    Then el técnico completará sus datos
    And presionará el botón “Sign Up”
    Then el sistema verificará si los datos de registro ya existen en la base de datos
    And si los datos son duplicados
    Then el sistema mostrará una ventana flotante con el mensaje de que el registro no se pudo completar debido a datos duplicados
    And le proporcionará instrucciones sobre cómo proceder, como restablecer la contraseña o ponerse en contacto con el soporte técnico.

  Scenario: técnico se encuentra en el Landing Page (ruta triste)
    Given que el técnico se encuentra en la plataforma web
    And quiere registrarse.
    When presione el botón “Sign Up” se abrirá un sitio web con un formulario
    Then el completa con datos incorrectos
    And el sistema le mostrara un aviso con la etiqueta: “datos incorrectos”.
