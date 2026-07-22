// ============================================
// Catálogo Polimórfico — Proyecto Semana 5
// ============================================
//
// NOTA PARA EL APRENDIZ:
// Completa primero lib/models/catalog_item.dart y
// lib/extensions/catalog_item_extensions.dart antes de descomentar este
// archivo. Ajusta los imports al nombre de clase que hayas usado.
//
// import 'package:catalogo_polimorfico/models/catalog_item.dart';
// import 'package:catalogo_polimorfico/extensions/catalog_item_extensions.dart';

void main() {
  print('=== Catálogo Polimórfico ===');

  // TODO: crea una List<CatalogItem> con al menos 3 elementos, mezclando
  // StandardItem y SpecialItem, adaptados a tu dominio.
  // final items = <CatalogItem>[
  //   StandardItem('I1', '???', 3),
  //   SpecialItem('I2', '???', 1),
  //   StandardItem('I3', '???', 0),
  // ];

  // TODO: imprime el `summary` de cada item (demuestra polimorfismo).
  // for (final item in items) {
  //   print(item.summary);
  // }

  // TODO: llama `logAccess()` SOLO en los items que sean SpecialItem
  // (usa `if (item is SpecialItem)`).
  // for (final item in items) {
  //   if (item is SpecialItem) {
  //     item.logAccess();
  //   }
  // }

  // TODO: imprime el stock total y los nombres sin stock, usando la
  // extensión CatalogListX (totalStock, lowStock).
  // print('Stock total: ${items.totalStock}');
  // print('Sin stock: ${items.lowStock.map((item) => item.name).toList()}');
}
