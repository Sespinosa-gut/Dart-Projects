class Estado {
  String nombre;
  List<int> municipios; 
  Estado(this.nombre, this.municipios);
}


List<Estado> estados = [
  Estado("Estado A", [12000, 15000, 9000]), 
  Estado("Estado B", [8000, 14000, 11000, 5000]),
  Estado("Estado C", [30000, 25000]),
  Estado("Estado D", [10000, 10000, 12000]),
  Estado("Estado E", [5000, 7000, 6000])
];

int totalPais = 200000;

void main() {
  int mayorPobl = 0;
  int menorPobl = 999999999;
  String mayorEstado = "";
  String menorEstado = "";
  int sumaEstados = 0;

  for (var e in estados) {
    int sumaMunicipios = 0;

    for (var hab in e.municipios) {
      sumaMunicipios += hab;
    }

    if (sumaMunicipios > mayorPobl) {
      mayorPobl = sumaMunicipios;
      mayorEstado = e.nombre;
    }

    if (sumaMunicipios < menorPobl) {
      menorPobl = sumaMunicipios;
      menorEstado = e.nombre;
    }

    sumaEstados += sumaMunicipios;
  }

  double porcentaje = (sumaEstados * 100) / totalPais;
  double promedio = sumaEstados / estados.length;

  print("Estado con mayor población: $mayorEstado ($mayorPobl)");
  print("Estado con menor población: $menorEstado ($menorPobl)");
  print("Porcentaje que representan los 5 Estados respecto al país: $porcentaje%");
  print("Promedio de habitantes por Estado: $promedio");
}
