void main() {

  double largoLam = 4.0;   
  double anchoLam = 1.5;    

  double consumoPieza = 0.5;

  double areaLam = largoLam * anchoLam;

  int piezas = (areaLam ~/ consumoPieza);

  double desperdicio = areaLam - (piezas * consumoPieza);

  print("Área de la lámina: $areaLam m²");
  print("Piezas fabricadas: $piezas");
  print("Desperdicio: $desperdicio m²");
}
