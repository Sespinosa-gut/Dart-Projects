void main() {
  
  double galones = 10;       
  double litrosPorGalon = 3.785;
  double precioLitro = 100.0;  

  double litros = galones * litrosPorGalon;

  double totalPagar = litros * precioLitro;

  print("Litros surtidos: $litros");
  print("Total a pagar: $totalPagar Bolívares");
}
