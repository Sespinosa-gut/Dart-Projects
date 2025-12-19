import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Uso de child y children'),
        ),
        body: Center(
          child: Container(
            width: 250,
            height: 250,
            color: Colors.greenAccent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Botón 1'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Botón 2'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Botón 3'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}