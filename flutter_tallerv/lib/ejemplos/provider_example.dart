import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// Modelo de datos que extiende ChangeNotifier
/// Este es el paso 1: Crear una clase que extienda ChangeNotifier
class ContadorProvider extends ChangeNotifier {
  int _contador = 0;
  List<String> _historial = [];

  // Getters para acceder al estado
  int get contador => _contador;
  List<String> get historial => List.unmodifiable(_historial);

  // Métodos para modificar el estado
  void incrementar() {
    _contador++;
    _historial.add('Incrementado: $_contador');
    notifyListeners(); // Notifica a todos los widgets que escuchan
  }

  void decrementar() {
    _contador--;
    _historial.add('Decrementado: $_contador');
    notifyListeners();
  }

  void resetear() {
    _contador = 0;
    _historial.add('Reset: 0');
    notifyListeners();
  }

  void limpiarHistorial() {
    _historial.clear();
    notifyListeners();
  }
}

/// Ejemplo de uso de Provider
/// 
/// Provider es una solución oficial y recomendada para la gestión de estado en Flutter.
/// Funciona como un contenedor de datos que notifica automáticamente a los widgets
/// cuando esos datos cambian, permitiendo una UI reactiva y organizada.
/// 
/// Cuando usar Provider:
/// - Cuando el estado debe compartirse entre diferentes widgets
/// - Cuando el estado se vuelve complejo (listas, usuarios, carritos)
/// 
/// Estructura típica con Provider:
/// 1. Crear una clase que extienda ChangeNotifier
/// 2. Usar ChangeNotifierProvider para proveerla
/// 3. Usar Consumer o context.watch para escuchar los cambios
class ProviderExample extends StatelessWidget {
  const ProviderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider - Gestión de Estado'),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          // Widget que muestra el contador usando Consumer
          const Expanded(
            child: _ContadorDisplay(),
          ),
          // Widget que muestra los botones de control
          const _ControlesContador(),
          // Widget que muestra el historial
          Expanded(
            flex: 2,
            child: _HistorialContador(),
          ),
        ],
      ),
    );
  }
}

/// Widget que muestra el contador
/// Usa Consumer para escuchar cambios en el Provider
class _ContadorDisplay extends StatelessWidget {
  const _ContadorDisplay();

  @override
  Widget build(BuildContext context) {
    // Usando Consumer para escuchar cambios
    return Consumer<ContadorProvider>(
      builder: (context, contadorProvider, child) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Contador:',
                style: TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 20),
              Text(
                '${contadorProvider.contador}',
                style: const TextStyle(
                  fontSize: 64,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

/// Widget que muestra los botones de control
/// Usa context.watch para escuchar cambios
class _ControlesContador extends StatelessWidget {
  const _ControlesContador();

  @override
  Widget build(BuildContext context) {
    // Usando context.watch para escuchar cambios
    final contadorProvider = context.watch<ContadorProvider>();

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: contadorProvider.decrementar,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 15,
              ),
            ),
            child: const Text('-'),
          ),
          ElevatedButton(
            onPressed: contadorProvider.resetear,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 15,
              ),
            ),
            child: const Text('Reset'),
          ),
          ElevatedButton(
            onPressed: contadorProvider.incrementar,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 15,
              ),
            ),
            child: const Text('+'),
          ),
        ],
      ),
    );
  }
}

/// Widget que muestra el historial de acciones
/// Usa Consumer para escuchar cambios
class _HistorialContador extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ContadorProvider>(
      builder: (context, contadorProvider, child) {
        return Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.orange.shade50,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.orange.shade200),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Historial:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  if (contadorProvider.historial.isNotEmpty)
                    TextButton(
                      onPressed: contadorProvider.limpiarHistorial,
                      child: const Text('Limpiar'),
                    ),
                ],
              ),
              const SizedBox(height: 10),
              Expanded(
                child: contadorProvider.historial.isEmpty
                    ? const Center(
                        child: Text(
                          'No hay acciones registradas',
                          style: TextStyle(color: Colors.grey),
                        ),
                      )
                    : ListView.builder(
                        itemCount: contadorProvider.historial.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Text(
                              '${index + 1}. ${contadorProvider.historial[index]}',
                              style: const TextStyle(fontSize: 14),
                            ),
                          );
                        },
                      ),
              ),
            ],
          ),
        );
      },
    );
  }
}


