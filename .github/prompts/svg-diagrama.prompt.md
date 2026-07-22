---
description: "Genera un diagrama SVG educativo para 0-assets/ siguiendo los estándares visuales del bootcamp: dark theme, sin degradés, fuente sans-serif, paleta Dart. Usar cuando la teoría o práctica necesite un diagrama visual."
name: "Nuevo diagrama SVG"
argument-hint: "Describe el diagrama: qué concepto ilustra, qué elementos debe tener, semana y nombre de archivo sugerido (ej: week-06/sealed-classes-flow.svg)"
mode: "agent"
---

# Generar diagrama SVG educativo — Bootcamp Dart

Crea un diagrama SVG para `0-assets/` que ilustre conceptos de Dart de forma visual y
educativa, siguiendo los estándares del bootcamp.

## Estándares visuales obligatorios

### Tema

- 🌙 **Fondo oscuro**: `#0d1117` (GitHub dark)
- ❌ **Sin degradés** (`linearGradient`, `radialGradient` están **PROHIBIDOS**)
- ✅ Colores sólidos únicamente

### Paleta de colores

| Rol                 | Color     | Uso                                  |
| -------------------- | --------- | ------------------------------------- |
| Fondo base            | `#0d1117` | Background principal del SVG          |
| Acento Dart (claro)    | `#40C4FF` | Títulos, acciones, bordes de énfasis |
| Acento Dart (oscuro)   | `#0175C2` | Elementos secundarios, marcos        |
| Texto principal        | `#ffffff` | Texto sobre fondo oscuro             |
| Texto secundario       | `#8b949e` | Subtítulos, descripciones            |
| Superficie card        | `#161b22` | Cajas, paneles, contenedores         |
| Borde sutil            | `#30363d` | Bordes de cajas y separadores        |
| Éxito / positivo       | `#3fb950` | Flujos exitosos, checkmarks          |
| Error / negativo       | `#f85149` | Errores, rechazos, x-marks           |
| Advertencia            | `#d29922` | Notas de precaución                  |

### Tipografía

- ✅ **Sans-serif exclusivamente**: `font-family="system-ui, -apple-system, sans-serif"`
- ❌ **NO usar fuentes serif**: `Times`, `Georgia`, etc.
- ❌ **NO usar monospace** salvo para fragmentos de código dentro del diagrama
- Jerarquía de tamaños: título 20-24px, subtítulo 14-16px, cuerpo 11-13px

### Dimensiones recomendadas

- **Diagrama de flujo**: 800×500px o 1000×600px
- **Comparativa (ej. mutable vs immutable)**: 900×400px
- **Arquitectura en capas (domain/data/state)**: 700×600px
- **Timeline / secuencia async**: 900×350px

## Tipos de diagrama más usados en el bootcamp

### Diagrama de flujo de null safety

Mostrar la cadena de decisiones: `variable` → `?` (nullable) → `??`/`??=` (fallback) →
`!` (assert non-null, con advertencia de riesgo).

### Diagrama de arquitectura en capas (semana 10, puente a bc-flutter)

Mostrar la separación:

```
State (notifier / listenable)
    ↕
Domain (entities / repository interface)
    ↕
Data (repository implementation)
```

### Comparativa Future vs Stream

Dos columnas: Future (un solo valor, resuelve una vez) vs Stream (secuencia de valores en el
tiempo, single-subscription vs broadcast).

### Grafo de jerarquía de tipos (sealed classes / pattern matching)

Nodos = subtipos de una `sealed class`, mostrando exhaustividad del `switch`.

### Diagrama de ciclo de vida / secuencia async

Timeline izquierda→derecha con pasos numerados: `main()` → `await Future` → resultado, o el
flujo de un `Isolate` (mensaje enviado → procesado → mensaje recibido).

## Reglas de vinculación (obligatorio)

Todo SVG creado debe estar vinculado en al menos un archivo de teoría o práctica:

```markdown
![Descripción accesible del diagrama](../0-assets/nombre-del-diagrama.svg)
```

Nombrar con **prefijo numérico según el orden lógico de lectura** (el orden en que aparecen
vinculados en `1-teoria/`, no el orden en que se crean) + kebab-case descriptivo:

- ✅ `01-null-safety-flow.svg`
- ✅ `02-sealed-classes-hierarchy.svg`
- ✅ `03-future-vs-stream.svg`
- ❌ `null-safety-flow.svg` (sin número — no indica orden de lectura)
- ❌ `diagrama1.svg`
- ❌ `image.svg`

Si se agrega un SVG nuevo entre dos existentes, renumerar los que correspondan para mantener el
orden — no reutilizar ni saltar números.

## Accesibilidad

Incluir siempre `<title>` y `<desc>` en el SVG raíz:

```svg
<svg ...>
  <title>Jerarquía de sealed classes para el resultado de una operación</title>
  <desc>Diagrama de árbol: Result sellado con dos subtipos, Success y Failure</desc>
  <!-- contenido -->
</svg>
```

## Instrucciones para el agente

1. Crear el SVG en `bootcamp/week-XX/0-assets/nombre-descriptivo.svg`
2. Aplicar estrictamente la paleta de colores — NO usar degradés bajo ninguna circunstancia
3. Fuente `system-ui, -apple-system, sans-serif` en todos los textos
4. Incluir `<title>` y `<desc>` para accesibilidad
5. Verificar que el SVG sea válido (tags cerrados, atributos con comillas)
6. Indicar en qué archivo de teoría o práctica debe vincularse el SVG generado
7. Proporcionar el snippet markdown de vinculación listo para copiar

## Descripción del diagrama a crear

$input
