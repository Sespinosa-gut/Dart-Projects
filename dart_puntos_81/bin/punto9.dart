void main() {
  double horas = 40;
  double precioHora = 50000;

  double sueldo = horas * precioHora;
  double salarioTotal = sueldo - (sueldo * 0.20);

  print("Salario : $salarioTotal Pesos");
}
