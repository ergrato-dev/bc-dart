# Rúbrica de Evaluación — Semana 01

## Distribución de Puntaje

| Tipo de Evidencia    | Peso | Instrumento             |
| -------------------- | ---- | ------------------------ |
| Conocimiento 🧠      | 30%  | Cuestionario teórico     |
| Desempeño 💪         | 40%  | Ejercicios en clase      |
| Producto 📦          | 30%  | Proyecto entregable      |

**Mínimo aprobatorio**: 70% en cada tipo de evidencia.

## 🧠 Conocimiento (30%)

Cuestionario teórico sobre los 3 temas de `1-teoria/`:

| Criterio | Puntos |
|---|---|
| Diferencia `var`/`final`/`const` y cuándo usar cada uno | 20 |
| `dynamic` vs `Object`: por qué preferir el segundo cuando el tipo no se conoce de antemano | 15 |
| Interpolación de strings: `$variable` vs `${expresión}` | 10 |
| Null safety: `?`, `?.`, `??`, `??=`, `!` — uso correcto y riesgo de `!` | 35 |
| `late`: qué garantiza y qué puede fallar en runtime | 20 |

## 💪 Desempeño (40%)

| Ejercicio | Puntos | Criterio |
|---|---|---|
| Ejercicio 01 (variables y tipos) | 45 | Los 4 pasos descomentados, `dart run main.dart` imprime las 13 líneas esperadas sin error de `dart analyze` |
| Ejercicio 02 (null safety) | 55 | Los 4 pasos descomentados, `dart run main.dart` imprime las 9 líneas esperadas (incluyendo el `Capturado: ...` del paso 4), sin ningún error de `dart analyze` |

## 📦 Producto (30%)

Proyecto **Ficha de Dominio en Consola**, adaptado al dominio asignado:

| Criterio | Puntos |
|---|---|
| Al menos 4 variables con el modificador correcto (`final`/`const`/`var` justificado) | 25 |
| Al menos 1 variable nullable coherente con el dominio (dato que puede legítimamente faltar) | 20 |
| Uso correcto de `??` para el valor por defecto de esa variable | 20 |
| Ficha impresa con interpolación de strings, mínimo 4 líneas de datos | 25 |
| `dart analyze` sin errores | 10 |

### Criterios transversales

- ✅ Implementación coherente con el dominio asignado
- ✅ Sin copia de implementaciones de otros aprendices
- ✅ `dart analyze` sin errores (advertencias del analyzer sobre promoción de tipos son
  aceptables y esperadas — ver nota en el ejercicio 02)

## Escala de Calificación

| Rango | Nivel |
|---|---|
| 90-100% | Sobresaliente |
| 80-89% | Notable |
| 70-79% | Aprobado |
| < 70% | No aprobado (requiere recuperación) |

## Formato de Entrega

- Repositorio del estudiante, carpeta `week-01/` con la misma estructura de `3-proyecto/starter/`
- Commit final con mensaje `feat(week-01): complete domain card console project`
- Fecha límite: fin de la semana 1, antes de iniciar semana 2
