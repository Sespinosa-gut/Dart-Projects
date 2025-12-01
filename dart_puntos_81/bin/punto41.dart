import 'dart:io';

void main() {

  stdout.write("Ingrese la cantidad de hectáreas del bosque: ");
  double hectareas = double.parse(stdin.readLineSync()!);


  double metrosCuadrados = hectareas * 10000;


  double porcPino = 0;
  double porcOyamel = 0;
  double porcCedro = 0;


  if (metrosCuadrados > 1000000) {
    porcPino = 0.70;
    porcOyamel = 0.20;
    porcCedro = 0.10;
  } else {
    porcPino = 0.50;
    porcOyamel = 0.30;
    porcCedro = 0.20;
  }


  double areaPino = metrosCuadrados * porcPino;
  double areaOyamel = metrosCuadrados * porcOyamel;
  double areaCedro = metrosCuadrados * porcCedro;

 
  int numPinos = (areaPino / 10 * 8).toInt();      
  int numOyameles = (areaOyamel / 15 * 15).toInt(); 
  int numCedros = (areaCedro / 18 * 10).toInt();    



  print("Pinos a sembrar: $numPinos");
  print("Oyameles a sembrar: $numOyameles");
  print("Cedros a sembrar: $numCedros");
}
