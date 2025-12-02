void main() {
  double n = 144;
  if (n <= 0) return;

  double x = 0.1;
  double rn = (x + n / x) / 2;

  while ((x - rn).abs() >= 0.000001) {
    x = rn;
    rn = (x + n / x) / 2;
  }

  print("Raíz: $rn");
}
