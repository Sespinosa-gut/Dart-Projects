void main() {
  double limite = 1000;
  double suma = 0.0;
  int n = 0;

  for (int k = 1;; k++) {
    double termino = (k * k + 1) / k;
    if (suma + termino > limite) {
      n = k - 1;
      break;
    }
    suma += termino;
  }

  print("Número de términos: $n");
  print("Suma hasta k=$n: $suma");
}
