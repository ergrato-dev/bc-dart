/// Ejercicio 02 — Collection-for/if y Operadores Funcionales
/// Qué: practicar collection-if, collection-for, spread, where, map y fold.
/// Para qué: es el estilo idiomático de Dart para construir y procesar colecciones.
/// Impacto: sin esto seguirías escribiendo bucles imperativos verbosos para todo.

void main() {
  print('=== Ejercicio 02: Collection-for/if y Funcionales ===');

  // ============================================
  // PASO 1: collection-if y collection-for
  // Descomenta las siguientes líneas:
  // ============================================
  // print(buildTitles(false));

  // ============================================
  // PASO 2: spread (...) y spread nulo (...?)
  // Descomenta las siguientes líneas:
  // ============================================
  // final classics = ['1984', 'Fahrenheit 451'];
  // List<String>? extraTitles;
  //
  // final catalog = [...classics, ...?extraTitles, 'Dune'];
  // print(catalog);

  // ============================================
  // PASO 3: where y map encadenados
  // Descomenta las siguientes líneas:
  // ============================================
  // final copies = <String, int>{'Clean Code': 3, '1984': 0, 'Dune': 5};
  //
  // final availableUpper = copies.entries
  //     .where((entry) => entry.value > 0)
  //     .map((entry) => entry.key.toUpperCase())
  //     .toList();
  //
  // print(availableUpper);

  // ============================================
  // PASO 4: fold — reducir a un único valor
  // Descomenta las siguientes líneas:
  // ============================================
  // final copiesList = [3, 0, 1, 5];
  //
  // final total = copiesList.fold<int>(0, (accumulator, current) => accumulator + current);
  // print('Total de copias: $total');
}

// PASO 1: descomenta esta función junto con su llamada arriba.
// List<String> buildTitles(bool includeDrafts) {
//   return [
//     'Clean Code',
//     '1984',
//     if (includeDrafts) 'Borrador',
//     for (var i = 1; i <= 2; i++) 'Reservado #$i',
//   ];
// }
