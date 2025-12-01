void main() {
  int A = 2;
  int B = 10;
  int C = 5;
  int D = 7;
  if (D == 0) {
    int primera = A - C;
    int cuadrado = primera * primera;
    print("$cuadrado");
  } else if (D > 0) {
    int segunda = A - B;
    double cubo = (segunda * segunda * segunda) / D;
    print("$cubo");
  }
}
