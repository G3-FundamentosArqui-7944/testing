Feature: Subida de videos de ejercicios
  Como atleta
  Quiero subir videos de mis ejercicios
  Para recibir retroalimentación automática mediante IA.

  Scenario: Subida exitosa de video
    Given que el usuario se encuentra autenticado
    When envía una solicitud multipart/form-data al endpoint "/api/v1/exercise-videos"
    And adjunta un archivo de video válido
    Then el sistema debe responder con código 201 Created
    And el video debe almacenarse correctamente.

  Scenario: Subida de archivo inválido
    Given que el usuario intenta subir un archivo no soportado
    When realiza la solicitud de subida
    Then el sistema debe responder con código 400 Bad Request
    And debe indicar que el formato no es válido.