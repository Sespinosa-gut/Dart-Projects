void main() {
  int km = 1500;
  double pagoBase = 5000;
  double totalPagar = 0;

  if (km <= 300) {
    totalPagar = pagoBase;
  } 
  else if (km > 300 && km <= 1000) {
    int kmExtra = km - 300;
    totalPagar = pagoBase + (kmExtra * 200);
  } 
  else { // km > 1000
    int km300a1000 = 1000 - 300;        
    int kmMayor1000 = km - 1000;        
    totalPagar = pagoBase 
                + (km300a1000 * 200)   
                + (kmMayor1000 * 150); 
  }

  print("Debe pagar $totalPagar bolívares");
}
