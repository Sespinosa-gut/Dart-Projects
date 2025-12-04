class Libro {
  int codigo;
  String genero;
  int paginas;
  Libro(this.codigo, this.genero, this.paginas);
}

class Autor {
  String apellido;
  List<Libro> libros;
  Autor(this.apellido, this.libros);
}

List<Autor> autores = [
  Autor("Perez", [
    Libro(1, "ciencia ficcion", 220),
    Libro(2, "accion", 180),
    Libro(3, "terror", 150),
  ]),
  Autor("Gomez", [
    Libro(4, "romance", 300),
    Libro(5, "novela", 250),
  ]),
  Autor("Lopez", [
    Libro(6, "ciencia ficcion", 190),
    Libro(7, "romance", 210),
    Libro(8, "accion", 160),
    Libro(9, "academico", 400),
  ]),
];

void main() {
  int totalLibros = 0;
  int totalCiencia = 0;
  int totalCienciaRomance = 0;

  String autorMayorLibros = "";
  int mayorCantLibros = 0;

  for (var a in autores) {
    int totalPagAutor = 0;
    int mayorPag = 0;
    int codMayorPag = 0;

    for (var l in a.libros) {
      totalLibros++;

      if (l.genero == "ciencia ficcion") {
        totalCiencia++;
        totalCienciaRomance++;
      } else if (l.genero == "romance") {
        totalCienciaRomance++;
      }

      totalPagAutor += l.paginas;

      if (l.paginas > mayorPag) {
        mayorPag = l.paginas;
        codMayorPag = l.codigo;
      }
    }

    if (a.libros.length > mayorCantLibros) {
      mayorCantLibros = a.libros.length;
      autorMayorLibros = a.apellido;
    }

    print("Autor: ${a.apellido}, TotalPaginas: $totalPagAutor, LibroMayor: $codMayorPag, Paginas: $mayorPag");
  }

  double porcCiencia = totalCiencia * 100 / totalLibros;

  print("Porcentaje Ciencia Ficcion: $porcCiencia%");
  print("Cantidad Ciencia Ficcion y Romance: $totalCienciaRomance");
  print("Autor Mayor Libros: $autorMayorLibros, Cantidad: $mayorCantLibros");
}
