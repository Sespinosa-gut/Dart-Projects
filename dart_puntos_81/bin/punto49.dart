import 'dart:math';

void main() {
  Random random = Random();

  int todasCorrectas = 0;
  int soloP1P2 = 0;
  int soloP1P3 = 0;
  int soloP2P3 = 0;

  int alMenosP1 = 0;
  int alMenosP2 = 0;
  int alMenosP3 = 0;

  int ninguna = 0;

  for (int i = 1; i <= 100; i++) {
   
    bool p1 = random.nextBool();
    bool p2 = random.nextBool();
    bool p3 = random.nextBool();

 
    if (p1 && p2 && p3) {
      todasCorrectas++;
    }


    else if (p1 && p2 && !p3) {
      soloP1P2++;
    }

   
    else if (p1 && !p2 && p3) {
      soloP1P3++;
    }


    else if (!p1 && p2 && p3) {
      soloP2P3++;
    }

    // h) Ninguna correcta
    if (!p1 && !p2 && !p3) {
      ninguna++;
    }

 
    if (p1) alMenosP1++;
    if (p2) alMenosP2++;
    if (p3) alMenosP3++;
  }

  print("Resultados:");
  print("a) Todas correctas: $todasCorrectas");
  print("b) Solo P1 y P2: $soloP1P2");
  print("c) Solo P1 y P3: $soloP1P3");
  print("d) Solo P2 y P3: $soloP2P3");
  print("e) Al menos P1: $alMenosP1");
  print("f) Al menos P2: $alMenosP2");
  print("g) Al menos P3: $alMenosP3");
  print("h) Ninguna correcta: $ninguna");
}
