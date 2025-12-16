import 'package:flutter/material.dart';

class PantallaLiftingState extends StatefulWidget {
  const PantallaLiftingState({super.key});

  @override
  State<PantallaLiftingState> createState() => _PantallaLiftingStateState();
}

class _PantallaLiftingStateState extends State<PantallaLiftingState> {
  String _textoCompartido = 'Texto inicial';

  void _actualizarTexto(String nuevoTexto) {
    setState(() {
      _textoCompartido = nuevoTexto;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lifting State Up'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Estado Compartido entre Widgets',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 40),
            WidgetHijoMostrar(
              texto: _textoCompartido,
            ),
            const SizedBox(height: 40),
            WidgetHijoModificar(
              onTextoCambiado: _actualizarTexto,
            ),
            const SizedBox(height: 20),
            WidgetHijoMostrar(
              texto: _textoCompartido,
            ),
          ],
        ),
      ),
    );
  }
}

class WidgetHijoMostrar extends StatelessWidget {
  final String texto;

  const WidgetHijoMostrar({
    super.key,
    required this.texto,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.orange.shade50,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.orange, width: 2),
      ),
      child: Column(
        children: [
          const Text(
            'Widget Hijo (Solo muestra)',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.orange,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            texto,
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}

class WidgetHijoModificar extends StatelessWidget {
  final Function(String) onTextoCambiado;

  const WidgetHijoModificar({
    super.key,
    required this.onTextoCambiado,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.orange.shade100,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.orange, width: 2),
      ),
      child: Column(
        children: [
          const Text(
            'Widget Hijo (Modifica el estado)',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.orange,
            ),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  onTextoCambiado('¡Hola desde el hijo!');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                ),
                child: const Text(
                  'Cambiar Texto',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  onTextoCambiado('Estado actualizado');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                ),
                child: const Text(
                  'Otro Texto',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

