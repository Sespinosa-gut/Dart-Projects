void main() {
  double sueldo = 500000.0;
  double venta1 = 100000.0;
  double venta2 = 150000.0;
  double venta3 = 200000.0;
  double aumentoComision = 0.10; 

  double comision1 = venta1 * aumentoComision;
  double comision2 = venta2 * aumentoComision;  
  double comision3 = venta3 * aumentoComision;
  double sueldoFinal =
      sueldo + comision1 + comision2 + comision3;
  print('El sueldo final es: $sueldoFinal');
}