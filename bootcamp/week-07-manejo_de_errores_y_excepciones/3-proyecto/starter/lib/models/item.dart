// ============================================
// MODEL: Item
// Entidad principal del dominio, con invariante interna protegida por assert
// ============================================

// NOTA PARA EL APRENDIZ:
// Adapta el nombre de la clase y sus atributos a tu dominio asignado.
// Ejemplos:
// - Biblioteca: Book (id, name=title, quantity=copies)
// - Farmacia: Medication (id, name, quantity=stock)
// - Gimnasio: Member (id, name, quantity=sessions)

// TODO: declara `Item` con:
//   - id (final String)
//   - name (final String)
//   - quantity (mutable int)
//   - un assert en el constructor: quantity >= 0 (invariante interna, NO validación de negocio)
//
// class Item {
//   Item({
//     required this.id,
//     required this.name,
//     required this.quantity,
//   }) : assert(quantity >= 0, 'quantity no puede ser negativo');
//
//   final String id;
//   final String name;
//   int quantity;
// }
