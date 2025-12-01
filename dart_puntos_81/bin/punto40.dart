import 'dart:io';

void main() {

  stdout.write("Lectura anterior: ");
  double anterior = double.parse(stdin.readLineSync()!);

  stdout.write("Lectura actual: ");
  double actual = double.parse(stdin.readLineSync()!);


  double consumo = actual - anterior;

  double costo = 0;

  if (consumo >= 0 && consumo <= 100) {
    costo = 2.622 * consumo;
  } else if (consumo >= 101 && consumo <= 300) {
    costo = 79.78 * consumo;
  } else if (consumo >= 301 && consumo <= 500) {
    costo = 89.52 * consumo;
  } else if (consumo >= 501) {
    costo = 97.95 * consumo;
  } else {
    print("Error: el consumo no puede ser negativo.");
    return;
  }


  print("\nConsumo total: $consumo Kwh");
  print("Monto a pagar: ${costo.toStringAsFixed(2)} Bs.");
}
