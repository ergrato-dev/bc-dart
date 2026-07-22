/// Ejercicio 01 — Clases y Constructores
/// Qué: practicar constructor normal, nombrado, const y factory.
/// Para qué: son las cuatro formas de construir objetos en Dart.
/// Impacto: sin esto no puedes modelar datos con clases propias.

void main() {
  print('=== Ejercicio 01: Clases y Constructores ===');

  // ============================================
  // PASO 1: constructor normal
  // Descomenta las siguientes líneas:
  // ============================================
  // final book = Book('Clean Code', 'Robert C. Martin', 3);
  // print('${book.title} — ${book.author} (${book.availableCopies})');

  // ============================================
  // PASO 2: constructor nombrado
  // Descomenta las siguientes líneas:
  // ============================================
  // final soldOut = Book.outOfStock('1984', 'George Orwell');
  // print('${soldOut.title}: ${soldOut.availableCopies} copias');

  // ============================================
  // PASO 3: constructor const
  // Descomenta las siguientes líneas:
  // ============================================
  // const fiction = Genre('FIC', 'Ficción');
  // const sameFiction = Genre('FIC', 'Ficción');
  //
  // print(fiction.label);
  // print(identical(fiction, sameFiction));

  // ============================================
  // PASO 4: constructor factory desde un Map
  // Descomenta las siguientes líneas:
  // ============================================
  // final fromData = Book.fromRecord({'title': 'Dune', 'author': 'Frank Herbert', 'copies': '2'});
  // print('${fromData.title}: ${fromData.availableCopies}');
}

// PASO 1 y 2: descomenta esta clase junto con las llamadas de los pasos 1, 2 y 4.
// class Book {
//   Book(this.title, this.author, this.availableCopies);
//
//   Book.outOfStock(this.title, this.author) : availableCopies = 0;
//
//   Book._(this.title, this.author, this.availableCopies);
//
//   factory Book.fromRecord(Map<String, String> record) {
//     final copies = int.tryParse(record['copies'] ?? '') ?? 0;
//     return Book._(
//       record['title'] ?? 'Sin título',
//       record['author'] ?? 'Autor desconocido',
//       copies,
//     );
//   }
//
//   final String title;
//   final String author;
//   final int availableCopies;
// }

// PASO 3: descomenta esta clase junto con las llamadas del paso 3.
// class Genre {
//   const Genre(this.code, this.label);
//
//   final String code;
//   final String label;
// }
