int sumaDivisores(int n) {
  int suma = 0;
  for (int i = 1; i < n; i++) {
    if (n % i == 0) suma += i;
  }
  return suma;
}

void main() {
  int paresEncontrados = 0;
  int numero = 1;

  while (paresEncontrados < 4) {
    int b = sumaDivisores(numero);
    if (b > numero && sumaDivisores(b) == numero) {
      print("$numero y $b");
      paresEncontrados++;
    }
    numero++;
  }
}
