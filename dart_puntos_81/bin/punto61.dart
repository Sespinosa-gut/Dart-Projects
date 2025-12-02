int multiplicacionRusa(int a, int b) {
  int suma = 0;
  int multi = a;
  int multi2 = b;

  while (multi > 0) {
    if (multi % 2 != 0) {
      suma += multi2;
    }
    multi ~/= 2;
    multi2 *= 2;
  }

  return suma;
}

void main() {
  int a = 25;
  int b = 7;

  int resultado = multiplicacionRusa(a, b);

  print('Multiplicación rusa de $a x $b = $resultado');
}