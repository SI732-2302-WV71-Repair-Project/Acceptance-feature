Feature: Visualización de mi perfil.
  Como técnico
  quiero visualizar mi perfil en la aplicación web
  para tener más información veraz

  Scenario: el técnico de equipo quiere visualizar su perfil. (ruta feliz)
    Given que el técnico de equipo quiere visualizar su perfil e inicia sesión en la aplicación web.
    When el técnico de equipo ingresa a “my profile”.
    Then el sistema le mostrará una página donde se le mostrará todos los datos respecto a su perfil.

  Scenario: el técnico de equipo quiere visualizar su perfil, pero algunos de los datos en su perfil están incompletos. (ruta alternativo)
    Given que el técnico de equipo quiere visualizar su perfil e inicia sesión en la aplicación web.
    When el técnico de equipo ingresa a "my profile".
    Then el sistema carga la página de perfil.
    And se detecta que algunos de los datos en el perfil del técnico están incompletos

  Scenario: el técnico de equipo quiere visualizar su perfil, pero se produce un error al cargar la información del perfil. (ruta triste)
    Given que el técnico de equipo quiere visualizar su perfil e inicia sesión en la aplicación web.
    When el técnico de equipo ingresa a "my profile".
    And el sistema intenta cargar la página de perfil.
    And se produce un error técnico o de conexión que impide cargar la información del perfil correctamente.
    Then el sistema mostrará un mensaje de error que indica que no se puede cargar el perfil en este momento.
