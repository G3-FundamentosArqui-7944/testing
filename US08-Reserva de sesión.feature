Feature: Reserva de sesión

  Como usuario
  Quiero reservar sesiones con un coach
  Para asegurar un horario de entrenamiento personalizado

  Scenario: Reserva exitosa con horario disponible
    Given que el usuario seleccionó un coach con disponibilidad activa
    And existe un horario libre para la fecha seleccionada
    When confirma la reserva
    Then el sistema registra la sesión con estado "PROGRAMADA"
    And bloquea el horario en el calendario del coach
    And envía una notificación al coach
    And muestra la confirmación con fecha, hora y duración

  Scenario: Horario ocupado por concurrencia
    Given que dos usuarios intentan reservar el mismo horario
    When el segundo usuario confirma la reserva
    Then el sistema rechaza la solicitud
    And muestra el mensaje "Este horario ya no está disponible"
    And recomienda los próximos 3 horarios disponibles

  Scenario: Cancelación por parte del coach
    Given que existe una sesión en estado "PROGRAMADA"
    And faltan más de 2 horas para el inicio
    When el coach cancela la sesión
    Then la sesión cambia al estado "CANCELADA"
    And el usuario recibe una notificación
    And el horario vuelve a estar disponible

  Scenario: Usuario excede límite del plan
    Given que el usuario agotó las reservas disponibles del plan gratuito
    When intenta reservar una nueva sesión
    Then el sistema bloquea la acción
    And muestra el mensaje de actualización a Premium