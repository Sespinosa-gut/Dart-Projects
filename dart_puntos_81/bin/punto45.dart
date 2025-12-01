import 'dart:math';
import 'dart:io';

void main() {
  stdout.write("Ingrese A: ");
  double A = double.parse(stdin.readLineSync()!);

  stdout.write("Ingrese B: ");
  double B = double.parse(stdin.readLineSync()!);

  stdout.write("Ingrese C: ");
  double C = double.parse(stdin.readLineSync()!);

  double D = pow(B, 2) - 4 * A * C;

  print("\nDiscriminante (D): $D");

  if (D == 0) {
 
    double x = -B / (2 * A);
    print("D = 0 → Tiene una sola solución real:");
    print("X1 = X2 = $x");
  } else if (D > 0) {
 
    double x1 = (-B + sqrt(D)) / (2 * A);
    double x2 = (-B - sqrt(D)) / (2 * A);

    print("D > 0 → Tiene dos soluciones reales:");
    print("X1 = $x1");
    print("X2 = $x2");
  } else {
 
    print("D < 0 → No tiene solución en los números reales.");
  }
}
