class Alumno {
  String nombre;
  List<List<double>> materias; 
  Alumno(this.nombre, this.materias);
}

class Grupo {
  String nombre;
  List<Alumno> alumnos;
  Grupo(this.nombre, this.alumnos);
}


List<Grupo> grupos = [
  Grupo("Grupo A", [
    Alumno("Luis", [
      [10, 9, 8],      // Materia 1
      [9, 9, 10],      // Materia 2
    ]),
    Alumno("Ana", [
      [8, 9, 9],
      [10, 9, 10]
    ])
  ]),
  Grupo("Grupo B", [
    Alumno("Pedro", [
      [7, 8, 7],
      [8, 8, 9],
      [10, 9, 10]
    ]),
  ])
];

void main() {
  double sumaPromGrupos = 0;

  for (var g in grupos) {
    double sumaPromGrupo = 0;

    print("Promedios del ${g.nombre}:");

    for (var a in g.alumnos) {
      double sumaPromAlumno = 0;

      for (var materia in a.materias) {
        double sumaMat = 0;
        for (var nota in materia) {
          sumaMat += nota;
        }
        double promMat = sumaMat / materia.length;
        sumaPromAlumno += promMat;
      }

      double promAlumno = sumaPromAlumno / a.materias.length;

      print("- ${a.nombre}: Promedio alumno = $promAlumno");

      sumaPromGrupo += promAlumno;
    }

    double promGrupo = sumaPromGrupo / g.alumnos.length;
    print("Promedio del grupo ${g.nombre}: $promGrupo\n");

    sumaPromGrupos += promGrupo;
  }

  double promGeneral = sumaPromGrupos / grupos.length;
  print("Promedio general de todos los grupos: $promGeneral");
}
