void main() {

  double P = 500;   
  double T = 60;  

 
  double precioCuotas = T * 12;

  double recargo = ((precioCuotas - P) / P) * 100;

  print("Precio al contado: $P");
  print("Precio por cuotas: $precioCuotas");
  print("El porcentaje de recargo es: $recargo%");
}
