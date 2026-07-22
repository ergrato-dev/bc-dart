# Maps

## 🎯 Objetivos

Al finalizar este archivo, comprenderás:

- Cómo declarar y acceder a un `Map<K, V>`
- Cómo verificar la existencia de una clave sin lanzar excepciones
- Cómo recorrer `keys`, `values` y `entries`
- Cuándo un `Map` es la estructura correcta frente a una `List`

## 📋 Conceptos Clave

### 1. Declarar y acceder a un `Map`

```dart
final book = <String, String>{
  'title': 'Clean Code',
  'author': 'Robert C. Martin',
};

print(book['title']);   // Clean Code
print(book['isbn']);    // null — la clave no existe, NO lanza excepción
```

Acceder con `[]` a una clave inexistente devuelve `null` (por eso el tipo de retorno de `[]` es
siempre `V?`, nunca `V`), en vez de lanzar una excepción como en otros lenguajes.

### 2. Verificar existencia y modificar

```dart
final book = <String, String>{'title': 'Clean Code'};

print(book.containsKey('author')); // false

book['author'] = 'Robert C. Martin'; // agrega si no existe, reemplaza si sí
book.remove('title');
print(book); // {author: Robert C. Martin}

final author = book['author'] ?? 'Autor desconocido'; // patrón habitual con null safety
print(author);
```

> 💡 **Comparación con otros lenguajes**: `Map<K, V>` equivale a un objeto plano de JavaScript o
> a un `dict` de Python — la diferencia es que Dart tipa explícitamente clave y valor, y el
> acceso por `[]` siempre puede ser `null` (se combina naturalmente con `??`, visto en la
> semana 1).

### 3. Recorrer un `Map` — `keys`, `values`, `entries`

```dart
final inventory = <String, int>{
  'Clean Code': 3,
  '1984': 1,
  'Dune': 0,
};

for (final title in inventory.keys) {
  print(title);
}

for (final copies in inventory.values) {
  print(copies);
}

for (final entry in inventory.entries) {
  print('${entry.key}: ${entry.value} copias');
}
```

`entries` es la forma más completa de recorrer un `Map` cuando necesitas **tanto** la clave
**como** el valor en cada vuelta — evita tener que volver a buscar `inventory[key]` dentro del
`for`.

### 4. Ejemplo aplicado al dominio del curso (Biblioteca)

```dart
void main() {
  final copiesByTitle = <String, int>{
    'Clean Code': 3,
    '1984': 0,
  };

  for (final entry in copiesByTitle.entries) {
    final status = entry.value > 0 ? 'Disponible' : 'Agotado';
    print('${entry.key}: $status (${entry.value} copias)');
  }
}
```

### 5. `Map` vs `List` de registros — cuándo usar cada uno

- **`Map<K, V>`**: cuando accedes por una **clave significativa** (un título, un ID) en vez de
  por posición numérica.
- **`List`**: cuando el orden de inserción o la posición son lo relevante, y no necesitas buscar
  por una clave.

## ⚠️ Errores Comunes

- Acceder con `[]` a una clave inexistente y usar el resultado sin verificar `null` — el tipo
  `V?` te obliga a manejarlo, pero es fácil forzar con `!` sin pensarlo (riesgo visto en semana 1)
- Confundir `keys`/`values` (dos `Iterable` separados) con `entries` (pares clave-valor) cuando
  se necesitan ambos datos en la misma vuelta
- Usar `Map<String, dynamic>` por comodidad cuando los valores en realidad tienen un tipo
  conocido y uniforme (ej. `Map<String, int>`)

## 📚 Recursos Adicionales

- [dart.dev — Maps](https://dart.dev/language/collections#maps)

## ✅ Checklist de Verificación

Antes de continuar a las prácticas, verifica que entiendes:

- [ ] Por qué `map['clave']` siempre retorna un tipo nullable
- [ ] Cómo verificar si una clave existe sin arriesgar una excepción
- [ ] La diferencia entre recorrer `keys`, `values` y `entries`
