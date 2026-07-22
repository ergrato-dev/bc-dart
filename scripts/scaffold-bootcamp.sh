#!/usr/bin/env bash
# ============================================================
# scaffold-bootcamp.sh
# Genera la estructura completa de las 10 semanas del bootcamp.
# Solo crea archivos si no existen (idempotente).
# Uso: bash scripts/scaffold-bootcamp.sh
# ============================================================
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
BASE="$REPO_ROOT/bootcamp"

echo ""
echo "🚀 Scaffold bc-dart Bootcamp — 10 semanas"
echo "   Destino: $BASE"
echo ""

# ─── Datos de semanas (índice 1..10, índice 0 vacío) ────────────────────────
NUMS=(   ""   "01" "02" "03" "04" "05" "06" "07" "08" "09" "10" )

SLUGS=(  ""
  "fundamentos_dart_y_entorno"
  "control_de_flujo_y_funciones"
  "colecciones_e_iterables"
  "poo_clases_y_constructores"
  "herencia_mixins_y_extensiones"
  "genericos_y_pattern_matching"
  "manejo_de_errores_y_excepciones"
  "asincronia_futures_streams_isolates"
  "paquetes_testing_y_tooling"
  "proyecto_final_arquitectura_y_puente_a_flutter"
)

TITLES=( ""
  "Fundamentos de Dart y Entorno"
  "Control de Flujo y Funciones"
  "Colecciones e Iterables"
  "POO: Clases y Constructores"
  "Herencia, Mixins y Extensiones"
  "Genéricos y Pattern Matching"
  "Manejo de Errores y Excepciones"
  "Asincronía: Futures, Streams e Isolates"
  "Paquetes, Testing y Tooling"
  "Proyecto Final: Arquitectura y Puente a Flutter"
)

PHASES=( ""
  "Fase 1 — Fundamentos del Lenguaje"
  "Fase 1 — Fundamentos del Lenguaje"
  "Fase 2 — POO y Tipos Avanzados"
  "Fase 2 — POO y Tipos Avanzados"
  "Fase 2 — POO y Tipos Avanzados"
  "Fase 2 — POO y Tipos Avanzados"
  "Fase 3 — Manejo de Errores y Asincronía"
  "Fase 3 — Manejo de Errores y Asincronía"
  "Fase 4 — Herramientas y Proyecto Final"
  "Fase 4 — Herramientas y Proyecto Final"
)

TOTAL=10

# ─── Loop principal ──────────────────────────────────────────────────────────
for I in $(seq 1 $TOTAL); do
  NUM="${NUMS[$I]}"
  SLUG="${SLUGS[$I]}"
  TITLE="${TITLES[$I]}"
  PHASE="${PHASES[$I]}"
  IS_FINAL_WEEK=$([[ $I -eq $TOTAL ]] && echo 1 || echo 0)

  WEEK_DIR="$BASE/week-${NUM}-${SLUG}"
  echo "  → week-${NUM}: $TITLE"

  # 1. Directorios (la semana final solo lleva 3-proyecto y 5-glosario)
  if [[ $IS_FINAL_WEEK -eq 1 ]]; then
    mkdir -p \
      "$WEEK_DIR/3-proyecto/starter/lib" \
      "$WEEK_DIR/5-glosario"
  else
    mkdir -p \
      "$WEEK_DIR/0-assets" \
      "$WEEK_DIR/1-teoria" \
      "$WEEK_DIR/2-practicas" \
      "$WEEK_DIR/3-proyecto/starter/lib" \
      "$WEEK_DIR/4-recursos/ebooks-free" \
      "$WEEK_DIR/4-recursos/videografia" \
      "$WEEK_DIR/4-recursos/webgrafia" \
      "$WEEK_DIR/5-glosario"
  fi

  # 2. .gitkeep para directorios sin contenido aún
  if [[ $IS_FINAL_WEEK -eq 1 ]]; then
    GITKEEP_DIRS=("$WEEK_DIR/3-proyecto/starter/lib")
  else
    GITKEEP_DIRS=(
      "$WEEK_DIR/0-assets"
      "$WEEK_DIR/1-teoria"
      "$WEEK_DIR/2-practicas"
      "$WEEK_DIR/3-proyecto/starter/lib"
      "$WEEK_DIR/4-recursos/ebooks-free"
      "$WEEK_DIR/4-recursos/videografia"
      "$WEEK_DIR/4-recursos/webgrafia"
    )
  fi
  for D in "${GITKEEP_DIRS[@]}"; do
    touch "$D/.gitkeep"
  done

  # 3. Dockerfile / docker-compose.yml del proyecto (plantilla raíz)
  [[ -f "$WEEK_DIR/3-proyecto/starter/Dockerfile" ]] || cp "$REPO_ROOT/Dockerfile" "$WEEK_DIR/3-proyecto/starter/Dockerfile"
  [[ -f "$WEEK_DIR/3-proyecto/starter/docker-compose.yml" ]] || cp "$REPO_ROOT/docker-compose.yml" "$WEEK_DIR/3-proyecto/starter/docker-compose.yml"

  # 4. Navigation links
  if [[ $I -gt 1 ]]; then
    PREV_NUM="${NUMS[$((I-1))]}"
    PREV_SLUG="${SLUGS[$((I-1))]}"
    PREV_TITLE="${TITLES[$((I-1))]}"
    PREV_LINK="[← Semana ${PREV_NUM} — ${PREV_TITLE}](../week-${PREV_NUM}-${PREV_SLUG}/README.md)"
  else
    PREV_LINK="← (primera semana)"
  fi
  if [[ $I -lt $TOTAL ]]; then
    NEXT_NUM="${NUMS[$((I+1))]}"
    NEXT_SLUG="${SLUGS[$((I+1))]}"
    NEXT_TITLE="${TITLES[$((I+1))]}"
    NEXT_LINK="[Semana ${NEXT_NUM} — ${NEXT_TITLE} →](../week-${NEXT_NUM}-${NEXT_SLUG}/README.md)"
  else
    NEXT_LINK="(última semana) →"
  fi

  # 5. README.md principal
  if [[ $IS_FINAL_WEEK -eq 1 ]]; then
    [[ -f "$WEEK_DIR/README.md" ]] || cat > "$WEEK_DIR/README.md" << ENDOFREADME
# Semana ${NUM} — ${TITLE}

> **${PHASE}** | Semana ${I} de ${TOTAL} | ⏱️ 6 horas

## 🎯 Objetivos de aprendizaje

> 🚧 **Contenido en desarrollo.** Usa el prompt \`nueva-semana\` para generar el contenido completo.

Esta semana no introduce teoría ni ejercicios guiados nuevos: el estudiante consolida un
paquete Dart puro de su dominio único, directamente reutilizable como capa de negocio en
\`bc-flutter\`.

## 📚 Requisitos previos

- Semanas 1-9 completadas

## 🗂️ Estructura de la semana

| Carpeta       | Contenido            | Tiempo |
| -------------- | --------------------- | ------ |
| \`3-proyecto/\` | Consolidación final    | 6h     |

## ⏱️ Distribución del tiempo (6 horas)

| Actividad | Tiempo | Descripción                       |
| --------- | ------ | ----------------------------------- |
| Proyecto  | 6h     | Consolidación, pulido y defensa      |

## 📌 Entregables

- [ ] Paquete Dart puro con capas \`domain/\`, \`data/\` y \`state/\`
- [ ] \`dart analyze\` y \`dart test\` sin errores (verificable con Docker)
- [ ] Documento de decisiones de arquitectura
- [ ] Demo en vivo + defensa oral

## 🔗 Navegación

${PREV_LINK} | ${NEXT_LINK}
ENDOFREADME
  else
    [[ -f "$WEEK_DIR/README.md" ]] || cat > "$WEEK_DIR/README.md" << ENDOFREADME
# Semana ${NUM} — ${TITLE}

> **${PHASE}** | Semana ${I} de ${TOTAL} | ⏱️ 6 horas

## 🎯 Objetivos de aprendizaje

> 🚧 **Contenido en desarrollo.** Usa el prompt \`nueva-semana\` para generar el contenido completo.

Al finalizar esta semana, el estudiante será capaz de:

- [ ] Objetivo 1
- [ ] Objetivo 2
- [ ] Objetivo 3

## 📚 Requisitos previos

- Semana anterior completada
- Dart SDK local (\`dart --version\` funcionando) y/o Docker

## 🗂️ Estructura de la semana

| Carpeta           | Contenido                    | Tiempo |
| ----------------- | ---------------------------- | ------ |
| \`1-teoria/\`       | Material teórico             | 2h     |
| \`2-practicas/\`    | Ejercicios guiados           | 2h     |
| \`3-proyecto/\`     | Proyecto integrador          | 2h     |

## 📝 Contenidos

### Teoría

> 🚧 Por generar — usa el prompt \`nueva-teoria\`

### Prácticas

> 🚧 Por generar — usa el prompt \`nuevo-ejercicio\`

### Proyecto

> 🚧 Por generar — usa el prompt \`nuevo-proyecto\`

## ⏱️ Distribución del tiempo (6 horas)

| Actividad  | Tiempo | Descripción                |
| ---------- | ------ | --------------------------- |
| Teoría     | 2h     | Lectura y ejemplos          |
| Prácticas  | 2h     | Ejercicios guiados          |
| Proyecto   | 2h     | Implementación propia       |

## 📌 Entregables

- [ ] Ejercicios completados (prácticas descomentadas y funcionando)
- [ ] Proyecto adaptado al dominio asignado
- [ ] \`dart analyze\` sin errores (verificable con Docker)
- [ ] \`dart test\` pasando

## 🔗 Navegación

${PREV_LINK} | ${NEXT_LINK}
ENDOFREADME
  fi

  # 6. rubrica-evaluacion.md
  [[ -f "$WEEK_DIR/rubrica-evaluacion.md" ]] || cat > "$WEEK_DIR/rubrica-evaluacion.md" << ENDOFRUBRICA
# Rúbrica de Evaluación — Semana ${NUM}

> 🚧 **Contenido en desarrollo.** Usa el prompt \`nueva-semana\` para generar la rúbrica completa.

## Distribución de Puntaje

| Tipo de Evidencia    | Peso | Instrumento             |
| -------------------- | ---- | ------------------------ |
| Conocimiento 🧠      | 30%  | Cuestionario teórico     |
| Desempeño 💪         | 40%  | Ejercicios en clase      |
| Producto 📦          | 30%  | Proyecto entregable      |

**Mínimo aprobatorio**: 70% en cada tipo de evidencia.

## 🧠 Conocimiento (30%)

> Criterios específicos de *${TITLE}* — por definir.

## 💪 Desempeño (40%)

> Criterios de ejercicios prácticos — por definir.

## 📦 Producto (30%)

> Criterios del proyecto adaptado al dominio — por definir.

### Criterios transversales

- ✅ Implementación coherente con el dominio asignado
- ✅ Sin copia de implementaciones de otros aprendices
- ✅ \`dart analyze\` sin errores
- ✅ \`dart test\` pasando
ENDOFRUBRICA

  # 7. 3-proyecto/README.md
  [[ -f "$WEEK_DIR/3-proyecto/README.md" ]] || cat > "$WEEK_DIR/3-proyecto/README.md" << ENDOFPROYECTO
# Proyecto Semana ${NUM} — ${TITLE}

> 🚧 **Contenido en desarrollo.** Usa el prompt \`nuevo-proyecto\` para generar el proyecto completo.

## 🎯 Objetivo

Implementar los conceptos de **${TITLE}** aplicados a tu dominio asignado.

## 📋 Tu Dominio Asignado

**Dominio**: [El instructor te asignará tu dominio único al inicio del bootcamp, vía \`sena/eval-semanal\`]

> 📌 Recuerda: tu implementación debe ser coherente con tu dominio.
> No copies implementaciones de otros aprendices.

## 🚀 Cómo ejecutar

\`\`\`bash
cd starter
dart pub get
dart run
\`\`\`

## 🐳 Validar con Docker

\`\`\`bash
docker compose run --rm dart dart analyze
docker compose run --rm dart dart test
\`\`\`

## 🛠️ Entregables

1. Programa funcional ejecutable por consola
2. Código adaptado a tu dominio
3. README actualizado con descripción de tu implementación

## 📊 Criterios de Evaluación

Ver [../../rubrica-evaluacion.md](../../rubrica-evaluacion.md)
ENDOFPROYECTO

  # 8. 5-glosario/README.md
  [[ -f "$WEEK_DIR/5-glosario/README.md" ]] || cat > "$WEEK_DIR/5-glosario/README.md" << ENDOFGLOSARIO
# Glosario — Semana ${NUM}: ${TITLE}

> 🚧 **Contenido en desarrollo.** Usa el prompt \`nueva-semana\` para generar el glosario.

Términos técnicos clave introducidos esta semana, ordenados alfabéticamente.

---

> 📚 Glosario global del bootcamp: [docs/plan-estudios.md](../../docs/plan-estudios.md)
ENDOFGLOSARIO

done

echo ""
echo "✅ Scaffold completo — 10 semanas generadas en bootcamp/"
echo ""
ls "$BASE"
