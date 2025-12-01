import 'dart:math';

void main() {
  int A = 7;
  int B = 7;
  int C = 5;


  List<int> lados = [A, B, C]..sort();
  int a = lados[0];
  int b = lados[1];
  int c = lados[2]; 

 
  if (a + b > c) {
    print("Sí es un triángulo.");

   
    if (A == B && B == C) {
      print("Triángulo equilátero");
    } else if (A == B || A == C || B == C) {
      print("Triángulo isósceles");
    } else {
      print("Triángulo escaleno");
    }

  
    double S = (A + B + C) / 2;
    double area = sqrt(S * (S - A) * (S - B) * (S - C));

    print("El área del triángulo es: ${area.toStringAsFixed(2)}");

  } else {
    print("No es un triángulo. La suma de los dos lados menores no es mayor que el lado mayor.");
  }
}
