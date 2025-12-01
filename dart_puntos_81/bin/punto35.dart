import 'dart:io';

void main() {
  stdout.write("Ingrese la temperatura en grados Fahrenheit: ");
  double temp = double.parse(stdin.readLineSync()!);

  String deporte = "";

  if (temp > 85) {
    deporte = "Natación";
  } else if (temp > 70 && temp < 85) {
    deporte = "Tenis";
  } else if (temp > 32 && temp < 70) {
    deporte = "Golf";
  } else if (temp > 10 && temp <= 32) {
    deporte = "Esquí";
  } else if (temp <= 10) {
    deporte = "Marcha";
  }

  print("El deporte apropiado es: $deporte");
}
