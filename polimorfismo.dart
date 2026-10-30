class Notificaion {
  void enviar(String mensaje) {
    print("Enviando notificación  genérica: $mensaje");
 }
}

class NotificaionPush extends Notificación {
 void enviar(String mensaje) {
   print("PUSH (celular): Mostrando banner con el mensaje -> '$mensaje'")
 }
}

class NotificacionEmail extends Notificaion {
 @override
 void enviar(String mensaje) {
   print("EMAIL: Enviado correo con asunto y cuerpo -> '$mensaje'");
 }
}

void main() {
 List<Notificacion> misNotificaiones = [
   NotificacionPush().
   NotificacionEmail().
 ];

 for (var notif in misNotificaciones) {
   notif.enviar("¡Tienes una nueva tarea asignada!");
}
