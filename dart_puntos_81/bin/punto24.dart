void main() {
  double inversion = 10000000;
  double interes = 0.10;

  double valorintereses = inversion * interes;
 

  if (valorintereses > 7000) {
    double suma = valorintereses + inversion;
    print("reinvertir es viable");
    print("el total que tendria en su cuenta sera de $suma");
  } else {
    print("reinverti no es viable");
  }
  print("por concepto de inteses se genera $valorintereses");
}
