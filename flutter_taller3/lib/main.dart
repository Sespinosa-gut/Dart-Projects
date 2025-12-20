import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: PaginaLista(),
  ));
}

class PaginaLista extends StatefulWidget {
  @override
  _PaginaListaState createState() {
    print('createState()');
    return _PaginaListaState();
  }
}

class _PaginaListaState extends State<PaginaLista> {
  List<String> lista = ['Elemento 1', 'Elemento 2', 'Elemento 3'];
  int numero = 4;

  @override
  void initState() {
    super.initState();
    print('initState()');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('didChangeDependencies()');
  }

  @override
  void dispose() {
    print('dispose()');
    super.dispose();
  }

  void agregarElemento() {
    setState(() {
      lista.add('Elemento $numero');
      numero++;
    });
  }

  void eliminarElemento(int posicion) {
    setState(() {
      lista.removeAt(posicion);
    });
  }

  @override
  Widget build(BuildContext context) {
    print('build()');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista simple'),
      ),
      body: ListView(
        children: lista.asMap().entries.map((item) {
          int index = item.key;
          String texto = item.value;

          return ListTile(
            title: Text(texto),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () => eliminarElemento(index),
            ),
          );
        }).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: agregarElemento,
        child: const Icon(Icons.add),
      ),
    );
  }
}
