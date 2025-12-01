void main() {

  int calificacion1 = 85;
  int calificacion2 = 90;
  int calificacion3 = 78;

  double promedio =
      (calificacion1 + calificacion2 + calificacion3) / 3;
  
  int examenFinal= 83;

  int calificacionFinal = 0;


  double totalFinal = (promedio * 0.55) + (examenFinal * 0.30) + (calificacionFinal * 0.15);
  print('La calificación final es: $totalFinal');
  
}