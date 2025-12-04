bool esPerfecto(int n) {
  int suma = 0;
  for (int i = 1; i < n; i++) {
    if (n % i == 0) suma += i;
  }
  return suma == n;
}

void main() {
  int encontrados = 0;
  int numero = 1;

  while (encontrados < 3) {
    if (esPerfecto(numero)) {
      print(numero);
      encontrados++;
    }
    numero++;
  }
}
