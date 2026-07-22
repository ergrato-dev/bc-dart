/// Ejercicio 02 — Funciones y Closures
/// Qué: practicar parámetros posicionales/opcionales/nombrados, arrow functions y closures.
/// Para qué: son la forma idiomática de estructurar lógica reutilizable en Dart.
/// Impacto: sin esto no puedes escribir funciones flexibles ni entender callbacks.

void main() {
  print('=== Ejercicio 02: Funciones y Closures ===');

  // ============================================
  // PASO 1: parámetros posicionales requeridos
  // Descomenta las siguientes líneas:
  // ============================================
  // print(addCopies(3, 2));

  // ============================================
  // PASO 2: parámetros posicionales opcionales ([])
  // Descomenta las siguientes líneas:
  // ============================================
  // print(greet('Ana'));
  // print(greet('Ana', 'Dra.'));

  // ============================================
  // PASO 3: parámetros nombrados ({})
  // Descomenta las siguientes líneas:
  // ============================================
  // print(calculateLateFee(daysOverdue: 3));
  // print(calculateLateFee(daysOverdue: 3, dailyRate: 800));

  // ============================================
  // PASO 4: arrow function con expresión compuesta
  // Descomenta las siguientes líneas:
  // ============================================
  // print(formatFee(1500));

  // ============================================
  // PASO 5: closures — una función que recuerda su estado
  // Descomenta las siguientes líneas:
  // ============================================
  // final counter = makeCounter();
  // print(counter());
  // print(counter());
  //
  // final anotherCounter = makeCounter();
  // print(anotherCounter());
}

// PASO 1: descomenta esta función junto con su llamada arriba.
// int addCopies(int current, int incoming) => current + incoming;

// PASO 2: descomenta esta función junto con sus llamadas arriba.
// String greet(String name, [String title = 'Sr./Sra.']) => '$title $name';

// PASO 3: descomenta esta función junto con sus llamadas arriba.
// double calculateLateFee({required int daysOverdue, double dailyRate = 500}) =>
//     daysOverdue <= 0 ? 0 : daysOverdue * dailyRate;

// PASO 4: descomenta esta función junto con su llamada arriba.
// String formatFee(double fee) => '\$${fee.toStringAsFixed(2)}';

// PASO 5: descomenta esta función-fábrica junto con las llamadas arriba.
// Function makeCounter() {
//   var count = 0;
//   return () {
//     count++;
//     return count;
//   };
// }
