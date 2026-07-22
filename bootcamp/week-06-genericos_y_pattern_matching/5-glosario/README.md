# Glosario — Semana 06: Genéricos y Pattern Matching

Términos técnicos clave introducidos esta semana, ordenados alfabéticamente.

---

**Bounded generics** — restricción de un parámetro de tipo genérico con `extends`
(ej. `T extends Identifiable`), que garantiza que cualquier tipo concreto usado tenga los
miembros declarados en el bound.

**Destructuring** — extraer los valores de un record, lista, mapa u objeto directamente en una
declaración de variable o en un patrón (`final (title, copies) = ...`).

**Exhaustividad** — garantía que el analyzer verifica en un `switch` expression: que todos los
valores posibles del tipo evaluado tengan una rama que los cubra. Es total cuando el tipo es
`sealed` o `enum`.

**`if-case`** — sentencia condicional que prueba un único patrón contra un valor sin necesidad
de exhaustividad, útil cuando solo interesa un caso puntual.

**Guard clause (`when`)** — condición adicional dentro de un `case` de `switch`
(`Clase(:final campo) when condicion`). Si la guarda es falsa, ese `case` no coincide y Dart
sigue evaluando los siguientes.

**Object pattern** — patrón que desestructura los campos de una instancia dentro de un `case`
(ej. `Book(:final stock)`), extrayéndolos a variables locales.

**Parámetro de tipo** — marcador de posición (`T`, `K`, `V`) en una clase o función genérica, que
se reemplaza por un tipo concreto al instanciarla o invocarla.

**Pattern matching** — mecanismo del lenguaje para comparar la **forma** de un valor (su tipo,
sus campos, el número de elementos) contra uno o más patrones, y desestructurarlo si coincide.

**Record** — tipo de dato compuesto e inmutable que agrupa varios valores (posicionales y/o con
nombre) sin necesidad de declarar una clase, con igualdad estructural por defecto.

**Sealed class** — modificador de clase (`sealed`) que restringe todos sus subtipos directos a
la misma biblioteca, permitiendo que el analyzer verifique exhaustividad en un `switch` sobre
esa jerarquía.

**Switch expression** — forma de `switch` que se evalúa como un valor (`=>` por rama, sin
`break`), a diferencia del `switch` statement clásico orientado a ejecutar sentencias.

**Wildcard pattern (`_`)** — patrón comodín que coincide con cualquier valor sin capturarlo; se
usa como rama por defecto en un `switch` expression no exhaustivo por diseño.

---

> 📚 Glosario global del bootcamp: [docs/plan-estudios.md](../../../docs/plan-estudios.md)
