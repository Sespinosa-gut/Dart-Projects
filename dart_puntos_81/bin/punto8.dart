import 'dart:math';

void main() {
  double a = 5;
  double b = 7;
  double c = 8;

  double p = (a + b + c) / 2;
  double area = sqrt(p * (p - a) * (p - b) * (p - c));

  print("Área: $area");
  

}
