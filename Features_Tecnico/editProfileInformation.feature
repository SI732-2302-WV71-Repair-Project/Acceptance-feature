Feature: Edición de información de perfil
  Como técnico
  quiero editar la información de mi perfil
  para reflejar veracidad en los datos.

  Scenario: el técnico de equipo quiere editar la información registrada en su perfil. (ruta feliz)
    Given que el técnico de equipo quiere editar su perfil e inicia sesión en la aplicación web.
    When el técnico de equipo ingresa a "my profile".
    And seleccione el botón “editar perfil”
    Then el sistema le mostrará una ventana con los campos referentes a su perfil
    When editó los campos deseados
    And seleccione el botón “Guardar”
    Then el sistema validará los campos, guardará los cambios y lo redirigirá a "my profile".

  Scenario: el técnico de equipo quiere editar la información registrada en su perfil, pero decide cancelar la operación. (ruta alternativa)
    Given que el técnico de equipo quiere editar su perfil e inicia sesión en la aplicación web.
    When el técnico de equipo ingresa a "my profile".
    And seleccione el botón “editar perfil”
    Then el sistema le mostrará una ventana flotante con los campos referentes a su perfil
    When editó los campos deseados
    And seleccione el botón “cancelar”
    Then el sistema cerrará la ventana flotante y lo redirigirá a "my profile".

  Scenario: el técnico de equipo quiere editar la información registrada en su perfil, pero introduce datos incorrectos. (ruta triste)
    Given que el técnico de equipo quiere editar su perfil e inicia sesión en la aplicación web.
    When el técnico de equipo ingresa a "my profile".
    And seleccione el botón “editar perfil”
    Then el sistema le mostrará una ventana con los campos referentes a su perfil
    When editó los campos deseados, pero no de una buena manera
    And seleccione el botón “Guardar”
    Then el sistema validará los campos
    And le resaltará los campos que contienen errores.
