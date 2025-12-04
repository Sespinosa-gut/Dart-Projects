class Temp {
  double max;
  double min;
  Temp(this.max, this.min);
}

List<Temp> datos = [
  Temp(20, 15),
  Temp(31, 10),
  Temp(25, 18),
  Temp(29, 12),
  Temp(14, 14),
  Temp(0, 0)
];

void main() {
  int dias = 0;
  int errores = 0;
  double sumaMax = 0;
  double sumaMin = 0;

  for (var t in datos) {
    if (t.max == 0 && t.min == 0) break;
    dias++;

    bool error = t.max < 14 || t.max > 30 || t.min < 14 || t.min > 30;
    if (error) {
      errores++;
    } else {
      sumaMax += t.max;
      sumaMin += t.min;
    }
  }

  double mediaMax = dias - errores > 0 ? sumaMax / (dias - errores) : 0;
  double mediaMin = dias - errores > 0 ? sumaMin / (dias - errores) : 0;
  double porcentajeErrores = (errores * 100) / dias;

  print("Días registrados: $dias");
  print("Media máxima: $mediaMax");
  print("Media mínima: $mediaMin");
  print("Errores: $errores");
  print("Porcentaje de errores: $porcentajeErrores%");
}
