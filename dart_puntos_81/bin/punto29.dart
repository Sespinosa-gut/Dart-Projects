void main(){
  double saldoVendedores=1400000;
  double departamento1=150000;
  double departamento2=800000;
  double departamento3=700000;
  double ventasGlobales = departamento1 + departamento2 + departamento3;

  double exeso=ventasGlobales *0.33;
  double salario20 = saldoVendedores *0.20;
  double total = saldoVendedores + salario20;
  if(departamento1>exeso){
    print("el departamento1 recible $total" );
  }else{
    print("el departamento1 recibe $saldoVendedores");

  } if (departamento2>exeso){
    print("el departamento2 recible $total");
  }else{
    print("el departamento2 recibe $saldoVendedores");
    }
  if (departamento3>exeso){
    print("el departamento3  recible $total");
      }else{
    print("el departamento3 recibe $saldoVendedores");
    }
}

