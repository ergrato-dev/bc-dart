// ============================================
// MODEL: CatalogItem (jerarquía abstracta)
// Entidad principal del dominio, con dos variantes
// ============================================

// NOTA PARA EL APRENDIZ:
// Adapta los nombres de clase a tu dominio asignado.
// Ejemplos (StandardItem / SpecialItem con Trackable):
// - Biblioteca: Book / RareEdition
// - Farmacia: Medication / ControlledMedication
// - Gimnasio: RegularPlan / VipPlan

// TODO: declara `CatalogItem` como clase ABSTRACTA con:
//   - campos: id, name (final) y stock (mutable)
//   - método abstracto `describe()` (sin cuerpo)
//   - getter `summary` que combine name, describe() y stock
//
// abstract class CatalogItem {
//   CatalogItem(this.id, this.name, this.stock);
//
//   final String id;
//   final String name;
//   int stock;
//
//   String describe();
//
//   String get summary => '$name: ${describe()} (stock: $stock)';
// }

// TODO: declara el mixin `Trackable`, restringido con `on CatalogItem`,
// con un método `logAccess()` que use `name`.
//
// mixin Trackable on CatalogItem {
//   void logAccess() => print('Accediendo a $name (especial)');
// }

// TODO: declara `StandardItem`, que extiende CatalogItem e implementa describe().
//
// class StandardItem extends CatalogItem {
//   StandardItem(super.id, super.name, super.stock);
//
//   @override
//   String describe() => 'Estándar';
// }

// TODO: declara `SpecialItem`, que extiende CatalogItem Y aplica el mixin Trackable.
//
// class SpecialItem extends CatalogItem with Trackable {
//   SpecialItem(super.id, super.name, super.stock);
//
//   @override
//   String describe() => 'Especial';
// }
