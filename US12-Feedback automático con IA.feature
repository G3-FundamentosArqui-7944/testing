Feature: Análisis automático de ejercicios mediante IA
  Como atleta
  Quiero recibir feedback automático sobre mi técnica
  Para mejorar mi rendimiento físico.

  Scenario: Procesamiento exitoso del video
    Given que existe un video previamente registrado
    When se envía una solicitud POST al endpoint "/api/v1/exercise-videos/{videoId}/analyze"
    Then el sistema debe responder con código 200 OK
    And debe generar métricas del ejercicio
    And debe devolver recomendaciones automáticas mediante IA.

  Scenario: Análisis de video inexistente
    Given que el video solicitado no existe
    When el sistema intenta procesar el video
    Then el sistema debe responder con código 404 Not Found.