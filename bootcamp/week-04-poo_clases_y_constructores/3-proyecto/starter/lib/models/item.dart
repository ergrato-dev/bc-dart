// ============================================
// MODEL: Item
// Entidad principal del dominio
// ============================================

// NOTA PARA EL APRENDIZ:
// Adapta el nombre de la clase y sus campos a tu dominio asignado.
// Ejemplos de nombre de clase y de qué representa `stock`:
// - Biblioteca: Book, stock = copias disponibles
// - Farmacia: Medication, stock = unidades en inventario
// - Gimnasio: MembershipPlan, stock = cupos disponibles este mes

// TODO: declara la clase (ej. `class Book {`), con:
//   - constructor normal: recibe id, name y un stock inicial
//   - constructor nombrado `Item.outOfStock(id, name)`: crea la instancia con stock 0
//   - constructor factory `Item.fromRecord(Map<String, String> record)`: parsea un Map
//     (usa `int.tryParse(record['stock'] ?? '') ?? 0` para el stock)
//   - campo privado `_stock`, expuesto con getter público
//   - setter que lance `ArgumentError` si el valor es negativo
//   - campo estático `totalCreated`, incrementado en el cuerpo de cada constructor
//   - `toString()` sobrescrito
//
// class Item {
//   Item(this.id, this.name, int initialStock) : _stock = initialStock {
//     Item.totalCreated++;
//   }
//
//   Item.outOfStock(this.id, this.name) : _stock = 0 {
//     Item.totalCreated++;
//   }
//
//   Item._(this.id, this.name, int initialStock) : _stock = initialStock {
//     Item.totalCreated++;
//   }
//
//   factory Item.fromRecord(Map<String, String> record) {
//     final stock = int.tryParse(record['stock'] ?? '') ?? 0;
//     return Item._(
//       record['id'] ?? '',
//       record['name'] ?? 'Sin nombre',
//       stock,
//     );
//   }
//
//   final String id;
//   final String name;
//   int _stock;
//
//   int get stock => _stock;
//
//   set stock(int value) {
//     if (value < 0) {
//       throw ArgumentError('stock no puede ser negativo: $value');
//     }
//     _stock = value;
//   }
//
//   static int totalCreated = 0;
//
//   @override
//   String toString() => '$name (id: $id) — stock: $_stock';
// }
