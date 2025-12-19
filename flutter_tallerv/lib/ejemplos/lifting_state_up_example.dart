import 'package:flutter/material.dart';

/// Ejemplo de Lifting State Up
/// 
/// Es un patrón donde el estado que normalmente estaría en un widget hijo,
/// se "sube" a un widget padre para que este pueda compartirlo entre varios hijos.
/// Es útil para sincronizar varios widgets que necesitan acceder y modificar el mismo dato.
/// 
/// Cuando usarlo:
/// - Cuando un widget padre necesita compartir el estado con sus hijos
class LiftingStateUpExample extends StatefulWidget {
  const LiftingStateUpExample({super.key});

  @override
  State<LiftingStateUpExample> createState() => _LiftingStateUpExampleState();
}

class _LiftingStateUpExampleState extends State<LiftingStateUpExample> {
  // El estado está "levantado" al widget padre
  String _texto = '';
  bool _botonActivo = false;

  void _actualizarTexto(String nuevoTexto) {
    setState(() {
      _texto = nuevoTexto;
      _botonActivo = nuevoTexto.isNotEmpty;
    });
  }

  void _limpiarTexto() {
    setState(() {
      _texto = '';
      _botonActivo = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lifting State Up'),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Widget hijo que muestra el texto
            _TextoDisplay(texto: _texto),
            const SizedBox(height: 40),
            // Widget hijo que permite editar el texto
            _CampoTexto(
              texto: _texto,
              onTextoCambiado: _actualizarTexto,
            ),
            const SizedBox(height: 20),
            // Widget hijo que muestra el estado del botón
            _BotonEstado(activo: _botonActivo, onLimpiar: _limpiarTexto),
            const SizedBox(height: 20),
            // Widget hijo que muestra información adicional
            _InformacionAdicional(texto: _texto),
          ],
        ),
      ),
    );
  }
}

/// Widget hijo que muestra el texto
/// Recibe el estado desde el padre
class _TextoDisplay extends StatelessWidget {
  final String texto;

  const _TextoDisplay({required this.texto});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.purple.shade50,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.purple.shade200),
      ),
      child: Column(
        children: [
          const Text(
            'Texto ingresado:',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            texto.isEmpty ? '(vacío)' : texto,
            style: TextStyle(
              fontSize: 24,
              color: texto.isEmpty ? Colors.grey : Colors.purple.shade900,
            ),
          ),
        ],
      ),
    );
  }
}

/// Widget hijo que permite editar el texto
/// Notifica los cambios al padre mediante callback
class _CampoTexto extends StatelessWidget {
  final String texto;
  final ValueChanged<String> onTextoCambiado;

  const _CampoTexto({
    required this.texto,
    required this.onTextoCambiado,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onTextoCambiado,
      decoration: InputDecoration(
        labelText: 'Escribe algo...',
        hintText: 'El estado se comparte entre widgets',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        prefixIcon: const Icon(Icons.edit),
      ),
    );
  }
}

/// Widget hijo que muestra el estado del botón
/// Recibe el estado desde el padre
class _BotonEstado extends StatelessWidget {
  final bool activo;
  final VoidCallback onLimpiar;

  const _BotonEstado({
    required this.activo,
    required this.onLimpiar,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: activo ? onLimpiar : null,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purple,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 15,
            ),
          ),
          child: const Text('Limpiar'),
        ),
        const SizedBox(height: 10),
        Text(
          'Botón ${activo ? "activado" : "desactivado"}',
          style: TextStyle(
            color: activo ? Colors.green : Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

/// Widget hijo que muestra información adicional
/// Recibe el estado desde el padre
class _InformacionAdicional extends StatelessWidget {
  final String texto;

  const _InformacionAdicional({required this.texto});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          const Text(
            'Información:',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 10),
          Text('Longitud: ${texto.length} caracteres'),
          Text('Palabras: ${texto.isEmpty ? 0 : texto.trim().split(RegExp(r'\s+')).length}'),
        ],
      ),
    );
  }
}


