void main() {
  int dia = 25;
  int mes = 3;
  int anioNacimiento = 2005;

  String signo = obtenerSigno(dia, mes);
  int edad = obtenerEdad(anioNacimiento, mes, dia);

  print("Fecha de nacimiento: $dia/$mes/$anioNacimiento");
  print("Signo zodiacal: $signo");
  print("Edad: $edad años");
}

String obtenerSigno(int dia, int mes) {
  if ((mes == 1 && dia >= 21) || (mes == 2 && dia <= 19)) return "Acuario";
  if ((mes == 2 && dia >= 20) || (mes == 3 && dia <= 19)) return "Piscis";
  if ((mes == 3 && dia >= 21) || (mes == 4 && dia <= 20)) return "Aries";
  if ((mes == 4 && dia >= 21) || (mes == 5 && dia <= 21)) return "Tauro";
  if ((mes == 5 && dia >= 22) || (mes == 6 && dia <= 21)) return "Géminis";
  if ((mes == 6 && dia >= 22) || (mes == 7 && dia <= 22)) return "Cáncer";
  if ((mes == 7 && dia >= 23) || (mes == 8 && dia <= 23)) return "Leo";
  if ((mes == 8 && dia >= 24) || (mes == 9 && dia <= 22)) return "Virgo";
  if ((mes == 9 && dia >= 23) || (mes == 10 && dia <= 22)) return "Libra";
  if ((mes == 10 && dia >= 23) || (mes == 11 && dia <= 21)) return "Escorpión";
  if ((mes == 11 && dia >= 22) || (mes == 12 && dia <= 21)) return "Sagitario";
  if ((mes == 12 && dia >= 22) || (mes == 1 && dia <= 20)) return "Capricornio";

  return "Fecha inválida";
}

int obtenerEdad(int anio, int mes, int dia) {
  DateTime hoy = DateTime.now();
  int edad = hoy.year - anio;

  if (mes > hoy.month || (mes == hoy.month && dia > hoy.day)) {
    edad--;
  }
  return edad;
}
