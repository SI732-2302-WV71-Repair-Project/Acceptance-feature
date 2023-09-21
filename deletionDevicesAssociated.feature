Feature: Eliminación de equipo asociado a una cuenta.
  Como dueño de equipo
  Quiero eliminar un dispositivo
  Para retirar este mismo de la plataforma web

  Scenario: dueño de equipo elimina exitosamente un dispositivo (ruta feliz)
  Given: el dueño de equipo quiere eliminar un dispositivo y se encuentra en la sección "my devices".
  When: selecciona el botón "delete a device" y selecciona el dispositivo a eliminar.
  Then: el sistema elimina el dispositivo seleccionado y muestra un mensaje de confirmación.

  Scenario: dueño de equipo intenta eliminar un dispositivo que no está registrado (ruta alternativa)
  Given: el dueño de equipo quiere eliminar un dispositivo y se encuentra en la sección "my devices".
  When: selecciona el botón "delete a device" pero el dispositivo que intenta eliminar no está en la lista.
  Then: el sistema muestra un mensaje de error indicAndo que el dispositivo no está registrado.

  Scenario: dueño de equipo experimenta un fallo al intentar eliminar un dispositivo (ruta triste)
  Given: el dueño de equipo quiere eliminar un dispositivo y se encuentra en la sección "my devices".
  When: selecciona el botón "delete a device" y selecciona el dispositivo a eliminar.
  Then: el sistema muestra un mensaje de error indicAndo que no se pudo eliminar el dispositivo debido a un error técnico.
