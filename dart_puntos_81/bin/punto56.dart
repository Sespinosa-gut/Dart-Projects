void main() {
  int dividendo = 8;
  int divisor = 2;

  int cociente = 0;
  int resto = dividendo;

  while (resto >= divisor) {
    resto = resto - divisor;
    cociente++;
  }

  print("Cociente: $cociente");
  print("Resto: $resto");
}
