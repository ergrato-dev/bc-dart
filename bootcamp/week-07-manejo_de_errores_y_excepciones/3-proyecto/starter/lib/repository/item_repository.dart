// ============================================
// REPOSITORY: ItemRepository
// Acceso a la colección de items — findById lanza si no existe
// ============================================

// NOTA PARA EL APRENDIZ:
// Ajusta los imports a los archivos donde definiste Item y ItemNotFoundException.
// import '../models/item.dart';
// import '../errors/item_not_found_exception.dart';

// TODO: declara `ItemRepository` con:
//   - add(Item item): agrega un item a la colección interna
//   - findById(String id): retorna el Item si existe, o LANZA ItemNotFoundException si no
//     (esto SÍ es un caso excepcional real — buscar algo que no debería faltar)
//
// class ItemRepository {
//   final List<Item> _items = [];
//
//   void add(Item item) => _items.add(item);
//
//   Item findById(String id) {
//     for (final item in _items) {
//       if (item.id == id) return item;
//     }
//     throw ItemNotFoundException(id);
//   }
// }
