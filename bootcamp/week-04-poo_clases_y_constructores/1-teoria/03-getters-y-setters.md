# Getters y Setters

## 🎯 Objetivos

Al finalizar este archivo, comprenderás:

- Campos **privados** (prefijo `_`) y por qué encapsular estado
- **Getters**: propiedades computadas, sin paréntesis al leerlas
- **Setters**: validar una asignación antes de aceptarla
- Cuándo un getter/setter aporta frente a un campo público simple

## 📋 Conceptos Clave

### 1. Campos privados — encapsular el estado interno

```dart
class Book {
  Book(this.title, int initialCopies) : _availableCopies = initialCopies;

  final String title;
  int _availableCopies; // el guion bajo lo hace privado A NIVEL DE ARCHIVO (library-private)
}
```

Un identificador que empieza con `_` es privado — **no** a la clase (como `private` en Java),
sino al **archivo** (`library`) donde se declara. Otro archivo del mismo proyecto no puede
acceder a `_availableCopies` directamente; debe pasar por un getter/setter público si lo expones.

> 💡 **Comparación con otros lenguajes**: en Java/C#/TypeScript la privacidad es por clase; en
> Dart es por archivo. Dos clases en el **mismo archivo** sí pueden verse sus miembros privados
> mutuamente — un detalle que sorprende a quien viene de otros lenguajes.

### 2. Getter — propiedad computada, se lee sin `()`

```dart
class Book {
  Book(this.title, this._availableCopies);

  final String title;
  int _availableCopies;

  int get availableCopies => _availableCopies; // getter: expone el campo privado, solo lectura
  bool get isAvailable => _availableCopies > 0; // getter: valor CALCULADO, no almacenado
}

void main() {
  final book = Book('Clean Code', 3);
  print(book.availableCopies); // 3 — se lee como propiedad, SIN paréntesis
  print(book.isAvailable);      // true
}
```

Un getter se **recalcula en cada acceso** — `isAvailable` no guarda un `bool` en memoria, lo
deriva de `_availableCopies` cada vez que se lee. Se accede exactamente como un campo (`objeto.
propiedad`), sin `()`, aunque por dentro sea una función.

### 3. Setter — validar antes de asignar

```dart
class Book {
  Book(this.title, this._availableCopies);

  final String title;
  int _availableCopies;

  int get availableCopies => _availableCopies;

  set availableCopies(int value) {
    if (value < 0) {
      throw ArgumentError('availableCopies no puede ser negativo: $value');
    }
    _availableCopies = value;
  }
}

void main() {
  final book = Book('Clean Code', 3);
  book.availableCopies = 5;   // pasa por el setter, se valida
  print(book.availableCopies); // 5

  // book.availableCopies = -1; // ❌ lanza ArgumentError
}
```

El setter se invoca con sintaxis de **asignación** (`objeto.propiedad = valor`), no de llamada a
función — pero por dentro puede validar, transformar o rechazar el valor antes de guardarlo en el
campo privado real.

### 4. Cuándo un getter/setter aporta valor frente a un campo público simple

- **Campo público simple** (`final String title`): cuando el dato no necesita validación ni
  cálculo — asignar directo es más simple y no hay razón para ocultarlo.
- **Getter/setter**: cuando necesitas **validar** una asignación (evitar estados inválidos como
  copias negativas), **calcular** un valor derivado (`isAvailable`), o dejar espacio para cambiar
  la implementación interna sin romper el código que ya usa `objeto.propiedad`.

## ⚠️ Errores Comunes

- Escribir un getter/setter para **cada** campo sin necesidad ("por si acaso") — si no hay
  validación ni cálculo, un campo público es más simple y igual de correcto
- Llamar a un getter con paréntesis (`book.isAvailable()`) — un getter se lee como propiedad, sin
  paréntesis; con paréntesis intentarías llamarlo como si fuera un método
- Olvidar que un getter puede tener efectos costosos si recalcula algo pesado en cada lectura —
  para valores caros de calcular, considera guardarlos en un campo y recalcular solo cuando cambie
  la fuente

## 📚 Recursos Adicionales

- [dart.dev — Classes: Getters and setters](https://dart.dev/language/methods#getters-and-setters)
- [dart.dev — Libraries: Privacy](https://dart.dev/language/libraries#privacy)

## ✅ Checklist de Verificación

Antes de continuar a las prácticas, verifica que entiendes:

- [ ] Que un identificador con `_` es privado al **archivo**, no a la clase
- [ ] Cómo se lee un getter (sin paréntesis) y cómo se usa un setter (como asignación)
- [ ] Cuándo un getter/setter aporta valor frente a dejar el campo público
