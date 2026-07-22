/// Ejercicio 01 — Genéricos y Records
/// Qué: practicar clases genéricas, bounded generics y records (posicional/nombrado).
/// Para qué: reutilizar estructuras de datos sin perder seguridad de tipos ni escribir clases
/// desechables solo para agrupar valores.
/// Impacto: sin esto duplicarías una `Repository` por cada tipo, y usarías listas/maps sueltos
/// para lo que un record modela de forma más segura y legible.

void main() {
  print('=== Ejercicio 01: Genéricos y Records ===');

  // ============================================
  // PASO 1: clase genérica Repository<T>
  // Descomenta las siguientes líneas:
  // ============================================
  // final repo = Repository<Book>();
  // repo.add(Book('Clean Code'));
  // print(repo.all.first.title);

  // ============================================
  // PASO 2: bounded generics — T extends Identifiable
  // Descomenta las siguientes líneas:
  // ============================================
  // final identifiableRepo = IdentifiableRepository<IdentifiableBook>();
  // identifiableRepo.add(IdentifiableBook('Dune', 'b1'));
  // print(identifiableRepo.findById('b1')?.title);

  // ============================================
  // PASO 3: record posicional y destructuring
  // Descomenta las siguientes líneas:
  // ============================================
  // final (title, copies) = parseEntry('Clean Code:3');
  // print('$title tiene $copies copias');

  // ============================================
  // PASO 4: record con campos nombrados y shorthand :campo
  // Descomenta las siguientes líneas:
  // ============================================
  // final (:entryTitle, :entryCopies) = parseEntryNamed('Dune:5');
  // print('$entryTitle: $entryCopies');
}

// PASO 1: descomenta esta clase genérica junto con Book y la llamada del paso 1.
// class Repository<T> {
//   final List<T> _items = [];
//
//   void add(T item) => _items.add(item);
//
//   List<T> get all => List.unmodifiable(_items);
// }
//
// class Book {
//   const Book(this.title);
//   final String title;
// }

// PASO 2: descomenta este bound junto con la llamada del paso 2.
// abstract class Identifiable {
//   String get id;
// }
//
// class IdentifiableRepository<T extends Identifiable> {
//   final List<T> _items = [];
//
//   void add(T item) => _items.add(item);
//
//   T? findById(String id) {
//     for (final item in _items) {
//       if (item.id == id) return item;
//     }
//     return null;
//   }
// }
//
// class IdentifiableBook implements Identifiable {
//   const IdentifiableBook(this.title, this.id);
//
//   final String title;
//
//   @override
//   final String id;
// }

// PASO 3: descomenta esta función junto con la llamada del paso 3.
// (String, int) parseEntry(String raw) {
//   final parts = raw.split(':');
//   return (parts[0], int.parse(parts[1]));
// }

// PASO 4: descomenta esta función junto con la llamada del paso 4.
// ({String entryTitle, int entryCopies}) parseEntryNamed(String raw) {
//   final parts = raw.split(':');
//   return (entryTitle: parts[0], entryCopies: int.parse(parts[1]));
// }
