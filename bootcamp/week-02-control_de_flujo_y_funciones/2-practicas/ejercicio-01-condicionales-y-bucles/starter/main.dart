/// Ejercicio 01 — Condicionales y Bucles
/// Qué: practicar if/else, switch statement, switch expression y bucles for/while.
/// Para qué: son la base del control de flujo en cualquier programa Dart.
/// Impacto: sin esto no puedes expresar ninguna decisión ni repetición en el código.

void main() {
  print('=== Ejercicio 01: Condicionales y Bucles ===');

  // ============================================
  // PASO 1: if/else y ternario
  // Descomenta las siguientes líneas:
  // ============================================
  // final copies = 0;
  //
  // if (copies > 0) {
  //   print('Disponible');
  // } else {
  //   print('Agotado');
  // }
  //
  // final status = copies > 0 ? 'Disponible' : 'Agotado';
  // print(status);

  // ============================================
  // PASO 2: switch statement clásico
  // Descomenta las siguientes líneas:
  // ============================================
  // const eventCode = 2;
  //
  // switch (eventCode) {
  //   case 1:
  //     print('Alta');
  //     break;
  //   case 2:
  //   case 3:
  //     print('Movimiento');
  //     break;
  //   default:
  //     print('Desconocido');
  // }

  // ============================================
  // PASO 3: switch expression exhaustivo
  // Descomenta las siguientes líneas:
  // ============================================
  // print(describeEvent(2));
  // print(describeEvent(99));

  // ============================================
  // PASO 4: bucles for y while
  // Descomenta las siguientes líneas:
  // ============================================
  // for (var i = 1; i <= 3; i++) {
  //   if (i == 2) continue;
  //   print('Vuelta $i');
  // }
  //
  // var attempts = 0;
  // while (attempts < 2) {
  //   print('Intento ${attempts + 1}');
  //   attempts++;
  // }
}

// PASO 3: descomenta esta función junto con las llamadas de arriba.
// String describeEvent(int eventCode) => switch (eventCode) {
//   1 => 'Alta',
//   2 => 'Renovación',
//   3 => 'Baja',
//   _ => 'Desconocido',
// };
