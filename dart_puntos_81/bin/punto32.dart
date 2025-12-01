void main() {
  int P = 5;
  int Q = 4;

  int expresion = (P * P * P) + (Q * Q * Q * Q) - (2 * P * P);

  if (expresion > 680) {
    print("La expresión se cumple.");
    print("P = $P, Q = $Q");
  } else {
    print("La expresión NO se cumple.");
  }
}
