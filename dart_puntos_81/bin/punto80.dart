class Persona {
  int edad;
  String educacion;
  String situacion;
  int estado;
  int ciudad;
  int municipio;
  Persona(this.edad, this.educacion, this.situacion, this.estado, this.ciudad, this.municipio);
}

List<Persona> personas = [
  Persona(30, "N", "D", 10, 1010, 101001),
  Persona(40, "N", "D", 10, 1010, 101001),
  Persona(22, "B", "E", 10, 1010, 101001),

  Persona(50, "N", "D", 20, 2020, 202002),
  Persona(28, "N", "D", 20, 2020, 202002),
  Persona(26, "S", "E", 20, 2020, 202002),

  Persona(35, "P", "D", 10, 1020, 102002),
  Persona(33, "P", "D", 10, 1020, 102002),
  Persona(31, "P", "E", 10, 1020, 102002)
];

void main() {
  int mun1 = 101001;
  int mun2 = 202002;
  int mun3 = 102002;

  int cMun1 = 0;
  int cMun2 = 0;
  int cMun3 = 0;

  int totalMun1 = 0;
  int totalMun2 = 0;
  int totalMun3 = 0;

  Map<int, int> ciudadCriticas = {};
  Map<int, int> ciudadTotales = {};

  Map<int, int> estadoProfDes = {};
  Map<int, int> estadoTot = {};

  for (var p in personas) {
    if (p.municipio == mun1) totalMun1++;
    if (p.municipio == mun2) totalMun2++;
    if (p.municipio == mun3) totalMun3++;

    if (p.educacion == "N" && p.situacion == "D" && p.edad > 25) {
      if (p.municipio == mun1) cMun1++;
      if (p.municipio == mun2) cMun2++;
      if (p.municipio == mun3) cMun3++;

      ciudadCriticas[p.ciudad] = (ciudadCriticas[p.ciudad] ?? 0) + 1;
    }

    ciudadTotales[p.ciudad] = (ciudadTotales[p.ciudad] ?? 0) + 1;

    if (p.educacion == "P") {
      estadoTot[p.estado] = (estadoTot[p.estado] ?? 0) + 1;
      if (p.situacion == "D") {
        estadoProfDes[p.estado] = (estadoProfDes[p.estado] ?? 0) + 1;
      }
    }
  }

  print("Municipio $mun1 Cantidad: $cMun1");
  print("Municipio $mun2 Cantidad: $cMun2");
  print("Municipio $mun3 Cantidad: $cMun3");

  for (var c in ciudadCriticas.keys) {
    double porc = ciudadCriticas[c]! * 100 / ciudadTotales[c]!;
    if (porc > 50) {
      print("Ciudad mas del 50%: $c");
    }
  }

  int estadoMax = 0;
  double mayorPorc = 0;

  for (var e in estadoProfDes.keys) {
    double porc = estadoProfDes[e]! * 100 / estadoTot[e]!;
    if (porc > mayorPorc) {
      mayorPorc = porc;
      estadoMax = e;
    }
  }

  print("Estado mayor porcentaje profesionales desempleados: $estadoMax");
}











































// GRACIAS POR REVISAR TODO MI CODIGO
// DEJO UNA ASCCI DURO DE COJONES DE XI JING PING

/* 
⣿⣿⣿⣿⣿⠟⠋⠄⠄⠄⠄⠄⠄⠄⢁⠈⢻⢿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⠃⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠈⡀⠭⢿⣿⣿⣿⣿
⣿⣿⣿⣿⡟⠄⢀⣾⣿⣿⣿⣷⣶⣿⣷⣶⣶⡆⠄⠄⠄⣿⣿⣿⣿
⣿⣿⣿⣿⡇⢀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠄⠄⢸⣿⣿⣿⣿
⣿⣿⣿⣿⣇⣼⣿⣿⠿⠶⠙⣿⡟⠡⣴⣿⣽⣿⣧⠄⢸⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣾⣿⣿⣟⣭⣾⣿⣷⣶⣶⣴⣶⣿⣿⢄⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⡟⣩⣿⣿⣿⡏⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣹⡋⠘⠷⣦⣀⣠⡶⠁⠈⠁⠄⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣍⠃⣴⣶⡔⠒⠄⣠⢀⠄⠄⠄⡨⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣦⡘⠿⣷⣿⠿⠟⠃⠄⠄⣠⡇⠈⠻⣿⣿⣿⣿
⣿⣿⣿⣿⡿⠟⠋⢁⣷⣠⠄⠄⠄⠄⣀⣠⣾⡟⠄⠄⠄⠄⠉⠙⠻
⡿⠟⠋⠁⠄⠄⠄⢸⣿⣿⡯⢓⣴⣾⣿⣿⡟⠄⠄⠄⠄⠄⠄⠄⠄
⠄⠄⠄⠄⠄⠄⠄⣿⡟⣷⠄⠹⣿⣿⣿⡿⠁⠄⠄⠄⠄⠄⠄⠄⠄*/
