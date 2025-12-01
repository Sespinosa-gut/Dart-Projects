void main() {
  
  int hombres = 12;
  int mujeres = 18;

  int total = hombres + mujeres;

  double porcentajeHombres = (hombres * 100) / total;
  double porcentajeMujeres = (mujeres * 100) / total;

  print("Porcentaje de hombres: $porcentajeHombres%");
  print("Porcentaje de mujeres: $porcentajeMujeres%");
}
