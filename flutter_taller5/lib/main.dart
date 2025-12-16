import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'modelos/contador_proveedor.dart';
import 'pantallas/pantalla_stateful.dart';
import 'pantallas/pantalla_lifting_state.dart';
import 'pantallas/pantalla_provider.dart';

void main() {
  runApp(const MiAplicacion());
}

class MiAplicacion extends StatelessWidget {
  const MiAplicacion({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      // Proporciona el ContadorProveedor a toda la aplicación
      create: (context) => ContadorProveedor(),
      child: MaterialApp(
        title: 'Gestión de Estado en Flutter',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          useMaterial3: true,
        ),
        home: const PantallaPrincipal(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

/// Pantalla principal con menú de navegación a los ejemplos
class PantallaPrincipal extends StatelessWidget {
  const PantallaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gestión de Estado'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Ejemplos de Gestión de Estado',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 50),
              _BotonNavegacion(
                titulo: 'StatefulWidget',
                descripcion: 'Estado local para interacciones simples',
                color: Colors.blue,
                icono: Icons.widgets,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PantallaStateful(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),
              _BotonNavegacion(
                titulo: 'Lifting State Up',
                descripcion: 'Compartir estado entre widgets padre e hijos',
                color: Colors.orange,
                icono: Icons.swap_vert,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PantallaLiftingState(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),
              _BotonNavegacion(
                titulo: 'Provider',
                descripcion: 'Gestión de estado compleja y reactiva',
                color: Colors.purple,
                icono: Icons.storage,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PantallaProvider(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 40),
              const Text(
                'Selecciona un ejemplo para verlo en acción',
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Widget reutilizable para los botones de navegación
class _BotonNavegacion extends StatelessWidget {
  final String titulo;
  final String descripcion;
  final Color color;
  final IconData icono;
  final VoidCallback onPressed;

  const _BotonNavegacion({
    required this.titulo,
    required this.descripcion,
    required this.color,
    required this.icono,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          padding: const EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Row(
          children: [
            Icon(icono, color: Colors.white, size: 32),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titulo,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    descripcion,
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}
