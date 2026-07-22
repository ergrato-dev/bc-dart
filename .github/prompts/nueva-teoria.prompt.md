---
description: "Crea un archivo de teoría completo para 1-teoria/ siguiendo la estructura estándar del bootcamp: ~150 líneas, en español, con ejemplos de código en inglés y referencias a docs oficiales."
name: "Nuevo archivo de teoría"
argument-hint: "Semana (ej: week-06), nombre del tema (ej: genericos-y-records), conceptos clave a cubrir y nivel de dificultad relativo a la semana anterior"
mode: "agent"
---

# Nuevo archivo de teoría — Bootcamp Dart

Crea un archivo de teoría para `1-teoria/` siguiendo los estándares del bootcamp.

## Reglas de extensión

- **Objetivo**: ~150 líneas por archivo
- **Máximo**: 200 líneas — si se supera, dividir en archivos temáticos
- **Mínimo**: 80 líneas para que el contenido sea completo
- Dividir por sub-temas: `01-introduccion.md`, `02-genericos.md`, `03-avanzado.md`

## Convenciones obligatorias

- **Idioma**: español (explicaciones, títulos, comentarios pedagógicos)
- **Código**: inglés (variables, funciones, tipos, clases)
- **Comentarios de código**: español cuando explican conceptos de aprendizaje
- **Sin Flutter**: nunca importar `package:flutter/...` — es Dart puro
- **Sin ASCII art**: usar SVG para diagramas (referenciar desde `../0-assets/`)
- **Fuentes oficiales**: enlazar siempre a la documentación de dart.dev

## Estructura requerida del archivo

```markdown
# [Título del Tema]

## 🎯 Objetivos

Al finalizar este archivo, comprenderás:

- Concepto 1
- Concepto 2
- Concepto 3

## 📋 Conceptos Clave

### 1. [Primer concepto]

Explicación en español...

> 💡 **Comparación con otros lenguajes**: [Si aplica, ej. diferencia con TypeScript/Java]

\`\`\`dart
// Explicación del concepto en comentario
// Código con nombres en inglés
class ExampleModel {
  const ExampleModel({required this.name});

  final String name;
}
\`\`\`

### 2. [Segundo concepto]

...

### 3. Ejemplos Prácticos

Caso de uso aplicado al dominio canónico del curso (Biblioteca):

\`\`\`dart
// Ejemplo del mundo real
\`\`\`

### 4. Casos de Uso Reales

Cuándo usar [concepto] en un programa Dart real...

## ⚠️ Errores Comunes

- Error 1: [descripción + cómo evitarlo]
- Error 2: ...

## 📚 Recursos Adicionales

- [Documentación oficial](https://dart.dev/...)

## ✅ Checklist de Verificación

Antes de continuar a las prácticas, verifica que entiendes:

- [ ] Concepto 1
- [ ] Concepto 2
- [ ] Concepto 3
```

## Estilo de los ejemplos de código

Los ejemplos deben ser **educativos**, no solo descriptivos:

```dart
// ✅ CORRECTO — comenta para enseñar
class Book {
  const Book({required this.title, required this.available});

  final String title;
  final bool available;

  // Los getters computados no almacenan estado, se recalculan en cada acceso
  String get status => available ? 'Disponible' : 'Prestado';
}

void main() {
  final book = Book(title: 'Clean Code', available: true);
  // Interpolación de string: $variable o ${expresión}
  print('${book.title}: ${book.status}');
}
```

```dart
// ❌ INCORRECTO — sin comentarios educativos
class Book {
  Book(this.title, this.available);
  var title;
  var available;
}
```

## Cómo referenciar assets SVG

Si el tema necesita un diagrama, referenciar el SVG de `0-assets/`:

```markdown
![Diagrama de la jerarquía de tipos sellados](../0-assets/01-sealed-classes-flow.svg)
```

Si el SVG no existe, indicar que debe crearse con el prompt `svg-diagrama`.

## Convenciones de Dart en teoría

```dart
// clases inmutables para datos (const constructor, campos final)
class LoanRecord {
  const LoanRecord({required this.bookId, required this.dueDate});

  final String bookId;
  final DateTime dueDate;
}

// null safety explícito
Book? findBookById(String id) => null; // aún no implementado

// genéricos con bound
class Repository<T extends Object> {
  final List<T> _items = [];

  void add(T item) => _items.add(item);
}
```

## Instrucciones para el agente

1. Crear el archivo en `bootcamp/week-XX/1-teoria/nombre-tema.md`
2. Respetar el límite de ~150 líneas — dividir en múltiples archivos si el tema lo requiere
3. Incluir obligatoriamente: Objetivos, Conceptos Clave, Ejemplos Prácticos, Errores Comunes, Recursos, Checklist
4. Todos los ejemplos de código en Dart con null safety y tipos explícitos, sin imports de Flutter
5. Usar el dominio canónico (Biblioteca) en los ejemplos aplicados, nunca un dominio asignable
6. Referenciar documentación oficial de dart.dev y/o el paquete usado
7. Si el tema requiere diagrama, indicar nombre del SVG a generar con el prompt `svg-diagrama`

## Datos del archivo de teoría a crear

$input
