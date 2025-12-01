import 'dart:io';

void main() {
  stdout.write("Ingrese el capital actual: ");
  double capital = double.parse(stdin.readLineSync()!);

  double nuevoSaldo = 0;


  if (capital < 0) {
    nuevoSaldo = 10000;
  } else if (capital > 0 && capital <= 20000) {
    nuevoSaldo = 20000;
  } else {
    nuevoSaldo = capital; 
  }

  print("\nNuevo saldo disponible: \$$nuevoSaldo");


  double resto = nuevoSaldo - 5000 - 2000;

  
  double insumos = resto / 2;
  double incentivos = resto / 2;

  print("\nDistribución del presupuesto:");
  print("Equipo de cómputo: \$5000");
  print("Mobiliario: \$2000");
  print("Insumos: \$$insumos");
  print("Incentivos al personal: \$$incentivos");
}
