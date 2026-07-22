---
description: "Crea un ejercicio guiado completo con patrón uncomment: README con pasos explicados y starter con código comentado para descomentar. Usar cuando se necesite agregar un ejercicio a 2-practicas/."
name: "Nuevo ejercicio guiado"
argument-hint: "Número de ejercicio, semana (ej: week-06), concepto que enseña, pasos a cubrir y paquetes de Dart que usa"
mode: "agent"
---

# Nuevo ejercicio guiado — Bootcamp Dart

Crea un ejercicio de práctica guiada siguiendo el **patrón uncomment** del bootcamp.
Los ejercicios son tutoriales, NO tareas con TODOs.

## Patrón obligatorio: uncomment

El estudiante aprende **descomentando** código ya escrito:

**✅ CORRECTO — código comentado para descomentar:**

```dart
// ============================================
// PASO 1: Título del paso
// ============================================
print('--- Paso 1: Título ---');

// Explicación del concepto en español.
// Descomenta las siguientes líneas:
// final numbers = [1, 2, 3, 4, 5];
// final evens = numbers.where((n) => n.isEven).toList();
// print('Pares: $evens');
```

**❌ INCORRECTO — no usar TODOs en ejercicios:**

```dart
// TODO: Filtrar los números pares
final evens = [];
```

> ⚠️ Los ejercicios NO tienen carpeta `solution/`. El estudiante aprende
> descomentando y verificando la salida por consola con `dart run`.

## Estructura que debes crear

```
2-practicas/ejercicio-XX-nombre/
├── README.md       ← instrucciones paso a paso con ejemplos
└── starter/
    ├── bin/main.dart  ← código comentado por pasos
    └── pubspec.yaml   ← dependencias exactas con dart pub
```

## Convenciones obligatorias

- **Idioma del README**: español (instrucciones, explicaciones)
- **Idioma del código**: inglés (variables, funciones, tipos, nombres)
- **Comentarios educativos**: español, explican conceptos para devs nuevos en Dart
- **Dart**: null safety estricto, sin `dynamic`, `const`/`final` siempre que se pueda
- **dart pub** exclusivamente, versiones exactas en el `pubspec.yaml` de referencia
- **Pasos numerados**: de simple a complejo, progresión didáctica clara
- **print** al inicio de cada paso para rastrear ejecución
- **Comparaciones con otros lenguajes**: señalar cuando aplique (ej. TypeScript, Java, Python)

## README.md del ejercicio

```markdown
# Ejercicio XX — [Nombre del concepto]

> Descripción breve: qué aprenderá el estudiante.

## 🎯 Objetivos

- Objetivo 1
- Objetivo 2

## 📋 Requisitos

- Dart SDK local o Docker configurado
- Semana XX completada

## 🚀 Cómo ejecutar

\`\`\`bash
cd starter
dart pub get
dart run
\`\`\`

---

## Paso 1: [Título]

Explicación del concepto en español.

\`\`\`dart
// Ejemplo explicativo completo (no el código del ejercicio)
\`\`\`

**Abre `starter/bin/main.dart`** y descomenta la sección `PASO 1`.

✅ **Verifica**: [qué debe imprimir la consola cuando funciona]

---

## Paso 2: [Título]

...

## ✅ Resultado final

[Descripción de qué debe imprimir el programa al final del ejercicio]
```

## main.dart del starter

Estructura esperada:

```dart
/// Ejercicio XX — [Nombre]
/// Qué: ...
/// Para qué: ...
/// Impacto: ...

void main() {
  print('=== Ejercicio XX: [Nombre] ===');

  // ============================================
  // PASO 1: [Título]
  // Descomenta las siguientes líneas:
  // ============================================
  // final value = 42;
  // print('Valor: $value');
}
```

## pubspec.yaml del starter

Siempre usar versiones exactas para paquetes core del curso:

```yaml
name: ejercicio_xx_nombre
publish_to: 'none'

environment:
  sdk: '>=3.5.0 <4.0.0'

dev_dependencies:
  test: 1.25.0
  lints: 5.0.0
```

## Instrucciones para el agente

1. Crear `2-practicas/ejercicio-XX-nombre/README.md` con pasos numerados y ejemplos explicativos
2. Crear `starter/bin/main.dart` con código organizado por pasos, todo comentado listo para descomentar
3. Crear `starter/pubspec.yaml` con versiones exactas de los paquetes core usados en la semana
4. Verificar que el código descomentado sea Dart válido (null safety, sin `dynamic`)
5. Incluir `print` al inicio de cada paso para que el estudiante pueda verificar ejecución
6. Señalar comparaciones con otros lenguajes en los comentarios cuando sea relevante
7. NO crear carpeta `solution/`

## Datos del ejercicio a crear

$input
