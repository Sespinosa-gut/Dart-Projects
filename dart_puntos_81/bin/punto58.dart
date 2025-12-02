void main() {
  double capital = 1000;
  double tasa = 0.06;
  int semanas = 10;

  int dias = semanas * 7;

  for (int i = 0; i < dias; i++) {
    double interesDiario = (tasa * capital) / 365;
    capital += interesDiario;
  }

  print("Capital acumulado: $capital");
}
