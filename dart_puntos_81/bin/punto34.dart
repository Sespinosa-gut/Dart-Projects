import 'dart:io';

void main() {

  stdout.write("Ingrese la categoría del trabajador (1-4): ");
  int categoria = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese el sueldo actual: ");
  double sueldo = double.parse(stdin.readLineSync()!);

  double aumento = 0;


  switch (categoria) {
    case 1:
      aumento = sueldo * 0.15;
      break;
    case 2:
      aumento = sueldo * 0.10;
      break;
    case 3:
      aumento = sueldo * 0.08;
      break;
    case 4:
      aumento = sueldo * 0.07;
      break;
    default:
      print("Categoría inválida");
      return;
  }

  double nuevoSueldo = sueldo + aumento;


  print("Categoría: $categoria");
  print("Nuevo sueldo: $nuevoSueldo");
}
