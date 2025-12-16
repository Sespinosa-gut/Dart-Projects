import 'package:flutter/foundation.dart';

/// Proveedor de estado para el contador usando Provider
/// Extiende ChangeNotifier para notificar cambios a los widgets
class ContadorProveedor extends ChangeNotifier {
  int _contador = 0;

  /// Obtiene el valor actual del contador
  int get contador => _contador;

  /// Incrementa el contador en 1
  void incrementar() {
    _contador++;
    notifyListeners(); // Notifica a todos los widgets que escuchan
  }

  /// Decrementa el contador en 1
  void decrementar() {
    _contador--;
    notifyListeners(); // Notifica a todos los widgets que escuchan
  }

  /// Reinicia el contador a 0
  void reiniciar() {
    _contador = 0;
    notifyListeners(); // Notifica a todos los widgets que escuchan
  }
}

