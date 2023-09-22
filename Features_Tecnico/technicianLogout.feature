Feature: Cerrar sesión en la aplicación web.
  Como técnico
  quiero cerrar sesión
  para usarla en otro momento.

  Background:
    Given que el técnico está conectado y quiere cerrar sesión

  Scenario: técnico de equipo quiere cerrar sesión. (ruta feliz)
    Given que el técnico de equipo se encuentra en el menú principal.
    When presione “Log Out” y acepte salir de la cuenta en la aplicación web.
    Then la vista se actualizará
    And le mostrará el “Login” de la aplicación web.

  Scenario: técnico de equipo no quiere cerrar sesión. (ruta alternativa)
  Scenario: técnico de equipo no quiere cerrar sesión.
    Given que el técnico de equipo se encuentra en el menú principal.
    When presione “Log Out” y luego cancele la acción de salir de la cuenta en la aplicación web.
    Then la vista se mantendrá.

  Scenario: técnico de equipo no quiere cerrar sesión. (ruta triste)
    Given que el técnico de equipo se encuentra en el menú principal.
    When presione “Log Out” para salir de la cuenta en la aplicación web.
    Then la aplicación intentará cerrar la sesión.
    And debido a un error inesperado o una circunstancia fuera del control del usuario, la sesión se cerrará abruptamente sin previo aviso.
    Then la vista se actualizará y mostrará la página de inicio de sesión.
    And el técnico será redirigido a la página de inicio de sesión sin su consentimiento debido al error.
