void main() {
  int totalCompra = 120000;
  double descuento = 0.15;

  double montoDescuento = totalCompra * descuento;
  double totalPagar = totalCompra - montoDescuento;
  print('El total a pagar es: $totalPagar');
}