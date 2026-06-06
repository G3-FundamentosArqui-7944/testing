Feature: Alertas de cumplimiento de rutina

  Como usuario
  Quiero recibir recordatorios de entrenamiento
  Para mantener constancia en mi plan

  Scenario: Envío de recordatorio programado
    Given que el usuario tiene una rutina configurada
    And existe una hora de entrenamiento definida
    When llega la hora programada
    Then el sistema envía una notificación push
    And muestra el mensaje "¡Es hora de entrenar!"
    And permite abrir directamente la sesión

  Scenario: Alerta por inactividad
    Given que el usuario no registra entrenamientos durante 3 días
    When se cumple el período de inactividad
    Then el sistema genera una notificación automática
    And muestra el mensaje de recuperación de rutina
    And redirige al dashboard

  Scenario: Usuario desactiva recordatorios
    Given que el usuario deshabilitó las notificaciones
    When llega el horario configurado
    Then el sistema no envía recordatorios
    And conserva la configuración del usuario