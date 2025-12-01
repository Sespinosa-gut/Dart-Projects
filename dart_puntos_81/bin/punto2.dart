
void main() {  
    double capitalInicial = 100000.0;
    double tasaMensual = 0.02;
    double interesMensual = capitalInicial * tasaMensual;
    double capitalFinal = capitalInicial + interesMensual;

    print('Capital final después de un mes: $capitalFinal');
    print('Tasa de interés mensual: ${tasaMensual * 100}%');



}