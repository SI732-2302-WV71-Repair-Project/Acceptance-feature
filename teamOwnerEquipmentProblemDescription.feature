Feature: Descripción de problema del equipo en la aplicación web
    Como dueño de equipo
    Quiero registrar el problema de mi equipo
    Para que el técnico pueda conocer más del problema que tiene el equipo

    Background:
        Given que el dueño de equipo quiere adquirir un servicio de reparación para su equipo

    Scenario: El dueño de equipo redacta el problema y características de su equipo tecnológico y acepta el servicio de reparación (Ruta Feliz)
        When redacta el problema de su equipo como "pantalla rota" y al finalizar presiona el botón "Request reparation"
        Then el sistema muestra una vista con la etiqueta "Do you want to request repair?"
        When el dueño acepta la etiqueta
        Then el sistema registra la descripción del problema y confirma la solicitud de reparación

    Scenario: El dueño de equipo inicia el proceso pero no completa la descripción del problema (Ruta Alternativa)
        When empieza a redactar el problema pero no presiona el botón "Request reparation"
        Then el sistema no muestra ninguna etiqueta
        And la descripción del problema no se completa

    Scenario: El dueño de equipo redacta el problema y características de su equipo tecnológico pero cancela el servicio de reparación (Ruta Triste)
        When redacta el problema de su equipo como "pantalla rota" y al finalizar presiona el botón "Request reparation"
        Then el sistema muestra una vista con la etiqueta "Do you want to request repair?"
        When el dueño cancela la etiqueta
        Then el sistema cancela la descripción del problema y la solicitud de reparación
