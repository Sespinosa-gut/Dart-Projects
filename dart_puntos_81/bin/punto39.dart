void main() {
  double precioInicial = 100000;   
  double valorAuto = 85000;      
  double valorTerreno = 130000;      

  double devaluacion = precioInicial - valorAuto;
  double incremento = valorTerreno - precioInicial;

  print("Devaluación del auto: $devaluacion");
  print("Incremento del terreno: $incremento");


 
  if (devaluacion <= incremento / 2) {
    print("La persona DEBE comprar el automóvil.");
  } else {
    print("La persona NO debe comprar el automóvil, conviene el terreno.");
  }
}
