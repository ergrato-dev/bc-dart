/// Ejercicio 02 — Pattern Matching y Sealed Classes
/// Qué: practicar switch expression con patrones lógicos/de objeto, guardas when,
/// sealed classes con switch exhaustivo, e if-case.
/// Para qué: tomar decisiones basadas en la forma y el contenido de un valor, con el analyzer
/// verificando que no falte ningún caso.
/// Impacto: sin esto los switch quedan incompletos en silencio (un case olvidado no avisa) y el
/// código termina con cadenas de if/else anidadas mucho más difíciles de mantener.

void main() {
  print('=== Ejercicio 02: Pattern Matching y Sealed Classes ===');

  // ============================================
  // PASO 1: switch expression con patrón lógico y wildcard
  // Descomenta las siguientes líneas:
  // ============================================
  // print(describeStock(0));
  // print(describeStock(2));
  // print(describeStock(10));

  // ============================================
  // PASO 2: object pattern con destructuring y guarda when
  // Descomenta las siguientes líneas:
  // ============================================
  // print(status(Book('Dune', 0)));
  // print(status(Book('Wired', 2)));
  // print(status(Book('Clean Code', 10)));

  // ============================================
  // PASO 3: sealed class con switch exhaustivo
  // Descomenta las siguientes líneas:
  // ============================================
  // print(describeResult(const Found('Clean Code')));
  // print(describeResult(const NotFound('xyz')));

  // ============================================
  // PASO 4: if-case — probar un patrón puntual
  // Descomenta las siguientes líneas:
  // ============================================
  // final Object input = ('Dune', 5);
  //
  // if (input case (String title, int copies)) {
  //   print('$title: $copies');
  // } else {
  //   print('No coincide');
  // }
}

// PASO 1: descomenta esta función junto con las llamadas del paso 1.
// String describeStock(int stock) => switch (stock) {
//   0 => 'Agotado',
//   1 || 2 => 'Bajo stock',
//   _ => 'Disponible',
// };

// PASO 2: descomenta esta clase y función junto con las llamadas del paso 2.
// class Book {
//   const Book(this.title, this.stock);
//   final String title;
//   final int stock;
// }
//
// String status(Book book) => switch (book) {
//   Book(stock: 0) => '${book.title}: agotado',
//   Book(:final stock) when stock < 3 => '${book.title}: bajo stock ($stock)',
//   Book() => '${book.title}: disponible',
// };

// PASO 3: descomenta esta jerarquía sellada junto con las llamadas del paso 3.
// sealed class SearchResult {
//   const SearchResult();
// }
//
// class Found extends SearchResult {
//   const Found(this.title);
//   final String title;
// }
//
// class NotFound extends SearchResult {
//   const NotFound(this.query);
//   final String query;
// }
//
// String describeResult(SearchResult result) => switch (result) {
//   Found(:final title) => 'Encontrado: $title',
//   NotFound(:final query) => 'Sin resultados para "$query"',
// };
