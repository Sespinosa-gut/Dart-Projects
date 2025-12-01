void main() {
  String nombre = "Juan Pérez";
  double horasNormales = 160;
  double pagoHora = 2000;
  double horasExtras = 10;
  int numeroHijos = 2;

  double sueldoBase = horasNormales * pagoHora;
  double pagoHorasExtras = horasExtras * pagoHora * 1.25;

  double asignacionActualizacion = 25000;
  double asignacionPorHijos = numeroHijos * 17300;
  double asignacionPrimaHogar = 18000;
  double totalAsignaciones = asignacionActualizacion + asignacionPorHijos + asignacionPrimaHogar;

  double deduccionParo = sueldoBase * 0.05;
  double deduccionPoliticaHabitacional = sueldoBase * 0.02;
  double deduccionCajaAhorro = sueldoBase * 0.07;
  double totalDeducciones = deduccionParo + deduccionPoliticaHabitacional + deduccionCajaAhorro;

  double sueldoNeto = sueldoBase + pagoHorasExtras + totalAsignaciones - totalDeducciones;

  print("Nombre: $nombre");
  print("Sueldo base: $sueldoBase");
  print("Pago por horas extras: $pagoHorasExtras");
  print("Asignaciones:");
  print("  Actualización académica: $asignacionActualizacion");
  print("  Por hijos ($numeroHijos): $asignacionPorHijos");
  print("  Prima por hogar: $asignacionPrimaHogar");
  print("  Total asignaciones: $totalAsignaciones");
  print("Deducciones (sobre sueldo base):");
  print("  Paro forzoso (5%): $deduccionParo");
  print("  Política habitacional (2%): $deduccionPoliticaHabitacional");
  print("  Caja de ahorro (7%): $deduccionCajaAhorro");
  print("  Total deducciones: $totalDeducciones");
  print("Sueldo neto: $sueldoNeto");


  //NUNCA ME VUELVO A QUEJAR DE UN PUNTO LARGO

  //                             ...,?77??!~~~~!???77?<~.... 
  //                      ..?7`                           `7!.. 
  //                  .,=`          ..~7^`   I                  ?1. 
  //     ........  ..^            ?`  ..?7!1 .               ...??7 
  //    .        .7`        .,777.. .I.    . .!          .,7! 
  //    ..     .?         .^      .l   ?i. . .`       .,^ 
  //     b    .!        .= .?7???7~.     .>r .      .= 
  //     .,.?4         , .^         1        `     4... 
  //      J   ^         ,            5       `         ?<. 
  //     .%.7;         .`     .,     .;                   .=. 
  //     .+^ .,       .%      MML     F       .,             ?, 
  //      P   ,,      J      .MMN     F        6               4. 
  //      l    d,    ,       .MMM!   .t        ..               ,, 
  //      ,    JMa..`         MMM`   .         .!                .; 
  //       r   .M#            .M#   .%  .      .~                 ., 
  //     dMMMNJ..!                 .P7!  .>    .         .         ,, 
  //     .WMMMMMm  ?^..       ..,?! ..    ..   ,  Z7`        `?^..  ,, 
  //        ?THB3       ?77?!        .Yr  .   .!   ?,              ?^C 
  //          ?,                   .,^.` .%  .^      5. 
  //            7,          .....?7     .^  ,`        ?. 
  //              `<.                 .= .`'           1 
  //              ....dn... ... ...,7..J=!7,           ., 
  //           ..=     G.,7  ..,o..  .?    J.           F 
  //         .J.  .^ ,,,t  ,^        ?^.  .^  `?~.      F 
  //        r %J. $    5r J             ,r.1      .=.  .% 
  //        r .77=?4.    ``,     l ., 1  .. <.       4., 
  //        .$..    .X..   .n..  ., J. r .`  J.       `' 
  //      .?`  .5        `` .%   .% .' L.'    t 
  //      ,. ..1JL          .,   J .$.?`      . 
  //              1.          .=` ` .J7??7<.. .; 
  //               JS..    ..^      L        7.: 
  //                 `> ..       J.  4. 
  //                  +   r `t   r ~=..G. 
  //                  =   $  ,.  J 
  //                  2   r   t  .; 
  //            .,7!  r   t`7~..  j.. 
  //            j   7~L...$=.?7r   r ;?1. 
  //             8.      .=    j ..,^   .. 
  //            r        G              . 
  //          .,7,        j,           .>=. 
  //       .J??,  `T....... %             .. 
  //    ..^     <.  ~.    ,.             .D 
  //  .?`        1   L     .7.........?Ti..l 
  // ,`           L  .    .%    .`!       `j, 
// .^             .  ..   .`   .^  .?7!?7+. 1 
//.`              .  .`..`7.  .^  ,`      .i.; 
//.7<..........~<<3?7!`    4. r  `          G% 
//                          J.` .!           % 
//                            JiJ           .` 
//                              .1.         J 
//                                 ?1.     .'         
//                                     7<..%
}
