class Alumno {
  int edad;
  String sexo;
  String estadoCivil;
  String especialidad;

  Alumno(this.edad, this.sexo, this.estadoCivil, this.especialidad);
}

List<Alumno> alumnos = [
  Alumno(22, "F", "soltera", "sistemas"),
  Alumno(19, "M", "soltero", "sistemas"),
  Alumno(25, "F", "casada", "contabilidad"),
  Alumno(18, "M", "soltero", "electrónica"),
  Alumno(30, "F", "soltera", "contabilidad"),
  Alumno(20, "M", "casado", "sistemas"),
  Alumno(23, "F", "soltera", "electrónica"),
  Alumno(17, "M", "soltero", "contabilidad")
];

void main() {
  var mujeres = alumnos.where((a) => a.sexo == "F").toList();
  var hombres = alumnos.where((a) => a.sexo == "M").toList();

  double promEdadMujeres = mujeres.isEmpty ? 0 : mujeres.map((a) => a.edad).reduce((a, b) => a + b) / mujeres.length;
  double promEdadHombres = hombres.isEmpty ? 0 : hombres.map((a) => a.edad).reduce((a, b) => a + b) / hombres.length;

  int cantMujeres = mujeres.length;
  int cantHombres = hombres.length;

  var total = alumnos.length;

  var estados = <String, int>{};
  for (var a in alumnos) {
    estados[a.estadoCivil] = (estados[a.estadoCivil] ?? 0) + 1;
  }

  var especialidades = <String, int>{};
  for (var a in alumnos) {
    especialidades[a.especialidad] = (especialidades[a.especialidad] ?? 0) + 1;
  }

  int mujeresAdultas = mujeres.where((a) => a.edad > 21).length;
  double porcMujeresAdultas = total == 0 ? 0 : (mujeresAdultas * 100) / total;

  int hombresJovenes = hombres.where((a) => a.edad < 21 && a.edad > 17).length;
  double porcHombresJovenes = total == 0 ? 0 : (hombresJovenes * 100) / total;

  int hombresSolteros = hombres.where((a) => a.estadoCivil == "soltero").length;
  int mujeresSolteras = mujeres.where((a) => a.estadoCivil == "soltera").length;

  print("Promedio edad mujeres: $promEdadMujeres");
  print("Promedio edad hombres: $promEdadHombres");
  print("Cantidad mujeres: $cantMujeres");
  print("Cantidad hombres: $cantHombres");

  print("Porcentaje por estado civil:");
  estados.forEach((k, v) {
    print("$k: ${(v * 100) / total}%");
  });

  print("Cantidad y porcentaje por especialidad:");
  especialidades.forEach((k, v) {
    print("$k: $v - ${(v * 100) / total}%");
  });

  print("Porcentaje mujeres adultas: $porcMujeresAdultas%");
  print("Porcentaje hombres jóvenes: $porcHombresJovenes%");
  print("Hombres solteros: $hombresSolteros");
  print("Mujeres solteras: $mujeresSolteras");
}
