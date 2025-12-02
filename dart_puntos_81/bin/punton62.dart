class Empresa {
  int actividad;
  int localizacion;
  int trabajadores;

  Empresa(this.actividad, this.localizacion, this.trabajadores);
}

double porcentaje(int parte, int total) {
  if (total == 0) return 0;
  return (parte * 100) / total;
}

void main() {
  List<Empresa> empresas = [
    Empresa(1, 1, 50),
    Empresa(1, 2, 40),
    Empresa(2, 1, 120),
    Empresa(3, 2, 200),
    Empresa(3, 2, 150),
    Empresa(3, 3, 80),
    Empresa(4, 4, 20),
    Empresa(2, 4, 90),
    Empresa(5, 1, 10),
    Empresa(3, 2, 300),
    Empresa(2, 3, 60),
  ];

  int totalEmpresas = empresas.length;

  int agricola = empresas.where((e) => e.actividad == 1).length;

  List<Empresa> mineras = empresas.where((e) => e.actividad == 3).toList();
  int totalMineras = mineras.length;
  int minerasSur = mineras.where((e) => e.localizacion == 2).length;

  Map<int, int> sumaTrab = {1: 0, 2: 0, 3: 0, 4: 0, 5: 0};
  Map<int, int> contTrab = {1: 0, 2: 0, 3: 0, 4: 0, 5: 0};

  for (var e in empresas) {
    sumaTrab[e.actividad] = sumaTrab[e.actividad]! + e.trabajadores;
    contTrab[e.actividad] = contTrab[e.actividad]! + 1;
  }

  List<Empresa> industriales = empresas.where((e) => e.actividad == 2).toList();
  Map<int, int> contLoc = {1: 0, 2: 0, 3: 0, 4: 0};

  for (var e in industriales) {
    contLoc[e.localizacion] = contLoc[e.localizacion]! + 1;
  }

  int locMax = 1;
  for (int i = 1; i <= 4; i++) {
    if (contLoc[i]! > contLoc[locMax]!) locMax = i;
  }

  print('Porcentaje de empresas agrícolas: ${porcentaje(agricola, totalEmpresas)}%');
  print('Porcentaje de mineras del sur: ${porcentaje(minerasSur, totalMineras)}%');

  print('Promedio trabajadores por actividad:');
  for (int a = 1; a <= 5; a++) {
    double prom = contTrab[a] == 0 ? 0 : sumaTrab[a]! / contTrab[a]!;
    print('Actividad $a: $prom');
  }

  print('Localización con más empresas industriales: $locMax');
}
