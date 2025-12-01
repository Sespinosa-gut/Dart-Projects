void main() {
  int A = 2;
  int B = 3;
  int C = 6;
  int D = 2;


  int N = A * 1000 + B * 100 + C * 10 + D;

 
  int centenas = (N / 100).round(); 
  int resultado = centenas * 100;

  print("N = $N");
  print("Redondeado = $resultado");
}
