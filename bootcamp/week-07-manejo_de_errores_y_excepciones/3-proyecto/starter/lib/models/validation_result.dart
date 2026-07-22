// ============================================
// MODEL: ValidationResult (jerarquía sellada)
// Resultado de validar un Item contra las reglas de negocio
// ============================================

// TODO: declara `ValidationResult` como SEALED CLASS, con dos subtipos
// declarados en este MISMO archivo (requisito de `sealed`):
//   - Valid: sin campos, el item cumple todas las reglas
//   - Invalid: contiene `reason` (String), la primera regla que falló
//
// sealed class ValidationResult {
//   const ValidationResult();
// }
//
// class Valid extends ValidationResult {
//   const Valid();
// }
//
// class Invalid extends ValidationResult {
//   const Invalid(this.reason);
//   final String reason;
// }
