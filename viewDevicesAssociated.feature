Feature: Visualización de dispositivos asociados a una cuenta.
  Como dueño de equipo
  Quiero visualizar mis dispositivos registrados
  Para revisar los detalles de cada uno

  Scenario: dueño de equipo visualiza sus dispositivos registrados exitosamente (ruta feliz)
  Given: el dueño de equipo quiere visualizar sus dispositivos y ha iniciado sesión en la aplicación web.
  When: se dirige a la sección "my devices".
  Then: visualiza la lista de todos sus dispositivos registrados.

  Scenario: dueño de equipo no tiene dispositivos registrados (ruta alternativa)
  Given: el dueño de equipo quiere visualizar sus dispositivos y ha iniciado sesión en la aplicación web.
  When: se dirige a la sección "my devices".
  Then: recibe un mensaje indicAndo que no tiene dispositivos registrados.

  Scenario: dueño de equipo no puede acceder a "my devices" debido a un error en el sistema (ruta triste)
  Given: el dueño de equipo quiere visualizar sus dispositivos y ha iniciado sesión en la aplicación web.
  When: intenta acceder a la sección "my devices".
  Then: recibe un mensaje de error indicAndo que no se puede acceder a la sección en este momento y que intente nuevamente más tarde.
