Feature: Subida de imagen de alimentos
  Como usuario
  Quiero subir fotos de mi comida
  Para que el sistema identifique nutrientes automáticamente
 
  Scenario: Subida exitosa de imagen
    Given que el usuario está autenticado
    When envía una solicitud multipart/form-data al endpoint "/api/v1/nutrition/analyses"
    And adjunta una imagen válida en formato JPEG o PNG
    Then el sistema debe responder con código 201 Created
    And debe devolver el ID del análisis con estado "PROCESSING" o "COMPLETED"
 
  Scenario: Subida de archivo no soportado
    Given que el usuario intenta subir un archivo de video en lugar de imagen
    When realiza la solicitud de subida
    Then el sistema debe responder con código 400 Bad Request
    And el análisis no debe registrarse en el sistema
 
  Scenario: Usuario inexistente intenta subir imagen
    Given que el userId enviado no existe en el sistema IAM
    When se realiza la solicitud de análisis
    Then el sistema debe responder con código 400 Bad Request
    And debe indicar que el usuario no existe
