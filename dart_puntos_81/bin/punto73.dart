class Pagare {
  int numero;
  String fecha;
  double monto;
  Pagare(this.numero, this.fecha, this.monto);
}

class Cliente {
  String codigo;
  String nombre;
  String direccion;
  String estado;
  String agencia;
  Pagare p1;
  Pagare p2;
  Cliente(this.codigo, this.nombre, this.direccion, this.estado, this.agencia, this.p1, this.p2);
}

Cliente c1 = Cliente(
  "C001", "Luis", "Av 1", "E1", "A1",
  Pagare(1, "10/01/2025", 500),
  Pagare(2, "15/02/2025", 900),
);

Cliente c2 = Cliente(
  "C002", "Ana", "Av 2", "E1", "A1",
  Pagare(3, "20/01/2025", 400),
  Pagare(4, "10/02/2025", 600),
);

Cliente c3 = Cliente(
  "C003", "Pedro", "Av 3", "E1", "A2",
  Pagare(5, "05/01/2025", 1200),
  Pagare(6, "25/02/2025", 300),
);

Cliente c4 = Cliente(
  "C004", "Maria", "Av 4", "E1", "A2",
  Pagare(7, "01/01/2025", 700),
  Pagare(8, "14/02/2025", 800),
);

Cliente c5 = Cliente(
  "C005", "Jose", "Av 5", "E2", "A3",
  Pagare(9, "09/01/2025", 1500),
  Pagare(10, "18/02/2025", 450),
);

Cliente c6 = Cliente(
  "C006", "Laura", "Av 6", "E2", "A4",
  Pagare(11, "12/01/2025", 200),
  Pagare(12, "20/02/2025", 350),
);

void main() {
  double promMax = 0;
  int contAgencias = 0;

  procesarAgencia("A1", "E1", c1, c2, promMax, contAgencias);
  promMax += maxDeuda(c1, c2); contAgencias++;

  procesarAgencia("A2", "E1", c3, c4, promMax, contAgencias);
  promMax += maxDeuda(c3, c4); contAgencias++;

  procesarAgencia("A3", "E2", c5, null, promMax, contAgencias);
  promMax += maxDeuda(c5, null); contAgencias++;

  procesarAgencia("A4", "E2", c6, null, promMax, contAgencias);
  promMax += maxDeuda(c6, null); contAgencias++;

  double promedioNacional = promMax / contAgencias;
  print("Promedio nacional de máximos adeudados: $promedioNacional");
}

void procesarAgencia(String agencia, String estado, Cliente? a, Cliente? b, double pm, int ca) {
  double total = 0;
  String mayorCliente = "";

  if (a != null) {
    double t = deudaCliente(a);
    total += t;
    mayorCliente = a.codigo;
  }

  if (b != null) {
    double t = deudaCliente(b);
    total += t;
    if (t > deudaCliente(a!)) mayorCliente = b.codigo;
  }

  print("Agencia $agencia Estado $estado");
  print("Monto total: $total");
  print("Cliente mayor deuda: $mayorCliente");

  if (a != null) recibo(a);
  if (b != null) recibo(b);
}

double deudaCliente(Cliente c) {
  return c.p1.monto + c.p2.monto;
}

double maxDeuda(Cliente? a, Cliente? b) {
  if (b == null) return deudaCliente(a!);
  double da = deudaCliente(a!);
  double db = deudaCliente(b);
  return da > db ? da : db;
}

void recibo(Cliente c) {
  double total = deudaCliente(c);
  print("---- RECIBO ----");
  print(c.codigo);
  print(c.nombre);
  print(c.direccion);
  print(c.estado);
  print(c.agencia);
  print("${c.p1.numero} ${c.p1.fecha} ${c.p1.monto}");
  print("${c.p2.numero} ${c.p2.fecha} ${c.p2.monto}");
  print("Cantidad pagares: 2");
  print("Total pendiente: $total");
  print("----------------");
}
