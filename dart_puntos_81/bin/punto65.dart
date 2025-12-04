class Empleado {
  String nombre;
  String cedula;
  String cargo;
  int hijos;
  int diasAsistidos;

  Empleado(this.nombre, this.cedula, this.cargo, this.hijos, this.diasAsistidos);
}

List<Empleado> empleados = [
  Empleado("Ana Torres", "10124567", "obrero", 2, 29),
  Empleado("Luis Pérez", "80987456", "administrativo", 4, 28),
  Empleado("Carlos Gómez", "55623987", "ejecutivo", 1, 30)
];

double sueldoBasico(String cargo) {
  if (cargo == "obrero") return 100000;
  if (cargo == "administrativo") return 165500;
  return 250000;
}

void main() {
  for (var e in empleados) {
    double basico = sueldoBasico(e.cargo);

    int hijosValidos = e.hijos > 5 ? 5 : e.hijos;
    double aporteHijos = basico * 0.10 * hijosValidos;

    bool asistenciaAlta = e.diasAsistidos > 30 * 0.95;
    double aporteAsistencia = asistenciaAlta ? basico * 0.05 : 0;

    double dedCajaAhorros = basico * 0.10;
    double dedSeguro = basico * 0.02;

    double sueldoNeto = basico + aporteHijos + aporteAsistencia - dedCajaAhorros - dedSeguro;

    print("Empleado: ${e.nombre}");
    print("Cédula: ${e.cedula}");
    print("Sueldo básico: $basico");
    print("Caja de Ahorros: $dedCajaAhorros");
    print("Seguro Social: $dedSeguro");
    print("Sueldo neto: $sueldoNeto\n");
  }
}
