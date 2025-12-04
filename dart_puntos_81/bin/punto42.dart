double edad = 0.8;
String sexo = "H";
double hemoglobina = 13.5;

void main() {
  double min = 0;
  double max = 0;

  if (edad >= 0 && edad <= 1 / 12) {
    min = 13;
    max = 26;
  } else if (edad > 1 / 12 && edad <= 0.5) {
    min = 10;
    max = 18;
  } else if (edad > 0.5 && edad <= 1) {
    min = 11;
    max = 15;
  } else if (edad > 1 && edad <= 5) {
    min = 11.5;
    max = 15;
  } else if (edad > 5 && edad <= 10) {
    min = 12.6;
    max = 15.5;
  } else if (edad > 10 && edad <= 15) {
    min = 13;
    max = 15.5;
  } else {
    if (sexo == "M") {
      min = 12;
      max = 16;
    } else if (sexo == "H") {
      min = 14;
      max = 18;
    } else {
      return;
    }
  }

  if (hemoglobina < min) {
    print("Resultado: POSITIVO La persona tiene anemia.");
  } else {
    print("Resultado: NEGATIVO La persona no tiene anemia.");
  }
}
