/// Ejercicio 01 — Herencia, Clases Abstractas e Implements
/// Qué: practicar extends, super, clases abstractas, polimorfismo e implements.
/// Para qué: son la base para modelar jerarquías y contratos entre clases.
/// Impacto: sin esto no puedes reutilizar comportamiento entre clases relacionadas.

void main() {
  print('=== Ejercicio 01: Herencia, Abstractas e Implements ===');

  // ============================================
  // PASO 1: clase abstracta y extends
  // Descomenta las siguientes líneas:
  // ============================================
  // final book = Book('Clean Code');
  // print(book.describe());

  // ============================================
  // PASO 2: super para extender el comportamiento del padre
  // Descomenta las siguientes líneas:
  // ============================================
  // final magazine = Magazine('National Geographic');
  // print(magazine.describe());

  // ============================================
  // PASO 3: polimorfismo con una List del tipo abstracto
  // Descomenta las siguientes líneas:
  // ============================================
  // final items = <LibraryItem>[Book('Dune'), Magazine('Wired')];
  //
  // for (final item in items) {
  //   print(item.describe());
  // }

  // ============================================
  // PASO 4: implements — adoptar un contrato
  // Descomenta las siguientes líneas:
  // ============================================
  // final receipt = Receipt(15000);
  // print(receipt.toDisplayString());
}

// PASO 1, 2 y 3: descomenta estas clases junto con las llamadas correspondientes.
// abstract class LibraryItem {
//   LibraryItem(this.title);
//
//   final String title;
//
//   String describe() => 'Elemento: $title'; // implementación base, no abstracta
// }
//
// class Book extends LibraryItem {
//   Book(super.title);
//
//   @override
//   String describe() => 'Libro: $title'; // sobrescribe por completo
// }
//
// class Magazine extends LibraryItem {
//   Magazine(super.title);
//
//   @override
//   String describe() => '${super.describe()} — revista'; // extiende la del padre con super
// }

// PASO 4: descomenta estas clases junto con la llamada del paso 4.
// class Printable {
//   String toDisplayString() => 'Printable genérico';
// }
//
// class Receipt implements Printable {
//   Receipt(this.total);
//
//   final double total;
//
//   @override
//   String toDisplayString() => 'Total: \$${total.toStringAsFixed(2)}';
// }
