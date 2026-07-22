// ============================================
// SERVICE: ItemValidator
// Reglas de negocio de un Item — fallos ESPERADOS, modelados con Result
// ============================================

// NOTA PARA EL APRENDIZ:
// Ajusta el import al archivo donde definiste Item y ValidationResult.
// import '../models/item.dart';
// import '../models/validation_result.dart';

// TODO: declara `ItemValidator` con un método `validate(Item item)` que retorne
// `ValidationResult` — revisa las reglas EN ORDEN y retorna el primer `Invalid`
// que encuentre, o `Valid()` si todas pasan. Agrega al menos 2 reglas propias
// de tu dominio (ver tabla de adaptación en el README).
//
// class ItemValidator {
//   ValidationResult validate(Item item) {
//     if (item.name.trim().isEmpty) {
//       return const Invalid('El nombre no puede estar vacío');
//     }
//
//     // TODO: agrega tu segunda regla de negocio aquí, ej.:
//     // if (item.quantity > 1000) {
//     //   return const Invalid('La cantidad supera el máximo permitido');
//     // }
//
//     return const Valid();
//   }
// }
