void main() {
  String nombreCliente = "Juan Pérez";
  double montoCompra = 8000;

  double descuento = 0;
  double montoAPagar = 0;


  if (montoCompra < 500) {
    descuento = 0;
  } 
  else if (montoCompra >= 500 && montoCompra <= 1000) {
    descuento = montoCompra * 0.05;
  } 
  else if (montoCompra > 1000 && montoCompra <= 7000) {
    descuento = montoCompra * 0.11;
  } 
  else if (montoCompra > 7000 && montoCompra <= 15000) {
    descuento = montoCompra * 0.18;
  } 
  else { // mayor a 15000
    descuento = montoCompra * 0.25;
  }


  montoAPagar = montoCompra - descuento;


  print("Nombre del cliente: $nombreCliente");
  print("Monto de la compra: \$$montoCompra");
  print("Descuento recibido: \$$descuento");
  print("Monto final a pagar: \$$montoAPagar");
}
