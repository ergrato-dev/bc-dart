# 🤖 Instrucciones para GitHub Copilot / Claude

## 📋 Contexto del Bootcamp

Este repo es contenido de bootcamp (Dart puro, sin framework), no una app en producción — el
código de `starter/` y `solution/` es material didáctico, evalúalo con ese criterio.

### 📊 Datos del Bootcamp

| Dato | Valor |
|---|---|
| Duración | 10 semanas |
| Horas totales | 60 horas |
| Ritmo | 6h/semana (2h teoría, 2h prácticas, 2h proyecto) |
| Perfil de entrada | Ya programa (POO, control de flujo, funciones); Dart es nuevo |
| Alcance | Solo el lenguaje Dart — sin Flutter, sin widgets, sin dart:io de servidor |
| Cierre | Semana 10 = puente explícito hacia `bc-flutter` (arquitectura en capas, sin imports de Flutter) |

## 🎯 Objetivos de Aprendizaje

Ver la lista completa en [README.md](../README.md#-objetivos) y el temario detallado en
[docs/plan-estudios.md](../docs/plan-estudios.md).

## 📚 Estructura del Bootcamp

### Distribución por Fases

#### **Fase 1 — Fundamentos del Lenguaje (Semanas 1-2)** — 12 horas
Entorno/tooling, variables, null safety, control de flujo, funciones.

#### **Fase 2 — POO y Tipos Avanzados (Semanas 3-6)** — 24 horas
Colecciones/iterables, clases, herencia/mixins/extensiones, genéricos, records, pattern
matching, sealed classes.

#### **Fase 3 — Manejo de Errores y Asincronía (Semanas 7-8)** — 12 horas
Excepciones, patrón Result, Future/async/await, Streams, isolates.

#### **Fase 4 — Herramientas y Proyecto Final (Semanas 9-10)** — 12 horas
Testing, paquetes/pub, JSON, CLI apps, proyecto puente a bc-flutter.

## 🗂️ Estructura de Carpetas

```
bootcamp/week-XX-tema_principal/
├── README.md               # Objetivos, estructura, contenidos, entregables
├── rubrica-evaluacion.md   # 30/40/30 Conocimiento/Desempeño/Producto
├── 0-assets/                # SVG diagramas, tema oscuro
├── 1-teoria/                # NN-tema.md, ~150-200 líneas c/u
├── 2-practicas/              # NN-ejercicio-nombre/README.md + starter/ (patrón uncomment)
├── 3-proyecto/               # README.md + starter/ + solution/ (gitignored)
├── 4-recursos/                # ebooks-free/, videografia/, webgrafia/
└── 5-glosario/                # README.md, términos alfabetizados
```

Semana 10 (final) es la única excepción: solo `README.md` + `rubrica-evaluacion.md` +
`3-proyecto/` + `5-glosario/` (sin `0-assets/1-teoria/2-practicas/4-recursos`).

### 📁 Carpetas Raíz

- `docs/` — plan de estudios, versiones del stack, guías de setup (SDK local y Docker)
- `scripts/scaffold-bootcamp.sh` — genera la estructura de las 10 semanas (idempotente)
- `.github/prompts/` — prompts para generar contenido semana a semana
- `assets/` — recursos visuales del README raíz

## 🎓 Componentes de Cada Semana

### 1. Teoría (`1-teoria/`)

Archivos `.md` numerados, ~150 líneas (máx 200) por archivo. Español para explicaciones,
inglés para nombres de código. Sin ASCII art — diagramas en SVG referenciados desde
`0-assets/`.

### 2. Prácticas (`2-practicas/`)

**Patrón obligatorio: uncomment.** Los ejercicios son tutoriales, NO tareas con TODOs — el
estudiante aprende descomentando código ya escrito.

✅ Correcto:

```dart
// ============================================
// PASO 1: Título del paso
// ============================================
print('--- Paso 1: Título ---');

// Explicación del concepto en español.
// Descomenta las siguientes líneas:
// final items = <String>[];
// items.add('primer elemento');
```

❌ Incorrecto — no usar TODOs en ejercicios:

```dart
// TODO: Implementar la lista
final items = [];
```

No llevan carpeta `solution/` — el estudiante verifica con `dart run`/`dart test`.

### 3. Proyecto (`3-proyecto/`)

Usa **TODOs genéricos** (`Item`/`Entity`) adaptables al dominio asignado. A diferencia de
`2-practicas/`, sí lleva `solution/` — está en `.gitignore`, nunca se elimina esa línea ni se
sube.

#### 🏛️ Política de Dominios Únicos (Anticopia)

Los dominios **NO se definen en este repo**. Catálogo único compartido en
`bc-sql/scripts/assign_domains.py` (150 dominios, 15 reservados para ejemplos), asignado y
trackeado por la app `sena/eval-semanal`. **Biblioteca** es el dominio canónico usado en toda
la teoría/ejemplos de este repo — nunca se asigna a un estudiante.

Las instrucciones de proyecto deben ser genéricas y adaptables a cualquier dominio, con
ejemplos de adaptación (ej. Biblioteca → libros/préstamos, Farmacia → medicamentos/ventas).

### 4. Rúbrica (`rubrica-evaluacion.md`)

Desglose fijo 30/40/30 (Conocimiento🧠/Desempeño💪/Producto📦), 70% mínimo por categoría,
escala Sobresaliente/Notable/Aprobado/No aprobado. El formato debe ser parseable por el flujo
de evaluación automática de `sena/eval-semanal` (Claude compara la entrega contra
`3-proyecto/README.md` + `rubrica-evaluacion.md` y calcula nota + veredicto) — no cambiar la
estructura de encabezados sin coordinar con ese repo.

## ✅ Convenciones de Código Dart

- Null safety estricto: sin `dynamic` salvo caso justificado, tipos explícitos en API pública
- `const`/`final` siempre que se pueda, `var` solo cuando el tipo es evidente por inferencia
- Nombres de variables/funciones/clases/archivos en inglés; comentarios pedagógicos y
  documentación en español
- `dart format .` antes de dar por terminado cualquier archivo — 100 columnas (`.vscode/settings.json`)
- Verificar siempre con `dart analyze` (localmente o `docker compose run --rm dart dart analyze`)
  antes de dar ejemplos por finalizados
- Nada de imports de Flutter en ningún archivo de este repo — es Dart puro de principio a fin

## 📝 Commits

Conventional Commits, asunto en inglés, cuerpo `For:`/`Impact:` — ver
[`.github/prompts/commit-message.prompt.md`](prompts/commit-message.prompt.md) para el
detalle completo de tipos y scopes.

## ⚠️ Notas operativas

- `**/solution/` está en `.gitignore` por política anticopia — nunca lo elimines del
  `.gitignore` ni sugieras subirlo.
- Antes de generar contenido de una semana, lee el `README.md` de la semana anterior para
  mantener coherencia de progresión (qué conceptos ya se enseñaron, qué nombres de dominio de
  ejemplo se usaron).
- Al terminar el contenido real de una semana, elimina el `.gitkeep` de cada carpeta que ya
  tenga archivos — es solo un placeholder del scaffold, no debe quedar junto a contenido real.
