Feature: Disponibilidad de endpoints del microservicio Videos
  Como sistema distribuido
  Quiero garantizar disponibilidad de los endpoints de videos
  Para asegurar el procesamiento continuo de ejercicios.

  Scenario: Endpoint de videos disponible
    Given que el microservicio Videos se encuentra desplegado
    When el cliente consume el endpoint "/api/v1/exercise-videos"
    Then el sistema debe responder correctamente
    And el endpoint debe encontrarse operativo.

  Scenario: Comunicación entre servicios
    Given que el API Gateway enruta solicitudes al microservicio Videos
    When se realiza una solicitud autenticada
    Then el gateway debe reenviar correctamente la petición
    And el microservicio debe responder sin errores.