void main() {

  double precioPVP = 150000;    
  double precioPagado = 120000;  


  double descuento = precioPVP - precioPagado;


  double porcentaje = (descuento / precioPVP) * 100;


  print("Descuento aplicado: $descuento");
  print("Porcentaje de descuento: $porcentaje%");
}
