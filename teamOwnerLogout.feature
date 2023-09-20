Feature: Cerrar sesión en la aplicación web
    Como dueño de equipo
    Quiero cerrar sesión en la aplicación web
    Para asegurar la seguridad de mi cuenta y poder usarla en otro momento

    Background:
        Given que el dueño de equipo está conectado y quiere cerrar sesión


    Scenario: Dueño de equipo cierra sesión exitosamente (Ruta Feliz)
        When hace clic en el botón "Logout" en la interfaz de la aplicación
        Then el sistema cierra su sesión
        And es redirigido a la página de inicio

    Scenario: Dueño de equipo experimenta un error al intentar cerrar sesión (Ruta Alternativa)
        When hace clic en el botón "Logout"
        And ocurre un error en el sistema
        Then la vista muestra un aviso informando que no se pudo cerrar sesión correctamente


    Scenario: Dueño de equipo se desconecta automáticamente por inactividad (Ruta Triste)
        Given que el dueño de equipo está inactivo durante un tiempo prolongado
        When el sistema detecta la inactividad
        Then cierra la sesión automáticamente
        And muestra un mensaje de que la sesión ha expirado
