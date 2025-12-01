void main() {
 
  int lecturaAnterior = 3500;
  int lecturaActual = 3720;
  double costoKilovatio = 120.0;

 
  int consumo = lecturaActual - lecturaAnterior;

 
  double totalPagar = consumo * costoKilovatio;


  print("Consumo del mes: $consumo kW");
  print("Costo por kW: $costoKilovatio");
  print("Monto total a pagar: $totalPagar");
}
