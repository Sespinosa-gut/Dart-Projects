void main() {
  List<Map<String, dynamic>> alumnos = [
    {"mat": 15.0, "prog": 18.0, "ing": 0.0},
    {"mat": 12.0, "prog": 10.0, "ing": 14.0},
    {"mat": 8.0,  "prog": 5.0,  "ing": 0.0},
    {"mat": 17.0, "prog": 19.0, "ing": 18.0},
    {"mat": 10.0, "prog": 7.0,  "ing": 12.0}
  ];

  double menorProg = double.infinity;
  int sinIngles = 0;
  int conIngles = 0;
  int apruebanTodas = 0;
  double sumaProg = 0;
  int totalProg = 0;
  int matPresentaron = 0;
  int matReprobaron = 0;

  for (var a in alumnos) {
    double mat = a["mat"];
    double prog = a["prog"];
    double ing = a["ing"];

    if (prog < menorProg) menorProg = prog;

    if (ing == 0) {
      sinIngles++;
    } else {
      conIngles++;
    }

    if (mat >= 10 && prog >= 10 && ing >= 10) {
      apruebanTodas++;
    }

    sumaProg += prog;
    totalProg++;

    if (mat > 0) {
      matPresentaron++;
      if (mat < 10) matReprobaron++;
    }
  }

  double porcSinIngles = conIngles == 0 ? 0 : (sinIngles / conIngles) * 100;
  double promedioProg = sumaProg / totalProg;
  double porcMatReprob = matPresentaron == 0 ? 0 : (matReprobaron / matPresentaron) * 100;

  print("Nota menor de Programación: $menorProg");
  print("Porcentaje sin inglés respecto a los que sí: $porcSinIngles%");
  print("Alumnos que aprobaron todas las materias: $apruebanTodas");
  print("Promedio general en Programación: $promedioProg");
  print("Porcentaje que reprobaron Matemática: $porcMatReprob%");
}
