// ============================================
// MODEL: OperationResult<T> (jerarquía sellada)
// Resultado de una búsqueda en el Repository<T>
// ============================================

// TODO: declara `OperationResult<T>` como SEALED CLASS, con dos subtipos
// declarados en este MISMO archivo (requisito de `sealed`):
//   - Found<T>: contiene el item encontrado (campo `item` de tipo T)
//   - NotFound<T>: contiene el id buscado que no existe (campo `id` de tipo String)
//
// sealed class OperationResult<T> {
//   const OperationResult();
// }
//
// class Found<T> extends OperationResult<T> {
//   const Found(this.item);
//   final T item;
// }
//
// class NotFound<T> extends OperationResult<T> {
//   const NotFound(this.id);
//   final String id;
// }
