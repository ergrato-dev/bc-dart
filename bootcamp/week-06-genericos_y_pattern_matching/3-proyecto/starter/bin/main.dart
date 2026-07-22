// ============================================
// Repositorio Genérico con Resultados Sellados — Proyecto Semana 6
// ============================================
//
// NOTA PARA EL APRENDIZ:
// Completa primero lib/models/identifiable.dart, lib/models/item.dart,
// lib/models/operation_result.dart y lib/repository/item_repository.dart
// antes de descomentar este archivo.
//
// import 'package:repositorio_generico/models/item.dart';
// import 'package:repositorio_generico/repository/item_repository.dart';

void main() {
  print('=== Repositorio Genérico con Resultados Sellados ===');

  // TODO: crea un Repository<Item> y agrega al menos 3 items de tu dominio.
  // final repo = Repository<Item>();
  // repo.add(Item(id: 'i1', name: '???', quantity: 3));
  // repo.add(Item(id: 'i2', name: '???', quantity: 0));
  // repo.add(Item(id: 'i3', name: '???', quantity: 5));

  // TODO: busca un id existente y uno inexistente, consumiendo el
  // OperationResult<Item> con un switch EXHAUSTIVO (sin `_`).
  // for (final id in ['i1', 'no-existe']) {
  //   final result = repo.findResult(id);
  //   final message = switch (result) {
  //     Found(:final item) => 'Encontrado: ${item.name}',
  //     NotFound(id: final missingId) => 'Sin resultados para "$missingId"',
  //   };
  //   print(message);
  // }

  // TODO: obtén el record de stats(...) y desestrúctúralo con :campo.
  // final (:total, :lowStock) = repo.stats((item) => item.quantity == 0);
  // print('Total: $total, sin stock: $lowStock');
}
