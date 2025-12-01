void main() {
 
  int X = 48000;  
  double Y = 6;   
  double K = 42000; 


  double docenas = X / 12;

  double inversion = docenas * Y;

  double ganancia = K - inversion;


  double porcentaje = (ganancia / inversion) * 100;


  print("Inversión total: $inversion");
  print("Ganancia obtenida: $ganancia");
  print("Porcentaje de ganancia: $porcentaje%");
}
