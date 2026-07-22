# Rúbrica de Evaluación — Semana 04

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
| Sintaxis `this.campo` en el constructor y por qué sobrescribir `toString()` | 15 |
| Diferencia entre constructor normal, nombrado, const y factory, y cuándo usar cada uno | 30 |
| Privacidad `_` a nivel de archivo, y cuándo un getter/setter aporta frente a un campo público | 25 |
| Miembros estáticos: cuándo un dato pertenece a la clase y no a la instancia | 30 |

## 💪 Desempeño (40%)

| Ejercicio | Puntos | Criterio |
|---|---|---|
| Ejercicio 01 (clases y constructores) | 45 | Los 4 pasos descomentados, `dart run main.dart` imprime las 6 líneas esperadas sin error de `dart analyze` |
| Ejercicio 02 (getters, setters y estáticos) | 55 | Los 4 pasos descomentados, `dart run main.dart` imprime las 8 líneas esperadas (incluyendo la excepción capturada del paso 2), sin ningún error de `dart analyze` |

## 📦 Producto (30%)

Proyecto **Catálogo de Objetos con Clases**, adaptado al dominio asignado:

| Criterio | Puntos |
|---|---|
| Clase de dominio con constructor normal, nombrado y factory implementados correctamente | 30 |
| Campo privado con getter y setter que rechaza valores negativos | 20 |
| Campo estático `totalCreated` incrementado correctamente en cada constructor | 15 |
| `ItemRepository` con `add`, `availableItems` (`.where`) y `totalStock` (`.fold`) funcionando | 20 |
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

- Repositorio del estudiante, carpeta `week-04/` con la misma estructura de `3-proyecto/starter/`
- Commit final con mensaje `feat(week-04): complete class-based catalog console project`
- Fecha límite: fin de la semana 4, antes de iniciar semana 5
