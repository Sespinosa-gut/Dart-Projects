class Persona {
  String nombre;
  double pesoAnterior;
  List<double> basculas;
  Persona(this.nombre, this.pesoAnterior, this.basculas);
}

List<Persona> personas = [
  Persona("Luis", 85.0, [84, 85, 86, 85, 85.5, 86, 85, 84.5, 86, 85.2]),
  Persona("Ana", 62.0, [61.5, 61.8, 62, 62.1, 61.9, 62.2, 62, 61.7, 62.1, 62]),
  Persona("Pedro", 90.0, [89.5, 89.8, 90, 89.9, 89.7, 90.2, 90, 90.1, 89.8, 90]),
  Persona("Maria", 74.0, [73, 73.5, 74, 73.8, 73.9, 74.1, 74, 73.7, 74.2, 73.9]),
  Persona("Jose", 95.0, [96, 95.8, 95.5, 95.7, 95.9, 96, 95.8, 96.1, 95.6, 95.9])
];

void main() {
  for (var p in personas) {
    double suma = 0;
    for (var x in p.basculas) {
      suma += x;
    }
    double promedio = suma / p.basculas.length;
    double diferencia = promedio - p.pesoAnterior;
    if (diferencia > 0) {
      print("${p.nombre} SUBIO $diferencia");
    } else {
      print("${p.nombre} BAJO ${diferencia.abs()}");
    }
  }
}
