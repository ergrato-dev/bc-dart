// ============================================
// EXTENSION: CatalogListX
// Operaciones de resumen sobre una lista de CatalogItem
// ============================================

// NOTA PARA EL APRENDIZ:
// Ajusta el import al archivo donde definiste CatalogItem.
// import '../models/catalog_item.dart';

// TODO: declara la extensión `CatalogListX` sobre `List<CatalogItem>` con:
//   - `totalStock` (getter): suma el stock de todos los items, usa `.fold`
//   - `lowStock` (getter): retorna los items con stock == 0, usa `.where`
//
// extension CatalogListX on List<CatalogItem> {
//   int get totalStock => fold<int>(0, (sum, item) => sum + item.stock);
//
//   List<CatalogItem> get lowStock => where((item) => item.stock == 0).toList();
// }
