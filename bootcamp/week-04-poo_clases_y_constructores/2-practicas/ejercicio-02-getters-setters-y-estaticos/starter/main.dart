/// Ejercicio 02 — Getters, Setters y Miembros Estáticos
/// Qué: practicar campos privados, getters, setters con validación y miembros estáticos.
/// Para qué: encapsular estado y compartir datos/utilidades a nivel de clase.
/// Impacto: sin esto expondrías estado interno sin control ni forma de validarlo.

void main() {
  print('=== Ejercicio 02: Getters, Setters y Estáticos ===');

  // ============================================
  // PASO 1: campo privado y getter
  // Descomenta las siguientes líneas:
  // ============================================
  // final book = Book('Clean Code', 3);
  // print(book.availableCopies);

  // ============================================
  // PASO 2: setter con validación
  // Descomenta las siguientes líneas:
  // ============================================
  // book.availableCopies = 5;
  // print(book.availableCopies);
  //
  // try {
  //   book.availableCopies = -1;
  // } catch (e) {
  //   print('Capturado: $e');
  // }

  // ============================================
  // PASO 3: campo estático como contador
  // Descomenta las siguientes líneas:
  // ============================================
  // print(Book.totalCreated);
  //
  // Book('1984', 1);
  // Book('Dune', 2);
  //
  // print(Book.totalCreated);

  // ============================================
  // PASO 4: método estático como utilidad
  // Descomenta las siguientes líneas:
  // ============================================
  // print(Book.isValidTitle(''));
  // print(Book.isValidTitle('Dune'));
}

// PASO 1 a 4: descomenta esta clase junto con las llamadas de todos los pasos.
// class Book {
//   Book(this.title, int initialCopies) : _availableCopies = initialCopies {
//     Book.totalCreated++;
//   }
//
//   final String title;
//   int _availableCopies;
//
//   int get availableCopies => _availableCopies;
//
//   set availableCopies(int value) {
//     if (value < 0) {
//       throw ArgumentError('availableCopies no puede ser negativo: $value');
//     }
//     _availableCopies = value;
//   }
//
//   static int totalCreated = 0;
//
//   static bool isValidTitle(String title) => title.trim().isNotEmpty;
// }
