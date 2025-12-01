void main(){
int montototal=10000;

  if(montototal>500000){
double cicuenta= montototal * 0.55;

double prestamoBanco = montototal * 0.30;
double credito= montototal *0.15;
double intereses1= credito * 0.20;
print("la empresa invierte de su propio dinero $cicuenta, la empresa le pide un prestamo al banco de $prestamoBanco, la empresa le saca un credito al fabricante de $credito y la empresa le debe al fabicante $intereses1 de intereses");
  }else{
    double propio= montototal *0.70;
    double credito2= montototal * 0.30;
    double inteseses2= credito2 *0.20;
print("la empresa invierte de su propio dinero $propio, y saca un credito al fabricante de $credito2, y le debe al fabricante $inteseses2 de intereses");

  }
}