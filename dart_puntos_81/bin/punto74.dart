class Obrero {
  String nombre;
  List<int> prod;
  int limite;
  Obrero(this.nombre, this.prod, this.limite);
}

List<Obrero> obreros = [
  Obrero("Luis", [60, 80, 90, 70, 65, 85], 500),
  Obrero("Ana", [100, 95, 110, 105, 90, 120], 500),
  Obrero("Pedro", [40, 45, 50, 55, 60, 50], 500)
];

void main() {
  int totalGeneral = 0;
  int alcanzaron = 0;
  String mayorNombre = "";
  int mayorProd = -1;

  for (var o in obreros) {
    int total = 0;
    for (var x in o.prod) total += x;

    double porcentaje = (total * 100) / o.limite;

    print(o.nombre);
    print("Total semanal: $total");
    print("Porcentaje: $porcentaje%");

    totalGeneral += total;

    if (total >= o.limite) alcanzaron++;

    if (total > mayorProd) {
      mayorProd = total;
      mayorNombre = o.nombre;
    }
  }

  int n = obreros.length;
  double promedioGeneral = totalGeneral / n;
  double porcentajeAlcanzaron = (alcanzaron * 100) / n;

  print("Porcentaje que alcanzaron o superaron: $porcentajeAlcanzaron%");
  print("Mayor productor: $mayorNombre con $mayorProd");
  print("Promedio semanal de la bloquera: $promedioGeneral");
}
