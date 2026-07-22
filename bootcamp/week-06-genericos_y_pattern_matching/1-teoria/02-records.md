# Records

## 🎯 Objetivos

Al finalizar este archivo, comprenderás:

- Qué es un `record` y en qué se diferencia de una clase
- Records posicionales vs records con campos nombrados
- Cómo desestructurar un record en una declaración de variable
- Por qué los records se comparan por valor (igualdad estructural)

## 📋 Conceptos Clave

### 1. Record posicional — agrupar valores sin declarar una clase

```dart
(String, int) parseEntry(String raw) {
  final parts = raw.split(':');
  return (parts[0], int.parse(parts[1]));
}

void main() {
  final entry = parseEntry('Clean Code:3');
  print(entry.$1); // Clean Code
  print(entry.$2); // 3
}
```

Un record es un **tipo de dato compuesto e inmutable**, sin necesidad de declarar una clase.
`(String, int)` es su tipo: una tupla ordenada. Se accede por posición con `.$1`, `.$2`, etc.
(1-indexado).

### 2. Destructuring — la forma idiomática de leer un record

```dart
void main() {
  final (title, copies) = parseEntry('Clean Code:3');
  print('$title tiene $copies copias'); // Clean Code tiene 3 copias
}
```

En vez de `.$1`/`.$2`, **desestructurar** en la propia declaración (`final (title, copies) =
...`) asigna cada posición a una variable con nombre — mucho más legible, sobre todo con más de
dos campos.

### 3. Records con campos nombrados

```dart
({String title, int copies}) parseEntryNamed(String raw) {
  final parts = raw.split(':');
  return (title: parts[0], copies: int.parse(parts[1]));
}

void main() {
  final entry = parseEntryNamed('Dune:5');
  print('${entry.title}: ${entry.copies}'); // Dune: 5
}
```

Con campos nombrados (`({String title, int copies})`) accedes por nombre (`entry.title`) en vez
de posición — ideal cuando el orden no es obvio o hay varios campos del mismo tipo.

### 4. Destructuring con el shorthand `:campo`

```dart
void main() {
  final (:title, :copies) = parseEntryNamed('Dune:5');
  print('$title: $copies'); // Dune: 5
}
```

`:campo` es un atajo: crea una variable local con el **mismo nombre** que el campo del record.
Equivale a escribir `(title: title, copies: copies) = ...` pero sin repetir el nombre.

### 5. Igualdad estructural — records se comparan por valor

```dart
void main() {
  const a = (1, 'x');
  const b = (1, 'x');
  print(a == b); // true — mismo contenido, aunque sean instancias distintas
  print(a.hashCode == b.hashCode); // true
}
```

A diferencia de una clase normal (que compara por **identidad** salvo que sobrescribas `==` y
`hashCode`), dos records con el mismo tipo y los mismos valores **siempre** son iguales — el
compilador genera esa comparación por ti.

### 6. Cuándo usar un record y cuándo una clase

- **Record**: valor de retorno múltiple, agrupación temporal de datos sin comportamiento propio,
  clave de un `Map` cuando necesitas igualdad por valor
- **Clase**: cuando el dato necesita comportamiento (métodos), herencia, mutabilidad controlada,
  o un nombre de tipo que documente la intención en la API pública

## ⚠️ Errores Comunes

- Pensar que un record es mutable como una clase con setters — sus campos quedan fijos al
  crearlo (aunque el valor referenciado, ej. una `List`, sí pueda mutar internamente)
- Desestructurar en el orden equivocado (`final (copies, title) = ...`) — un record posicional no
  valida nombres, solo posición y tipo
- Abusar de records posicionales de 4+ campos donde un record con nombres (o una clase) sería
  mucho más legible

## 📚 Recursos Adicionales

- [dart.dev — Records](https://dart.dev/language/records)

## ✅ Checklist de Verificación

Antes de continuar a las prácticas, verifica que entiendes:

- [ ] La diferencia entre un record posicional y uno con campos nombrados
- [ ] Cómo desestructurar un record en una declaración de variable
- [ ] Qué significa que los records tengan igualdad estructural
- [ ] Cuándo conviene un record y cuándo una clase
