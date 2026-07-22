// ============================================
// REPOSITORY: ItemRepository
// Gestiona la colección de elementos del dominio
// ============================================

// NOTA PARA EL APRENDIZ:
// Ajusta el import al nombre de clase que definiste en item.dart.
// import '../models/item.dart';

// TODO: declara `ItemRepository` con:
//   - una List<Item> interna (privada)
//   - `add(Item item)`: agrega un elemento
//   - `availableItems()`: retorna los elementos con stock > 0, usando `.where`
//   - `totalStock()`: suma el stock de TODOS los elementos, usando `.fold`
//
// class ItemRepository {
//   final List<Item> _items = [];
//
//   void add(Item item) => _items.add(item);
//
//   List<Item> availableItems() => _items.where((item) => item.stock > 0).toList();
//
//   int totalStock() => _items.fold<int>(0, (total, item) => total + item.stock);
// }
