/// Ejercicio 01 — Listas, Sets y Maps
/// Qué: practicar creación, mutación, acceso y recorrido de List, Set y Map.
/// Para qué: son las estructuras de datos que usarás en casi todo programa Dart.
/// Impacto: sin esto no puedes modelar colecciones de información del mundo real.

void main() {
  print('=== Ejercicio 01: Listas, Sets y Maps ===');

  // ============================================
  // PASO 1: List — crear, mutar, acceder
  // Descomenta las siguientes líneas:
  // ============================================
  // final genres = <String>['Ficción', 'Ensayo'];
  // genres.add('Poesía');
  // print(genres[0]);
  // print(genres.length);

  // ============================================
  // PASO 2: Set — unicidad garantizada
  // Descomenta las siguientes líneas:
  // ============================================
  // final uniqueGenres = <String>{'Ficción', 'Ensayo'};
  // uniqueGenres.add('Ficción'); // ya existe: no cambia el Set
  // print(uniqueGenres.length);
  // uniqueGenres.add('Ensayo');
  // print(uniqueGenres.length);

  // ============================================
  // PASO 3: Map — crear y acceder por clave
  // Descomenta las siguientes líneas:
  // ============================================
  // final book = <String, String>{'title': 'Clean Code', 'author': 'Robert C. Martin'};
  // print(book['title']);
  // print(book['isbn']);

  // ============================================
  // PASO 4: recorrer un Map con entries
  // Descomenta las siguientes líneas:
  // ============================================
  // final inventory = <String, int>{'Clean Code': 3, '1984': 0};
  //
  // for (final entry in inventory.entries) {
  //   final status = entry.value > 0 ? 'Disponible' : 'Agotado';
  //   print('${entry.key}: $status');
  // }
}
