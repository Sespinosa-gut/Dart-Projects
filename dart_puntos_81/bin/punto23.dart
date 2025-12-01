void main() {
 
  int M = 452;      
  int N = 197;       
  double B1 = 132;    
  double B2 = 180;    
  double B3 = 7.50;   
  double B4 = 14.50;  


  int bultosHarina = M ~/ 24;        
  int harinaSuelta = M % 24;        

  double ingresoHarina =
      (bultosHarina * B1) + (harinaSuelta * B3);


  int cajasAceite = N ~/ 15;     
  int aceiteSuelto = N % 15;   

  double ingresoAceite =
      (cajasAceite * B2) + (aceiteSuelto * B4);

  double ingresoTotal = ingresoHarina + ingresoAceite;

  print("Ingreso total por tonelada: ${ingresoTotal.toStringAsFixed(0)}");
}
