class Maleta {
  String codigo;
  double peso;
  Maleta(this.codigo, this.peso);
}

class Pasajero {
  String nombre;
  String codigoAbordo;
  List<Maleta> maletas;
  String vuelo;
  Pasajero(this.nombre, this.codigoAbordo, this.maletas, this.vuelo);
}

double tarifa(double p) {
  if (p >= 1 && p <= 3) return 0;
  if (p > 3 && p <= 6) return 600;
  if (p > 6 && p <= 9) return 1200;
  if (p > 9 && p <= 12) return 1500;
  if (p > 12 && p <= 15) return 2000;
  return 2500;
}

List<Pasajero> pasajeros = [
  Pasajero("Ana Torres", "AB123", [
    Maleta("M1", 2),
    Maleta("M2", 7)
  ], "V001"),
  Pasajero("Luis Pérez", "XY456", [
    Maleta("M3", 16),
    Maleta("M4", 4)
  ], "V001"),
  Pasajero("Carlos Gómez", "ZZ999", [
    Maleta("M5", 3),
    Maleta("M6", 10)
  ], "V002"),
  Pasajero("María Ruiz", "TT777", [
    Maleta("M7", 2.5)
  ], "V002")
];

void main() {
  var vuelos = pasajeros.map((p) => p.vuelo).toSet();
  int sinPago = 0;
  int totalPasajeros = pasajeros.length;

  for (var vuelo in vuelos) {
    double totalVuelo = 0;
    double mayorPeso = -1;
    String mayorNombre = "";
    String mayorCodigo = "";

    double menorPeso = 99999;
    String menorNombre = "";
    String menorCodigo = "";

    for (var p in pasajeros.where((x) => x.vuelo == vuelo)) {
      double pesoTotal = 0;
      double monto = 0;

      double mayorMaletaPeso = -1;
      String mayorMaletaCodigo = "";

      for (var m in p.maletas) {
        pesoTotal += m.peso;
        double t = tarifa(m.peso);
        monto += t;
        if (m.peso > mayorMaletaPeso) {
          mayorMaletaPeso = m.peso;
          mayorMaletaCodigo = m.codigo;
        }
      }

      if (monto == 0) sinPago++;

      print("Vuelo: $vuelo");
      print("Código: ${p.codigoAbordo}");
      print("Pasajero: ${p.nombre}");
      print("Peso total equipaje: $pesoTotal");
      print("Monto a pagar: $monto");
      print("Maleta más pesada: $mayorMaletaCodigo ($mayorMaletaPeso)\n");

      totalVuelo += monto;

      if (pesoTotal > mayorPeso) {
        mayorPeso = pesoTotal;
        mayorNombre = p.nombre;
        mayorCodigo = p.codigoAbordo;
      }

      if (pesoTotal < menorPeso) {
        menorPeso = pesoTotal;
        menorNombre = p.nombre;
        menorCodigo = p.codigoAbordo;
      }
    }

    print("Resumen vuelo $vuelo");
    print("Mayor peso: $mayorNombre ($mayorCodigo) - $mayorPeso");
    print("Menor peso: $menorNombre ($menorCodigo) - $menorPeso");
    print("Monto total vuelo: $totalVuelo\n");
  }

  double porcentaje = (sinPago * 100) / totalPasajeros;
  print("Porcentaje pasajeros sin pago: $porcentaje%");
}
