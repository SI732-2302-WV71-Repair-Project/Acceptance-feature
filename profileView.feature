Feature: Visualización de perfil en la aplicación web.
  Como dueño de equipo
  Quiero visualizar mi perfil en la página web
  Para tener acceso a mi información personal y preferencias en la aplicación.

  Scenario: dueño de equipo visualiza su perfil con éxito (ruta feliz)
    Given que el dueño de equipo quiere visualizar su perfil
    And ha iniciado sesión en la aplicación web
    When el dueño de equipo ingresa a "my profile"
    Then el dueño de equipo visualiza su perfil con la información actualizada.

  Scenario: dueño de equipo no ha iniciado sesión y quiere visualizar su perfil (ruta alternativa)
    Given que el dueño de equipo quiere visualizar su perfil
    But no  ha iniciado sesión en la aplicación web
    When intenta acceder a "my profile"
    Then el sistema le redirige a la página de inicio de sesión.

  Scenario: error al intentar visualizar el perfil (ruta triste)
    Given que el dueño de equipo quiere visualizar su perfil
    And ha iniciado sesión en la aplicación web
    When intenta acceder a "my profile"
    And ocurre un error en el sistema
    Then el dueño de equipo recibirá un mensaje de error que diga "no se pudo cargar el perfil. intente nuevamente más tarde".

