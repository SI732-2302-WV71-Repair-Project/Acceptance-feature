Feature: Selección del técnico en la aplicación web
    Como dueño del equipo dañado
    Quiero buscar y elegir al técnico que tenga la mejor puntuación
    Para reparar mi equipo dañado de la mejor manera

    Background:
        Given que el dueño del equipo se encuentre buscando al técnico que mejor se especialice en su problema

    Scenario: El dueño del equipo busca y selecciona al mejor técnico especializado para su problema (Ruta Feliz)
        When selecciona el tipo de equipo como "Laptop", el modelo como "Dell XPS 13", y redacta el problema como "no enciende"
        Then el sistema muestra en la pantalla principal la lista de todos los técnicos especializados en arreglar problemas similares
        When el dueño del equipo presiona el botón "GO!"
        Then se mostrará una etiqueta “Request chat with technician?”
        When el dueño de equipo presiona el botón "Aceptar"
        Then el técnico queda seleccionado para la reparación y el sistema lo confirma

    Scenario: El dueño del equipo ve la lista de técnicos pero decide no seleccionar ninguno (Ruta Alternativa)
        When visualiza la lista de técnicos especializados en "reparación de pantallas"
        Then puede decidir no presionar el botón "GO!"
        And sigue navegando en la aplicación sin efectuar una selección

    Scenario: El dueño del equipo inicia el proceso de selección pero lo cancela (Ruta Triste)
        When selecciona el tipo de equipo como "Laptop", el modelo como "Dell XPS 13", y redacta el problema como "no enciende"
        Then el sistema muestra en la pantalla principal la lista de todos los técnicos especializados en arreglar problemas similares
        When el dueño del equipo presiona el botón "GO!"
        Then se mostrará una etiqueta “Request chat with technician?”
        When el dueño de equipo presiona el botón "Cancelar"
        Then la selección del técnico se cancela y el sistema vuelve a mostrar la lista de técnicos
