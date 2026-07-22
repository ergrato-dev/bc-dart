# Rúbrica de Evaluación — Semana 06

## Distribución de Puntaje

| Tipo de Evidencia    | Peso | Instrumento             |
| -------------------- | ---- | ------------------------ |
| Conocimiento 🧠      | 30%  | Cuestionario teórico     |
| Desempeño 💪         | 40%  | Ejercicios en clase      |
| Producto 📦          | 30%  | Proyecto entregable      |

**Mínimo aprobatorio**: 70% en cada tipo de evidencia.

## 🧠 Conocimiento (30%)

- Explica qué problema resuelve un genérico frente a usar `dynamic`
- Distingue un parámetro de tipo sin restricción (`T`) de uno acotado (`T extends X`) y cuándo
  necesita cada uno
- Explica la diferencia entre un record posicional y uno con campos nombrados, y por qué se
  comparan por valor
- Distingue `switch` statement de `switch` expression, y explica qué exige la exhaustividad
- Explica qué garantiza `sealed` sobre los subtipos de una clase y por qué eso permite
  exhaustividad sin `_`
- Explica en qué se diferencia modelar con `sealed class` frente a modelar con `enum`

## 💪 Desempeño (40%)

- **Ejercicio 01** completo: clase genérica `Repository<T>`, bounded generics con
  `T extends Identifiable`, record posicional y record con nombre desestructurados
  correctamente
- **Ejercicio 02** completo: `switch` expression con patrón lógico (`||`) y wildcard, object
  pattern con guarda `when`, `sealed class` con `switch` exhaustivo, e `if-case`
- Código descomentado sin modificar la lógica de los pasos, `dart analyze` sin errores en ambos
  ejercicios
- Explica verbalmente (o en comentario) por qué el `switch` sobre la jerarquía `sealed` no
  necesita rama `_`

## 📦 Producto (30%)

- `Repository<T extends Identifiable>` implementado con `add`, `findResult` y `stats`
- `OperationResult<T>` declarado como `sealed class` con `Found<T>` y `NotFound<T>` en el mismo
  archivo
- `bin/main.dart` consume `findResult` con un `switch` **exhaustivo** (sin `_`) y desestructura el
  record de `stats` con el shorthand `:campo`
- Implementación coherente con el dominio asignado (nombres de campos, atributo propio agregado
  a `Item`)
- `dart run bin/main.dart` ejecuta sin errores ni excepciones

### Criterios transversales

- ✅ Implementación coherente con el dominio asignado
- ✅ Sin copia de implementaciones de otros aprendices
- ✅ `dart analyze` sin errores
- ✅ `dart test` pasando
