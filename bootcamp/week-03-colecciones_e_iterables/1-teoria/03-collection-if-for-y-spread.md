# Collection-if, Collection-for y Spread

## 🎯 Objetivos

Al finalizar este archivo, comprenderás:

- **Collection-if**: incluir un elemento condicionalmente dentro de un literal
- **Collection-for**: generar elementos a partir de un bucle dentro de un literal
- El operador **spread** (`...`) y su variante nula (`...?`)
- Por qué estas construcciones reemplazan bucles imperativos para construir colecciones

## 📋 Conceptos Clave

### 1. Collection-if — incluir un elemento según una condición

```dart
const includeDrafts = false;

final titles = [
  'Clean Code',
  '1984',
  if (includeDrafts) 'Borrador sin publicar',
];

print(titles); // [Clean Code, 1984] — el borrador NO se incluyó
```

Sin esta sintaxis, tendrías que construir la lista vacía y usar `.add()` condicionalmente fuera
del literal. El `if` **dentro** del literal es más declarativo: describe qué contiene la lista,
no los pasos para construirla.

### 2. Collection-for — generar elementos a partir de un bucle

```dart
final numbers = [1, 2, 3];

final labels = [
  'Inicio',
  for (final n in numbers) 'Item $n',
  'Fin',
];

print(labels); // [Inicio, Item 1, Item 2, Item 3, Fin]
```

Igual que `if`, el `for` dentro de `[]` produce elementos que se insertan en la posición exacta
donde aparece — combinable con elementos literales antes y después, como arriba.

### 3. Spread (`...`) — expandir una colección dentro de otra

```dart
final classics = ['1984', 'Fahrenheit 451'];
final newArrivals = ['Clean Code'];

final catalog = [...classics, ...newArrivals, 'Dune'];
print(catalog); // [1984, Fahrenheit 451, Clean Code, Dune]
```

`...` toma todos los elementos de una colección existente y los "aplana" dentro del nuevo
literal — evita escribir `catalog.addAll(classics)` línea por línea.

### 4. Spread nulo (`...?`) — expandir solo si no es `null`

```dart
List<String>? extraTitles; // puede ser null

final catalog = [
  '1984',
  ...?extraTitles, // si extraTitles es null, no agrega nada (sin lanzar excepción)
];

print(catalog); // [1984]
```

`...?` es la combinación de spread con null safety: si la colección de origen es `null`, el
spread simplemente no aporta elementos, en vez de lanzar una excepción.

### 5. Ejemplo aplicado al dominio del curso (Biblioteca) — combinando las tres

```dart
void main() {
  const showOnlyAvailable = true;
  final permanentCatalog = ['Clean Code', '1984'];
  final seasonalCatalog = ['Cuento de Navidad'];

  final displayList = [
    ...permanentCatalog,
    if (!showOnlyAvailable) ...seasonalCatalog,
    for (var i = 1; i <= 2; i++) 'Reservado #$i',
  ];

  print(displayList);
  // [Clean Code, 1984, Reservado #1, Reservado #2]
}
```

## ⚠️ Errores Comunes

- Usar `...` sobre una colección que puede ser `null` — lanza excepción en runtime; en ese caso
  usa siempre `...?`
- Olvidar que el resultado de collection-if/for es **posicional**: el orden en el literal define
  dónde se insertan los elementos generados
- Mezclar tipos incompatibles al hacer spread de dos colecciones con genéricos distintos sin que
  el analyzer pueda inferir un tipo común

## 📚 Recursos Adicionales

- [dart.dev — Collection operators](https://dart.dev/language/collections#control-flow-operators)
- [dart.dev — Spread operators](https://dart.dev/language/collections#spread-operators)

## ✅ Checklist de Verificación

Antes de continuar a las prácticas, verifica que entiendes:

- [ ] Cómo incluir un elemento condicionalmente con collection-if
- [ ] Cómo generar varios elementos con collection-for
- [ ] La diferencia entre `...` y `...?`
