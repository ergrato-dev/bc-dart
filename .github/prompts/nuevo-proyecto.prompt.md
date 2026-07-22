---
description: "Crea un proyecto semanal integrador completo: README con instrucciones genéricas adaptables a dominios, starter con TODOs, Docker y estructura Dart. Usar cuando se necesite el proyecto de 3-proyecto/ de una semana."
name: "Nuevo proyecto semanal"
argument-hint: "Semana (ej: week-07), concepto principal que integra, funciones/clases requeridas, features obligatorias y paquetes del stack que debe usar"
mode: "agent"
---

# Nuevo proyecto semanal — Bootcamp Dart

Crea el proyecto integrador de la semana en `3-proyecto/`, siguiendo la
**Política de Dominios Únicos** del bootcamp. El proyecto usa TODOs genéricos
que cada aprendiz adapta a su dominio asignado.

## Diferencia clave: ejercicios vs proyectos

| Ejercicios (2-practicas/)         | Proyectos (3-proyecto/)              |
| --------------------------------- | ------------------------------------ |
| Código comentado para descomentar | TODOs para implementar desde cero    |
| Sin `solution/`                   | Con `solution/` (oculta, .gitignore) |
| Instructor guía paso a paso       | Estudiante implementa autónomamente  |
| Concepto único y acotado          | Integración de múltiples conceptos   |

## Política de Dominios Únicos

Las instrucciones del proyecto deben ser **genéricas y adaptables** a cualquier dominio. Los
dominios NO se definen aquí — vienen del catálogo compartido `bc-sql/scripts/assign_domains.py`
vía `sena/eval-semanal`. Incluir siempre ejemplos de adaptación usando el dominio canónico
(Biblioteca) más 2-3 ejemplos adicionales tomados del catálogo:

- 📖 Biblioteca (canónico) → libros, autores, préstamos
- 💊 Farmacia → medicamentos, ventas, inventario
- 🏋️ Gimnasio → miembros, rutinas, asistencias
- 🍽️ Restaurante → platillos, mesas, pedidos

## Estructura que debes crear

```
3-proyecto/
├── README.md          ← instrucciones genéricas + ejemplos por dominio
└── starter/
    ├── pubspec.yaml
    ├── Dockerfile
    ├── docker-compose.yml
    ├── .env.example        (solo si el proyecto lo requiere)
    ├── bin/
    │   └── main.dart       ← punto de entrada con TODOs
    └── lib/
        ├── models/
        │   └── item.dart   ← clase con TODOs para el dominio
        ├── repository/
        │   └── item_repository.dart  ← acceso a datos con TODOs
        └── services/
            └── item_service.dart     ← lógica de negocio con TODOs
```

> ⚠️ NO crear la carpeta `solution/` — está en `.gitignore`.

## Convenciones obligatorias

- **Código en inglés**: variables, funciones, tipos, nombres de archivo
- **Documentación en español**: README, comentarios explicativos
- **Dart null safety estricto**: sin `dynamic`, tipos explícitos en API pública
- **Sin Flutter**: ningún import de `package:flutter/...`
- **dart pub** exclusivamente, versiones exactas para paquetes core
- **TODOs genéricos**: usar `Item`/`Entity` como nombres genéricos
- **Comentarios NOTA PARA EL APRENDIZ**: guiar la adaptación al dominio
- **Docker**: incluir `Dockerfile`/`docker-compose.yml` (imagen `dart:stable`) para `analyze`/`test`/`run`

## README.md del proyecto

```markdown
# Proyecto Semana XX — [Título Genérico]

> Descripción del proyecto: qué construirá el estudiante y qué conceptos integra.

## 🎯 Objetivo

Implementar [concepto] aplicado a tu dominio asignado, integrando
[lista de conceptos del stack de la semana].

## 📋 Tu Dominio Asignado

**Dominio**: [El instructor te asignará tu dominio único al inicio del bootcamp, vía `sena/eval-semanal`]

> 📌 Recuerda: tu implementación debe ser coherente con tu dominio.
> No copies implementaciones de otros aprendices.

## ✅ Requisitos Funcionales (Adaptables a tu dominio)

1. Req 1
2. Req 2
3. Req 3

## 💡 Ejemplos de Adaptación por Dominio

| Dominio         | Entidad principal | Atributos ejemplo             |
| ---------------- | ------------------ | ------------------------------ |
| 📖 Biblioteca (ej.)| Book               | title, author, isbn, available |
| 💊 Farmacia       | Medication          | name, price, stock, category   |
| 🏋️ Gimnasio       | Member               | name, plan, startDate, active  |

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

1. Programa funcional ejecutable por consola (`dart run`)
2. Código adaptado a tu dominio (modelos, repositorio, servicio)
3. README actualizado con descripción de tu implementación

## 📊 Criterios de Evaluación

Ver [../../rubrica-evaluacion.md](../rubrica-evaluacion.md)
```

## Clase genérica con TODOs (item.dart)

```dart
// ============================================
// MODEL: Item
// Entidad principal del dominio
// ============================================

// NOTA PARA EL APRENDIZ:
// Adapta esta clase a tu dominio asignado.
// Ejemplos de nombres para tu entidad principal:
// - Biblioteca: Book, books, findBooks
// - Farmacia: Medication, medications, findMedications
// - Gimnasio: Member, members, findMembers

class Item {
  const Item({required this.id, required this.name});

  final String id;
  final String name;

  // TODO: Agrega los atributos propios de tu dominio (mínimo 2 adicionales)

  // TODO: Implementa un factory constructor fromJson si tu proyecto persiste en archivo
}
```

## Instrucciones para el agente

1. Crear `3-proyecto/README.md` con instrucciones genéricas y tabla de adaptación por dominio
2. Crear `starter/pubspec.yaml` con dependencias exactas del stack de la semana (dart pub, sin `^` en paquetes core)
3. Crear `starter/Dockerfile` y `starter/docker-compose.yml` (basados en la plantilla raíz del repo)
4. Crear `starter/.env.example` solo si el proyecto requiere variables de entorno
5. Crear `starter/bin/main.dart` con TODOs y comentarios de adaptación
6. Crear `starter/lib/models/item.dart` con clase genérica + TODO para atributos del dominio
7. Crear `starter/lib/repository/` y `starter/lib/services/` con funciones vacías + TODOs
8. NO crear `solution/`

## Datos del proyecto a crear

$input
