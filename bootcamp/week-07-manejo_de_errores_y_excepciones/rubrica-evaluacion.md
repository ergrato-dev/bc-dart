# Rúbrica de Evaluación — Semana 07

## Distribución de Puntaje

| Tipo de Evidencia    | Peso | Instrumento             |
| -------------------- | ---- | ------------------------ |
| Conocimiento 🧠      | 30%  | Cuestionario teórico     |
| Desempeño 💪         | 40%  | Ejercicios en clase      |
| Producto 📦          | 30%  | Proyecto entregable      |

**Mínimo aprobatorio**: 70% en cada tipo de evidencia.

## 🧠 Conocimiento (30%)

- Explica por qué colocar un `catch` genérico antes que un `on` específico impide que este
  último se alcance
- Distingue `Exception` de `Error` y explica por qué capturar `Error` en producción suele ocultar
  un bug en vez de resolverlo
- Explica qué problema del control de flujo resuelve modelar un fallo con `Result<T>` frente a
  lanzar una excepción
- Explica por qué `assert` se elimina en compilaciones release y qué implica para la validación
  de datos externos
- Justifica, para un caso dado, si un fallo debería modelarse como `Exception`, `Result` o
  `assert`

## 💪 Desempeño (40%)

- **Ejercicio 01** completo: `on`/`catch` por tipo, `finally`, excepción personalizada con
  contexto y `toString()` propio, `rethrow`
- **Ejercicio 02** completo: `Result<T>` sellado con `Ok`/`Err`, consumido con `switch`
  exhaustivo, `assert` protegiendo una invariante, estrategia combinada `assert` + `Result`
- Código descomentado sin modificar la lógica de los pasos, `dart analyze` sin errores en ambos
  ejercicios
- Explica verbalmente (o en comentario) por qué `findById` lanza una excepción mientras que la
  validación de negocio retorna un `Result`

## 📦 Producto (30%)

- `Item` con `assert` protegiendo su invariante interna (`quantity >= 0`)
- `ItemNotFoundException` declarada con contexto (`id`) y `toString()` propio
- `ItemRepository.findById` lanza la excepción personalizada cuando el id no existe
- `ValidationResult` declarado como `sealed class` con `Valid`/`Invalid`, y `ItemValidator` con
  al menos 2 reglas de negocio propias del dominio
- `bin/main.dart` consume `findById` con `try`/`on`/`finally`, y `validate` con un `switch`
  **exhaustivo** (sin `_`)
- Implementación coherente con el dominio asignado
- `dart run bin/main.dart` ejecuta sin errores ni excepciones sin manejar

### Criterios transversales

- ✅ Implementación coherente con el dominio asignado
- ✅ Sin copia de implementaciones de otros aprendices
- ✅ `dart analyze` sin errores
- ✅ `dart test` pasando
