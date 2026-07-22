// ============================================
// Validador con Result y Excepciones Personalizadas — Proyecto Semana 7
// ============================================
//
// NOTA PARA EL APRENDIZ:
// Completa primero lib/models/item.dart, lib/errors/item_not_found_exception.dart,
// lib/models/validation_result.dart, lib/repository/item_repository.dart y
// lib/services/item_validator.dart antes de descomentar este archivo.
//
// import 'package:validador_result_excepciones/models/item.dart';
// import 'package:validador_result_excepciones/errors/item_not_found_exception.dart';
// import 'package:validador_result_excepciones/models/validation_result.dart';
// import 'package:validador_result_excepciones/repository/item_repository.dart';
// import 'package:validador_result_excepciones/services/item_validator.dart';

void main() {
  print('=== Validador con Result y Excepciones Personalizadas ===');

  // TODO: crea un ItemRepository y agrega al menos 2 items de tu dominio.
  // final repo = ItemRepository();
  // repo.add(Item(id: 'i1', name: '???', quantity: 3));
  // repo.add(Item(id: 'i2', name: '???', quantity: 5));

  // TODO: busca un id existente y uno inexistente con try/on ItemNotFoundException/finally.
  // for (final id in ['i1', 'no-existe']) {
  //   try {
  //     final item = repo.findById(id);
  //     print('Encontrado: ${item.name}');
  //   } on ItemNotFoundException catch (e) {
  //     print(e);
  //   } finally {
  //     print('Búsqueda de "$id" finalizada');
  //   }
  // }

  // TODO: valida al menos 2 items (uno válido, uno inválido de tu dominio) con
  // un switch EXHAUSTIVO (sin `_`) sobre ValidationResult.
  // final validator = ItemValidator();
  // final candidates = [
  //   Item(id: 'c1', name: '???', quantity: 2),
  //   Item(id: 'c2', name: '', quantity: 2),
  // ];
  // for (final candidate in candidates) {
  //   final message = switch (validator.validate(candidate)) {
  //     Valid() => '${candidate.id}: válido',
  //     Invalid(:final reason) => '${candidate.id}: inválido — $reason',
  //   };
  //   print(message);
  // }
}
