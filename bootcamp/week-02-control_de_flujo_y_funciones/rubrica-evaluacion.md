# Rúbrica de Evaluación — Semana 02

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
| Diferencia entre `switch` statement y `switch` expression, y por qué uno exige exhaustividad | 25 |
| Reglas de fallthrough en `switch` statement (cuándo es válido, cuándo no) | 15 |
| `for`/`for-in` vs `while`/`do-while`: cuándo usar cada uno | 15 |
| Parámetros posicionales opcionales (`[]`) vs nombrados (`{}`), y cuándo `required` | 25 |
| Qué es un closure y por qué dos llamadas a una función-fábrica no comparten estado | 20 |

## 💪 Desempeño (40%)

| Ejercicio | Puntos | Criterio |
|---|---|---|
| Ejercicio 01 (condicionales y bucles) | 45 | Los 4 pasos descomentados, `dart run main.dart` imprime las 10 líneas esperadas sin error de `dart analyze` |
| Ejercicio 02 (funciones y closures) | 55 | Los 5 pasos descomentados, `dart run main.dart` imprime las 10 líneas esperadas (incluyendo el contador independiente del paso 5), sin ningún error de `dart analyze` |

## 📦 Producto (30%)

Proyecto **Reporte de Lote en Consola**, adaptado al dominio asignado:

| Criterio | Puntos |
|---|---|
| `eventName` implementado con `switch` expression exhaustivo (usa `_`) | 20 |
| `formatEvent` con parámetros nombrados, `note` opcional manejado con `??` | 20 |
| `printLine` implementado como arrow function | 10 |
| `for` de 3 iteraciones con `switch` statement seleccionando datos literales del dominio, output de 3 líneas coherentes | 35 |
| `dart analyze` sin errores | 15 |

> 💡 El bonus opcional del closure-contador **no resta puntos** si no se implementa — es una
> extensión para quien quiera profundizar, no un requisito de la rúbrica.

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

- Repositorio del estudiante, carpeta `week-02/` con la misma estructura de `3-proyecto/starter/`
- Commit final con mensaje `feat(week-02): complete batch report console project`
- Fecha límite: fin de la semana 2, antes de iniciar semana 3
