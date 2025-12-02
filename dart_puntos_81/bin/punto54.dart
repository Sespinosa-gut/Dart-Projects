import 'dart:math';

void main() {
  int totalCuest = 64;
  int totalPreg = 23;

  List<List<int>> cuestionarios = List.generate(
      totalCuest,
      (_) => List.generate(
          totalPreg, (_) => Random().nextInt(5) + 1));

  List<double> promedios = [];
  double sumaGeneral = 0;
  double mayorProm = -1;
  int numMayor = 0;
  double menorProm = 999;
  int numMenor = 0;

  int contMenor3 = 0;
  int contMayor4 = 0;
  int cont45a5 = 0;

  for (int i = 0; i < totalCuest; i++) {
    int totalPuntos = cuestionarios[i].reduce((a, b) => a + b);
    double prom = totalPuntos / totalPreg;
    promedios.add(prom);
    sumaGeneral += prom;

    if (prom > mayorProm) {
      mayorProm = prom;
      numMayor = i + 1;
    }

    if (prom < menorProm) {
      menorProm = prom;
      numMenor = i + 1;
    }

    if (prom < 3) contMenor3++;
    if (prom > 4) contMayor4++;
    if (prom >= 4.5 && prom <= 5) cont45a5++;
  }

  double promedioGeneral = sumaGeneral / totalCuest;
  double porcMenor3vsMayor4 = contMayor4 == 0 ? 0 : (contMenor3 / contMayor4) * 100;
  double porc45a5 = (cont45a5 / totalCuest) * 100;

  print("Promedio general: $promedioGeneral");
  print("Promedio más alto: $mayorProm en el instrumento $numMayor");
  print("Promedio más bajo: $menorProm en el instrumento $numMenor");
  print("Porcentaje <3 respecto a >4: $porcMenor3vsMayor4%");
  print("Porcentaje entre 4.5 y 5: $porc45a5%");
}
