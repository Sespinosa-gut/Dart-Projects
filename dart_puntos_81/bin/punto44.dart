import 'dart:io';

void main() {
  stdout.write("Ingrese el monto total de la inversión necesaria: ");
  double inversionTotal = double.parse(stdin.readLineSync()!);

  stdout.write("Ingrese el monto que el banco le presta por hipotecar la casa: ");
  double hipoteca = double.parse(stdin.readLineSync()!);

  double aportaPersona = 0;
  double aportaSocio = 0;

  
  if (hipoteca < 1000000) {
    aportaPersona = inversionTotal * 0.50;
    aportaSocio = inversionTotal * 0.50;
  } else {
   
    aportaPersona = hipoteca;

    double faltante = inversionTotal - hipoteca;

    if (faltante < 0) {
      faltante = 0; 
    }

    aportaPersona += faltante / 2;
    aportaSocio = faltante / 2;
  }

  print("\n--- Distribución de la inversión ---");
  print("Aporte de la persona: \$$aportaPersona");
  print("Aporte del socio:    \$$aportaSocio");
}
