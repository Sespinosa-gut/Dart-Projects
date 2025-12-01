import 'dart:io';

void main() {

  stdout.write("Ingrese la edad en años (use decimales si es menor de 1): ");
  double edad = double.parse(stdin.readLineSync()!);

  stdout.write("Ingrese el sexo (M para mujer, H para hombre): ");
  String sexo = stdin.readLineSync()!.toUpperCase();

  stdout.write("Ingrese el nivel de hemoglobina (g%): ");
  double hemoglobina = double.parse(stdin.readLineSync()!);

  double min = 0, max = 0;


  if (edad >= 0 && edad <= 1/12) {
    // 0 - 1 mes
    min = 13;
    max = 26;
  } else if (edad > 1/12 && edad <= 0.5) {
    // >1 mes y <=6 meses
    min = 10;
    max = 18;
  } else if (edad > 0.5 && edad <= 1) {
    // >6 meses y <=12 meses
    min = 11;
    max = 15;
  } else if (edad > 1 && edad <= 5) {
    // >1 y <=5 años
    min = 11.5;
    max = 15;
  } else if (edad > 5 && edad <= 10) {
    min = 12.6;
    max = 15.5;
  } else if (edad > 10 && edad <= 15) {
    min = 13;
    max = 15.5;
  } else {

    if (sexo == "M") {
      min = 12;
      max = 16;
    } else if (sexo == "H") {
      min = 14;
      max = 18;
    } else {
      print("Sexo inválido.");
      return;
    }
  }

  if (hemoglobina < min) {
    print("\nResultado: POSITIVO → La persona tiene anemia.");
  } else {
    print("\nResultado: NEGATIVO → La persona NO tiene anemia.");
  }
}
