/// Ejercicio 02 — Null Safety
/// Qué: practicar ?, ?., ??, ??= y ! con criterio.
/// Para qué: manejar ausencia de datos sin que el programa crashee.
/// Impacto: null safety mal usado es la causa #1 de excepciones evitables.

void main() {
  print('=== Ejercicio 02: Null Safety ===');

  // ============================================
  // PASO 1: Declarar un tipo nullable
  // Descomenta las siguientes líneas:
  // ============================================
  // String? nickname;
  // print(nickname);

  // ============================================
  // PASO 2: ?. — acceso seguro
  // Descomenta las siguientes líneas:
  // ============================================
  // print(nickname?.length);
  // nickname = 'Dashy';
  // print(nickname?.length);

  // ============================================
  // PASO 3: ?? y ??=
  // Descomenta las siguientes líneas:
  // ============================================
  // String? city;
  // final displayCity = city ?? 'Sin ciudad';
  // print(displayCity);
  //
  // city ??= 'Bogotá';
  // print(city);
  //
  // city ??= 'Medellín'; // no hace nada: city ya no es null
  // print(city);

  // ============================================
  // PASO 4: ! y su riesgo
  // Descomenta las siguientes líneas:
  // ============================================
  // String? maybeNull = 'seguro';
  // String definitelyNotNull = maybeNull!;
  // print(definitelyNotNull);
  //
  // String? riskyNull;
  // try {
  //   print(riskyNull!);
  // } catch (e) {
  //   print('Capturado: $e');
  // }
}
