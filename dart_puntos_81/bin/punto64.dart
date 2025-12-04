void main() {
  double objetivo = 1.99;
  double suma = 0;
  int terminos = 0;

  while (true) {
    double termino = 1 / (1 << terminos);
    if (suma + termino > objetivo) break;
    suma += termino;
    terminos++;
  }

  print("Número de términos: $terminos");
  print("Suma obtenida: $suma");
}
