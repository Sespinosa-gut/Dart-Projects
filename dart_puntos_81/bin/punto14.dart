void main() {

  double a = 2;
  double b = 3;
  double c = 8;

  double d = 4;
  double e = 5;
  double f = 14;

 
  double denominador = (a * e) - (b * d);


  double X = ((c * e) - (b * f)) / denominador;
  double Y = ((a * f) - (c * d)) / denominador;


  print("El valor de X es: $X");
  print("El valor de Y es: $Y");
}
