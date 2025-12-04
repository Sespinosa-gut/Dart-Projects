class Nino {
  String sexo;
  double edad;
  String estado;
  Nino(this.sexo, this.edad, this.estado);
}

List<Nino> datos = [
  Nino("M", 0.5, "Táchira"),
  Nino("F", 2, "Distrito Capital"),
  Nino("M", 4, "Lara"),
  Nino("F", 1, "Táchira"),
  Nino("F", 7, "Miranda"),
  Nino("M", 3, "Distrito Capital"),
  Nino("M", 5, "Táchira"),
  Nino("F", 8, "Aragua")
];

void main() {
  int total = datos.length;
  int tachira = 0;
  int capital = 0;
  int g1 = 0;
  int g2 = 0;
  int g3 = 0;
  int g4 = 0;
  int ninos = 0;
  int ninas = 0;

  for (var n in datos) {
    if (n.estado == "Táchira") {
      tachira++;
    }
    if (n.estado == "Distrito Capital") {
      capital++;
    }
    if (n.edad < 1) {
      g1++;
    } else if (n.edad <= 3) {
      g2++;
    } else if (n.edad <= 6) {
      g3++;
    } else {
      g4++;
    }
    if (n.sexo == "M") {
      ninos++;
    } else {
      ninas++;
    }
  }

  double pTachira = (tachira * 100) / total;
  double pCapital = (capital * 100) / total;
  double pNinos = (ninos * 100) / total;
  double pNinas = (ninas * 100) / total;

  print("Total huérfanos: $total");
  print("Porcentaje Táchira: $pTachira%");
  print("Porcentaje Distrito Capital: $pCapital%");
  print("Grupo 1 (<1 año): $g1");
  print("Grupo 2 (1-3 años): $g2");
  print("Grupo 3 (4-6 años): $g3");
  print("Grupo 4 (>6 años): $g4");
  print("Niños: $ninos");
  print("Niñas: $ninas");
  print("Porcentaje niños: $pNinos%");
  print("Porcentaje niñas: $pNinas%");
}
