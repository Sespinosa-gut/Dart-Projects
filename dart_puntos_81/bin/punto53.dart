void main() {
  List<Map<String, dynamic>> empleados = [
    {"nombre": "Ana", "nac": "V", "edad": 25, "tipo": 1, "horas": 40},
    {"nombre": "Luis", "nac": "E", "edad": 31, "tipo": 2, "horas": 35},
    {"nombre": "Sara", "nac": "V", "edad": 29, "tipo": 3, "horas": 45},
    {"nombre": "Miguelitoyt", "nac": "E", "edad": 27, "tipo": 1, "horas": 50},
    {"nombre": "Juancho", "nac": "V", "edad": 40, "tipo": 2, "horas": 38}
  ];

  int totalV1 = 0, totalV2 = 0, totalV3 = 0;
  int totalExtImpar = 0;
  int sumaEdades = 0;
  double totalSueldos = 0.0;

  for (var emp in empleados) {
    double pagoHora = emp["tipo"] == 1 ? 5000.0 : emp["tipo"] == 2 ? 10000.0 : 15000.0;
    double horas = emp["horas"].toDouble();
    double sueldoBasico = horas * pagoHora;
    double seguro = sueldoBasico > 100000 ? sueldoBasico * 0.03 : 0.0;

    if (emp["nac"] == "V") {
      if (emp["tipo"] == 1) totalV1++;
      if (emp["tipo"] == 2) totalV2++;
      if (emp["tipo"] == 3) totalV3++;
    }

    int edad = emp["edad"] is int ? emp["edad"] : int.tryParse(emp["edad"].toString()) ?? 0;

    if (emp["nac"] == "E" && edad % 2 != 0) {
      totalExtImpar++;
    }

    sumaEdades += edad;
    totalSueldos += sueldoBasico - seguro;

    print("Empleado: ${emp["nombre"]}");
    print("Sueldo básico: $sueldoBasico");
    print("Seguro social: $seguro");
    print("Total a pagar: ${sueldoBasico - seguro}");
    print("");
  }

  double promedioEdad = sumaEdades / empleados.length;

  print("Venezolanos tipo 1: $totalV1");
  print("Venezolanos tipo 2: $totalV2");
  print("Venezolanos tipo 3: $totalV3");
  print("Extranjeros con edad impar: $totalExtImpar");
  print("Promedio de edad: $promedioEdad");
  print("Total general a pagar: $totalSueldos");
}
