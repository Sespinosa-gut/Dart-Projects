void main() {
  double sueldo = 1400000;
  double aumento = 0.15;
  double aumento2 = 0.12;

  if (sueldo < 40000) {
    double sueldoAumento = sueldo + (sueldo * aumento);
    print(
      "como el sueldo es menor a 40000 entonces el total del sueldo mas el aumento es de $sueldoAumento",
    );
  } else {
    double sueldoAumento2 = sueldo + (sueldo * aumento2);

    print(
      "como el sueldo es mayor a 40000 entonces el total del sueldo mas el aumento es de $sueldoAumento2",
    );
  }
}
