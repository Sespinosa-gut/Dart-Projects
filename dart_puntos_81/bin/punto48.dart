void main(){
  int F= 20;


  double C = 5 * (F - 32) / 9;
  double R = F + 459.67;
  double K = C + 273.15;
  
  print("Fahrenheit: $F");
  print("Celsius: ${C.toStringAsFixed(2)}");
  print("Kelvin: ${K.toStringAsFixed(2)}");
  print("Rankine: ${R.toStringAsFixed(2)}");
}