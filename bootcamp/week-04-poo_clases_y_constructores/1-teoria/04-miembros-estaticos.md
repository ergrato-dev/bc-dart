# Miembros Estáticos

## 🎯 Objetivos

Al finalizar este archivo, comprenderás:

- Campos y métodos **estáticos**: pertenecen a la clase, no a una instancia
- `static const`: constantes de clase compartidas
- Un caso de uso típico: contadores o fábricas a nivel de clase
- Cuándo un miembro debería ser estático vs de instancia

## 📋 Conceptos Clave

### 1. Campo estático — un solo valor compartido por la clase

```dart
class Book {
  Book(this.title);

  final String title;

  static int totalCreated = 0; // pertenece a la CLASE, no a cada libro
}

void main() {
  print(Book.totalCreated); // 0 — se accede con el nombre de la clase, no de una instancia

  final b1 = Book('Clean Code');
  final b2 = Book('1984');

  print(Book.totalCreated); // sigue en 0: nadie lo incrementó todavía
}
```

Un campo `static` existe **una sola vez**, sin importar cuántas instancias crees — se accede con
`NombreDeClase.campo`, nunca con `instancia.campo`.

> 💡 **Comparación con otros lenguajes**: equivale a `static` en Java/C# o a un atributo de clase
> en Python — el concepto es el mismo en casi todos los lenguajes orientados a objetos.

### 2. Incrementar un estático desde el constructor

```dart
class Book {
  Book(this.title) {
    Book.totalCreated++; // se ejecuta en el CUERPO del constructor, tras la inicialización
  }

  final String title;

  static int totalCreated = 0;
}

void main() {
  Book('Clean Code');
  Book('1984');

  print(Book.totalCreated); // 2
}
```

El cuerpo `{ ... }` del constructor se ejecuta después de asignar los campos de instancia (o
después de la lista de inicialización `:` si existe) — es el lugar correcto para efectos como
incrementar un contador estático.

### 3. Método estático — lógica de clase, sin necesitar una instancia

```dart
class Book {
  Book(this.title, this.availableCopies);

  final String title;
  final int availableCopies;

  static Book empty() => Book('Sin título', 0); // "fábrica" simple, sin factory keyword

  static bool isValidTitle(String title) => title.trim().isNotEmpty;
}

void main() {
  print(Book.isValidTitle(''));      // false
  print(Book.isValidTitle('Dune'));  // true

  final placeholder = Book.empty();
  print(placeholder.title); // Sin título
}
```

Un método estático no tiene acceso a `this` (no hay instancia) — solo puede usar sus propios
parámetros y otros miembros estáticos de la clase. Es el lugar natural para utilidades
relacionadas con la clase que no dependen de un objeto en particular.

### 4. `static const` — constantes compartidas de la clase

```dart
class Book {
  static const int maxLoanDays = 15; // regla de negocio fija, compartida por todos los libros
}

void main() {
  print(Book.maxLoanDays); // 15
}
```

`static const` combina ambos conceptos: un solo valor por clase (`static`), conocido en tiempo de
compilación y no reasignable (`const`) — ideal para reglas de negocio fijas que no varían por
instancia (límites, tarifas, valores por defecto documentados en el dominio).

### 5. Cuándo un miembro debería ser estático vs de instancia

- **Estático**: el dato/lógica pertenece a la **clase en general**, no a un objeto particular
  (un contador global, una constante de negocio, una utilidad de validación)
- **De instancia**: el dato/lógica depende del **estado de un objeto específico** (el título de
  ESTE libro, las copias disponibles de ESTE libro)

## ⚠️ Errores Comunes

- Intentar acceder a un miembro estático con `instancia.miembro` en vez de `Clase.miembro` — el
  analyzer lo marca como acceso incorrecto
- Usar `this` dentro de un método estático — no existe, porque no hay instancia asociada
- Convertir en estático un dato que en realidad varía por objeto (ej. `availableCopies`) — eso
  rompería el modelo: todos los libros compartirían el mismo valor

## 📚 Recursos Adicionales

- [dart.dev — Classes: Class variables and methods](https://dart.dev/language/classes#class-variables-and-methods)

## ✅ Checklist de Verificación

Antes de continuar a las prácticas, verifica que entiendes:

- [ ] Cómo declarar y acceder a un campo/método estático
- [ ] Por qué un método estático no tiene acceso a `this`
- [ ] Cuándo un dato debería ser estático vs pertenecer a cada instancia
