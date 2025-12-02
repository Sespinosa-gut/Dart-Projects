void main() {
  List<int> edades = [
    5, 8, 12, 15, 20, 25, 30, 35, 40, 50,
    60, 70, 10, 14, 18, 28, 33, 45, 55, 65,
    7, 9, 11, 13, 17, 22, 27, 38, 48, 58,
    62, 75, 6, 4, 3, 2, 1, 16, 19, 21,
    23, 26, 29, 31, 34, 37, 42, 47, 53, 57,
    61, 72, 8, 9, 10, 11, 12, 13, 14, 15,
    50, 45, 40, 35, 30, 25, 20, 18, 16, 14,
    60, 65, 70, 75, 80, 85, 90, 95, 12, 19,
    27, 39, 49, 59, 69, 79, 89, 99, 5, 7,
    9, 11, 13, 17, 21, 33, 44, 55
  ];

  List<double> pesos = [
    20, 22, 30, 45, 60, 65, 70, 75, 80, 82,
    70, 65, 25, 40, 55, 62, 72, 78, 85, 68,
    18, 21, 23, 40, 52, 58, 63, 74, 79, 81,
    72, 60, 19, 17, 15, 14, 13, 50, 55, 59,
    61, 64, 67, 71, 73, 77, 82, 86, 90, 92,
    75, 70, 22, 23, 25, 28, 31, 34, 37, 45,
    78, 76, 74, 72, 70, 65, 60, 58, 55, 52,
    80, 82, 84, 86, 88, 90, 92, 94, 33, 50,
    65, 77, 83, 88, 70, 72, 74, 76, 18, 20,
    25, 28, 32, 38, 46, 60, 72, 84
  ];

  double sumNinos = 0, sumJovenes = 0, sumAdultos = 0, sumViejos = 0;
  int cNinos = 0, cJovenes = 0, cAdultos = 0, cViejos = 0;
  

  for (int i = 0; i < edades.length; i++) {
    int edad = edades[i];
    double peso = pesos[i];

    if (edad >= 0 && edad <= 12) {
      sumNinos += peso;
      cNinos++;
    } else if (edad >= 13 && edad <= 29) {
      sumJovenes += peso;
      cJovenes++;
    } else if (edad >= 30 && edad <= 59) {
      sumAdultos += peso;
      cAdultos++;
    } else {
      sumViejos += peso;
      cViejos++;
    }
  }

  double promNinos = cNinos == 0 ? 0 : sumNinos / cNinos;
  double promJovenes = cJovenes == 0 ? 0 : sumJovenes / cJovenes;
  double promAdultos = cAdultos == 0 ? 0 : sumAdultos / cAdultos;
  double promViejos = cViejos == 0 ? 0 : sumViejos / cViejos;

  print(promNinos);
  print(promJovenes);
  print(promAdultos);
  print(promViejos);
}
