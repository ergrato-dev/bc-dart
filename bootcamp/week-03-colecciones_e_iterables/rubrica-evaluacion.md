# Rúbrica de Evaluación — Semana 03

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
| Diferencia entre `List` (duplicados, orden) y `Set` (unicidad) | 20 |
| Por qué `map['clave']` siempre retorna un tipo nullable, y cómo recorrer `entries` | 20 |
| Collection-if, collection-for y spread (`...` vs `...?`) | 25 |
| `map`/`where` (perezosos) vs `fold`/`reduce`, y cuándo `fold` es más seguro | 35 |

## 💪 Desempeño (40%)

| Ejercicio | Puntos | Criterio |
|---|---|---|
| Ejercicio 01 (listas, sets y maps) | 45 | Los 4 pasos descomentados, `dart run main.dart` imprime las 9 líneas esperadas sin error de `dart analyze` |
| Ejercicio 02 (collection-for/if y funcionales) | 55 | Los 4 pasos descomentados, `dart run main.dart` imprime las 5 líneas esperadas (incluyendo el catálogo con spread nulo del paso 2), sin ningún error de `dart analyze` |

## 📦 Producto (30%)

Proyecto **Catálogo de Elementos en Lista**, adaptado al dominio asignado:

| Criterio | Puntos |
|---|---|
| `catalog` como `List<Map<String, String>>` con al menos 4 elementos coherentes con el dominio | 20 |
| `availableNames` construido encadenando `.where` y `.map` | 20 |
| `summaryLines` con collection-for e inclusión condicional de `note` con collection-if | 20 |
| `extendedCatalog` construido con spread (`...`) y `totalAvailable` calculado sobre él | 25 |
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

- Repositorio del estudiante, carpeta `week-03/` con la misma estructura de `3-proyecto/starter/`
- Commit final con mensaje `feat(week-03): complete collection catalog console project`
- Fecha límite: fin de la semana 3, antes de iniciar semana 4
