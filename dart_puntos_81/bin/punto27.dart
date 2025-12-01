void main() {
  int valor1 = 9;
  int valor2 = 2;
  double valor3 = 12.56;

  int triangulo = (valor1 * valor2) ~/ 2;
  double operacion = 3.14 * (valor2 * valor2);
  int rectangulo = valor1 * valor2;

  if (valor3 == triangulo) {
    print("Es un triangulo");
  } else if (operacion == valor3) {
    print("circulo");
  } else if (valor3 == rectangulo)
    print("Es rectangulo");
}
