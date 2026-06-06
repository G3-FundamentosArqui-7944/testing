Feature: Chat con coach

  Como usuario
  Quiero comunicarme con mi coach
  Para resolver dudas sobre mi rutina

  Scenario: Envío exitoso de mensaje
    Given que el usuario tiene una sesión activa con un coach
    When envía un mensaje desde el chat
    Then el sistema entrega el mensaje en tiempo real
    And muestra el estado "Enviado"

  Scenario: Recepción de respuesta del coach
    Given que el coach respondió un mensaje
    When el usuario abre el chat
    Then el sistema muestra el contenido recibido
    And presenta nombre, foto y hora de envío
    And reinicia el contador de mensajes no leídos

  Scenario: Recuperación del historial
    Given que existe una conversación previa
    When el usuario abre nuevamente el chat
    Then el sistema carga el historial completo
    And ordena los mensajes cronológicamente

  Scenario: Restricción por falta de sesión
    Given que el usuario no tiene una sesión reservada
    When intenta enviar un mensaje
    Then el sistema bloquea el envío
    And muestra el botón "Reservar sesión"