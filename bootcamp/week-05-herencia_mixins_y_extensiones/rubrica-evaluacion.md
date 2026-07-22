# Rúbrica de Evaluación — Semana 05

## Distribución de Puntaje

| Tipo de Evidencia    | Peso | Instrumento             |
| -------------------- | ---- | ------------------------ |
| Conocimiento 🧠      | 30%  | Cuestionario teórico     |
| Desempeño 💪         | 40%  | Ejercicios en clase      |
| Producto 📦          | 30%  | Proyecto entregable      |

**Mínimo aprobatorio**: 70% en cada tipo de evidencia.

## 🧠 Conocimiento (30%)

Cuestionario teórico sobre los 4 temas de `1-teoria/`:

| Criterio | Puntos |
|---|---|
| `extends`/`super` y por qué una clase abstracta no se puede instanciar | 25 |
| Diferencia entre `extends` (hereda implementación) e `implements` (solo contrato) | 25 |
| Mixins: para qué sirven, cómo se aplican con `with`, y el orden de composición | 25 |
| Extension methods vs extension types, y cuándo hay ambigüedad entre dos extensiones | 25 |

## 💪 Desempeño (40%)

| Ejercicio | Puntos | Criterio |
|---|---|---|
| Ejercicio 01 (herencia, abstractas e implements) | 45 | Los 4 pasos descomentados, `dart run main.dart` imprime las 6 líneas esperadas sin error de `dart analyze` |
| Ejercicio 02 (mixins y extension methods) | 55 | Los 4 pasos descomentados, `dart run main.dart` imprime las 5 líneas esperadas (incluyendo la resolución correcta del `status()` compuesto), sin ningún error de `dart analyze` |

## 📦 Producto (30%)

Proyecto **Catálogo Polimórfico**, adaptado al dominio asignado:

| Criterio | Puntos |
|---|---|
| `CatalogItem` abstracta con `describe()` abstracto y getter `summary` correctos | 20 |
| `StandardItem` y `SpecialItem` extienden correctamente, `SpecialItem` aplica el mixin `Trackable` | 25 |
| Polimorfismo: el `for` sobre `List<CatalogItem>` imprime el `summary` real de cada subclase | 15 |
| `CatalogListX` (`totalStock`, `lowStock`) implementada con `.fold`/`.where` | 25 |
| `dart analyze` sin errores | 15 |

### Criterios transversales

- ✅ Implementación coherente con el dominio asignado
- ✅ Sin copia de implementaciones de otros aprendices
- ✅ `dart analyze` sin errores
- ✅ Ningún import de `package:flutter/...`

## Escala de Calificación

| Rango | Nivel |
|---|---|
| 90-100% | Sobresaliente |
| 80-89% | Notable |
| 70-79% | Aprobado |
| < 70% | No aprobado (requiere recuperación) |

## Formato de Entrega

- Repositorio del estudiante, carpeta `week-05/` con la misma estructura de `3-proyecto/starter/`
- Commit final con mensaje `feat(week-05): complete polymorphic catalog console project`
- Fecha límite: fin de la semana 5, antes de iniciar semana 6
