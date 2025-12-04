class PuntoVenta {
  int codigo;
  int unidades1;
  int unidades2;
  int unidades3;
  int vendedores;
  PuntoVenta(this.codigo, this.unidades1, this.unidades2, this.unidades3, this.vendedores);
}

class Sucursal {
  int codigo;
  String descripcion;
  double esperado;
  List<PuntoVenta> puntos;
  Sucursal(this.codigo, this.descripcion, this.esperado, this.puntos);
}

double pvp1 = 10;
double pvp2 = 20;
double pvp3 = 30;

List<Sucursal> sucursales = [
  Sucursal(
    10,
    "Sucursal Norte",
    50000,
    [
      PuntoVenta(1001, 100, 50, 20, 5),
      PuntoVenta(1002, 40, 60, 30, 4),
    ],
  ),
  Sucursal(
    20,
    "Sucursal Sur",
    40000,
    [
      PuntoVenta(2001, 80, 40, 10, 3),
      PuntoVenta(2002, 100, 20, 15, 6),
      PuntoVenta(2003, 50, 50, 50, 5),
    ],
  ),
];

void main() {
  int cantSucAlcanzaron = 0;

  for (var s in sucursales) {
    double totalSucursal = 0;
    double mayorComision = 0;
    int codigoMayorCom = 0;

    for (var p in s.puntos) {
      int unidTotal = p.unidades1 + p.unidades2 + p.unidades3;

      double bruto = p.unidades1 * pvp1 +
                     p.unidades2 * pvp2 +
                     p.unidades3 * pvp3;

      double comision = bruto * 0.10;
      double neto = bruto - comision;

      if (comision > mayorComision) {
        mayorComision = comision;
        codigoMayorCom = p.codigo;
      }

      totalSucursal += neto;

      int menorProd = 1;
      int menorValor = p.unidades1;

      if (p.unidades2 < menorValor) {
        menorValor = p.unidades2;
        menorProd = 2;
      }
      if (p.unidades3 < menorValor) {
        menorProd = 3;
      }

      print("Punto: ${p.codigo}, Unidades: $unidTotal, Neto: $neto, Comision: $comision, ProdMenor: $menorProd");
    }

    double porc = totalSucursal * 100 / s.esperado;

    if (totalSucursal >= s.esperado) {
      cantSucAlcanzaron++;
    }

    print("Sucursal: ${s.codigo}, Desc: ${s.descripcion}, Total: $totalSucursal, Porc: $porc, PuntoMayorCom: $codigoMayorCom Monto: $mayorComision");
  }

  double porcSuc = cantSucAlcanzaron * 100 / sucursales.length;
  print("Porcentaje sucursales que alcanzaron lo esperado: $porcSuc%");
}
