import 'dart:math';

class Satelite {
  String nombre;
  double masa;
  double altura;
  Satelite(this.nombre, this.masa, this.altura);
}

List<Satelite> datos = [
  Satelite("Canada 1", 8300, 31200000),
  Satelite("Alfa 1", 5500, 36000000),
  Satelite("Boby 4", 12000, 33450000),
  Satelite("Che 3", 9000, 35000000)
];

void main() {
  double G = 6.67259e-11;
  double M = 5.97e24;

  double mayorF = -1;
  double menorF = pow(10, 99).toDouble();
  double sumaF = 0;

  double mayorMasa = -1;
  double sumaMasa = 0;

  double menorAltura = pow(10, 99).toDouble();
  double mayorAltura = -1;

  int n = datos.length;

  for (var s in datos) {
    double r = s.altura;
    double F = G * s.masa * M / (r * r);

    if (F > mayorF) mayorF = F;
    if (F < menorF) menorF = F;

    sumaF += F;

    if (s.masa > mayorMasa) mayorMasa = s.masa;
    sumaMasa += s.masa;

    if (s.altura < menorAltura) menorAltura = s.altura;
    if (s.altura > mayorAltura) mayorAltura = s.altura;
  }

  double promedioF = sumaF / n;
  double promedioM = sumaMasa / n;

  print("Mayor fuerza: $mayorF");
  print("Menor fuerza: $menorF");
  print("Fuerza promedio: $promedioF");
  print("Mayor masa: $mayorMasa");
  print("Masa promedio: $promedioM");
  print("Menor altura: $menorAltura");
  print("Mayor altura: $mayorAltura");
}
