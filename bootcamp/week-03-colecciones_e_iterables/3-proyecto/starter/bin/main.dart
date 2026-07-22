// ============================================
// Catálogo de Elementos en Lista — Proyecto Semana 3
// ============================================
//
// NOTA PARA EL APRENDIZ:
// Adapta las claves 'name', 'status' y 'note' de cada elemento a tu dominio.
// Ejemplos:
// - Biblioteca: name=título, status='Disponible'/'Agotado', note=observación
// - Farmacia: name=medicamento, status='En stock'/'Agotado', note=vencimiento
// - Gimnasio: name=miembro, status='Activo'/'Inactivo', note=pago pendiente
//
// Esta semana solo viste colecciones (List/Set/Map) y operadores funcionales
// (where/map/fold) — todavía no hay clases propias. El catálogo se modela
// a propósito como List<Map<String, String>>, sin clase Item.

void main() {
  print('=== Catálogo de Elementos ===');

  // TODO: declara `catalog` como List<Map<String, String>> con al menos 4
  // elementos de tu dominio. Cada Map debe tener las claves 'name', 'status'
  // (uno de dos valores posibles) y 'note' (usa '' si no aplica).
  // final catalog = <Map<String, String>>[
  //   {'name': '???', 'status': '???', 'note': '???'},
  // ];

  // TODO: construye `availableNames` encadenando `.where` (filtra por
  // status) y `.map` (extrae 'name') sobre `catalog`, terminando en
  // `.toList()`.
  // final availableNames = catalog
  //     .where((item) => item['status'] == '???')
  //     .map((item) => item['name'] ?? '')
  //     .toList();

  // TODO: construye `summaryLines` con un collection-for que recorra
  // `catalog`, incluyendo la nota de cada elemento con un collection-if
  // SOLO si `note` no está vacía.
  // final summaryLines = [
  //   for (final item in catalog)
  //     '${item['name']}: ${item['status']}'
  //         '${(item['note'] ?? '').isNotEmpty ? ' (${item['note']})' : ''}',
  // ];

  // TODO: usa el operador spread (...) para construir `extendedCatalog`,
  // combinando `catalog` con al menos un elemento adicional literal.
  // final extendedCatalog = [
  //   ...catalog,
  //   {'name': '???', 'status': '???', 'note': '???'},
  // ];

  // TODO: calcula `totalAvailable` con `.where(...).length` sobre
  // `extendedCatalog`.
  // final totalAvailable = extendedCatalog.where((item) => item['status'] == '???').length;

  // TODO: imprime el reporte: cada línea de `summaryLines`, la lista de
  // `availableNames`, y el `totalAvailable` al final.
  // for (final line in summaryLines) {
  //   print(line);
  // }
  // print('Disponibles: $availableNames');
  // print('Total disponibles (catálogo extendido): $totalAvailable');
}
