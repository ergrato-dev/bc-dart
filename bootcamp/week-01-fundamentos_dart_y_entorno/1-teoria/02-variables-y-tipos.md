# Variables, Tipos y Modificadores

## 🎯 Objetivos

Al finalizar este archivo, comprenderás:

- La diferencia entre `var`, `final` y `const`, y cuándo usar cada uno
- Los tipos básicos de Dart y cuándo Dart infiere el tipo por ti
- Por qué evitar `dynamic` salvo que sea estrictamente necesario
- Interpolación de strings (`$variable` y `${expresión}`)

## 📋 Conceptos Clave

### 1. `var`, `final` y `const` — no son el tipo, son el modificador

```dart
var counter = 0;      // tipo inferido: int. Se puede reasignar.
counter = 1;           // ✅ válido

final city = 'Bogotá'; // tipo inferido: String. Se asigna UNA vez, en runtime.
// city = 'Medellín';   // ❌ Error: final no se puede reasignar

const pi = 3.1416;     // se asigna UNA vez, y su valor debe conocerse en
                        // tiempo de COMPILACIÓN — no puede depender de una
                        // llamada a función ni de I/O.
```

> 💡 **Diferencia con JavaScript**: `final` en Dart es como `const` en JS (no reasignable). El
> `const` de Dart es más estricto que ambos: además de no reasignarse, el valor debe ser
> conocido en tiempo de compilación (por eso no puedes hacer `const now = DateTime.now();`).

**Regla práctica**: prefiere `final` por defecto. Usa `const` cuando el valor es un literal fijo
del dominio (una tarifa, un límite, un texto constante). Usa `var` solo cuando de verdad
necesitas reasignar la variable más adelante.

### 2. Tipos básicos

```dart
int copies = 3;                  // enteros
double rating = 4.5;              // decimales
String title = 'Clean Code';      // texto
bool available = true;            // booleano
List<String> authors = ['Robert C. Martin'];  // lista tipada
```

Dart tiene **inferencia de tipos**: si escribes `var copies = 3;`, el analyzer sabe que
`copies` es `int` para siempre — no es `dynamic`, sigue siendo tipado fuerte, solo que no
escribiste el tipo explícitamente.

### 3. `dynamic` vs `Object` — por qué casi nunca usarás `dynamic`

```dart
dynamic anything = 'texto';
anything = 42;        // ✅ el analyzer NO se queja — dynamic desactiva el chequeo de tipos
anything.someMethod(); // ❌ esto compila pero puede explotar en runtime

Object somethingTyped = 'texto';
// somethingTyped.length; // ❌ el analyzer SÍ se queja: Object no tiene .length
if (somethingTyped is String) {
  print(somethingTyped.length); // ✅ tras el chequeo `is`, Dart "promueve" el tipo
}
```

`dynamic` renuncia a la verificación de tipos del compilador — úsalo solo cuando de verdad
trabajas con datos de forma completamente genérica (ej. JSON crudo antes de validarlo). Para
"no sé el tipo exacto pero quiero seguir siendo type-safe", usa `Object` (o `Object?`) y
verifica con `is`.

### 4. Interpolación de strings

```dart
final name = 'Dash';
final age = 12;

print('Hola, $name');                    // variable simple: $variable
print('El año que viene tendrás ${age + 1}'); // expresión: ${...}
print('Nombre en mayúsculas: ${name.toUpperCase()}');
```

Evita concatenar con `+` cuando puedes interpolar — es más legible y es el estilo idiomático de
Dart (`Effective Dart` lo recomienda explícitamente).

### 5. Ejemplo aplicado al dominio del curso (Biblioteca)

```dart
void main() {
  final title = 'Clean Code';
  final author = 'Robert C. Martin';
  const maxLoanDays = 15; // regla de negocio fija de la biblioteca
  var copiesAvailable = 3;

  copiesAvailable--; // se prestó una copia

  print('$title — $author');
  print('Copias disponibles: $copiesAvailable');
  print('Días máximos de préstamo: $maxLoanDays');
}
```

## ⚠️ Errores Comunes

- Usar `var` para todo por costumbre de otros lenguajes — en Dart, `final` debería ser tu
  primera opción, no `var`
- Intentar `const` sobre algo que solo se conoce en runtime (ej. `const now = DateTime.now();`)
  — el analyzer marcará error de inmediato
- Abusar de `dynamic` "porque no sé el tipo" cuando `Object` + `is` resuelve el mismo problema
  sin perder seguridad de tipos

## 📚 Recursos Adicionales

- [dart.dev — Variables](https://dart.dev/language/variables)
- [dart.dev — Built-in types](https://dart.dev/language/built-in-types)
- [Effective Dart — Usage](https://dart.dev/effective-dart/usage)

## ✅ Checklist de Verificación

Antes de continuar a las prácticas, verifica que entiendes:

- [ ] Cuándo usar `var` vs `final` vs `const`
- [ ] Por qué `dynamic` desactiva la seguridad de tipos y cuándo evitarlo
- [ ] Cómo interpolar variables y expresiones en un string
