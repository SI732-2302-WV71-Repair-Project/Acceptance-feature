Feature: Revisión del perfil de dueño de equipo.
  Como técnico
  quiero saber el perfil que tiene el dueño de equipo
  para poder saber que es un usuario confiable.

  Scenario: el técnico quiere visualizar el perfil del dueño de equipo
    Given el técnico se encuentre en el chat con el dueño del equipo
    When presiona el botón “user profile
    Then se visualizará el perfil de dueño de equipo

  Scenario: el técnico quiere visualizar el perfil del dueño de equipo, pero el perfil del dueño no está disponible en ese momento. (ruta alternativa)
    Given el técnico se encuentra en el chat con el dueño del equipo.
    When presiona el botón "user profile".
    And el sistema determina que el perfil del dueño de equipo no está disponible o no se ha cargado por alguna razón (como problemas de conexión o datos incompletos).
    Then el sistema mostrará un mensaje de error o una notificación que indica que el perfil del dueño no se puede visualizar en ese momento.
    And proporciona al técnico la opción de intentar nuevamente más tarde o verificar su conexión a internet.

  Scenario: el técnico quiere visualizar el perfil del dueño del equipo, pero el perfil del dueño no se encuentra en el sistema.
    Given el técnico se encuentra en el chat con el dueño del equipo.
    When presiona el botón "user profile".
    And el sistema busca el perfil del dueño en la base de datos, pero no lo encuentra
    Then el sistema mostrará un mensaje de error que indica que el perfil del dueño del equipo no se ha encontrado en el sistema.
