void main() {
  int monto = 187560;
  int restante = monto;

  List<int> billetes = [
    50000, 20000, 10000, 5000,
    2000, 1000, 500, 100,
    50, 20, 10
  ];

  print("Monto total: $monto Bs");
  print("Desglose:");

  for (int b in billetes) {
    int cantidad = restante ~/ b; 
    if (cantidad > 0) {
      print("$cantidad billete(s) de $b Bs");
    }
    restante = restante % b; 
  }

  if (restante > 0) {
    print("Sobrante no desglosable: $restante Bs");
  }
}
