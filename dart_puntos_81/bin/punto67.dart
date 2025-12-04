double deudaInicial = 12775;
double primerPago = 100;
double aumento = 125;

void main() {
  double deuda = deudaInicial;
  double pago = primerPago;
  int numeroPagos = 0;

  while (deuda > 0) {
    double pagoReal = pago > deuda ? deuda : pago;

    print("Pago ${numeroPagos + 1}: $pagoReal - Pendiente: ${deuda - pagoReal}");

    deuda -= pagoReal;
    pago += aumento;
    numeroPagos++;
  }

  print("\nNúmero total de pagos: $numeroPagos");
  print("Último pago: ${pago - aumento}");
}
