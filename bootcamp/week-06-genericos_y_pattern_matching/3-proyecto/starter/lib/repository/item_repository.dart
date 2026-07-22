// ============================================
// REPOSITORY: Repository<T>
// Acceso genérico y acotado a una colección de items
// ============================================

// NOTA PARA EL APRENDIZ:
// Ajusta los imports a los archivos donde definiste Identifiable y OperationResult.
// import '../models/identifiable.dart';
// import '../models/operation_result.dart';

// TODO: declara `Repository<T extends Identifiable>` con:
//   - `add(T item)`: agrega un item a la colección interna
//   - `findResult(String id)`: retorna OperationResult<T> — Found si existe, NotFound si no
//   - `stats(bool Function(T) isLow)`: retorna un record con nombre ({int total, int lowStock})
//     usando `.fold` para el total y `.where` para contar los items "bajos" (semana 3)
//
// class Repository<T extends Identifiable> {
//   final List<T> _items = [];
//
//   void add(T item) => _items.add(item);
//
//   OperationResult<T> findResult(String id) {
//     for (final item in _items) {
//       if (item.id == id) return Found<T>(item);
//     }
//     return NotFound<T>(id);
//   }
//
//   ({int total, int lowStock}) stats(bool Function(T) isLow) {
//     final total = _items.length;
//     final lowStock = _items.where(isLow).length;
//     return (total: total, lowStock: lowStock);
//   }
// }
