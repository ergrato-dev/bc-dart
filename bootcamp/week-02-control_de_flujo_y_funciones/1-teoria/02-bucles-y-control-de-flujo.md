# Bucles y Control de Flujo

## 🎯 Objetivos

Al finalizar este archivo, comprenderás:

- `for` clásico y `for-in` (iterar sobre un `Iterable`)
- `while` y `do-while`, y la diferencia práctica entre ambos
- `break` y `continue`, incluyendo bucles etiquetados (`label:`)
- Cuándo usar cada tipo de bucle

## 📋 Conceptos Clave

### 1. `for` clásico — cuando necesitas un índice o un contador

```dart
for (var i = 1; i <= 3; i++) {
  print('Vuelta $i');
}
```

Cada `for` declara su propia variable de control (`i`) con `for (var i ...)` — esa variable
queda **acotada a cada iteración**: a diferencia del viejo `var` de JavaScript (que compartía una
sola variable entre iteraciones dentro de closures), en Dart cada vuelta tiene su propio binding,
como el `let` moderno de JS. Esto se retoma en el archivo de closures.

### 2. `for-in` — cuando solo necesitas los valores, no el índice

```dart
const genres = ['Ficción', 'Ensayo', 'Poesía'];

for (final genre in genres) {
  print(genre);
}
```

`for-in` funciona sobre cualquier `Iterable` (listas, sets, rangos generados, etc.). Es la forma
idiomática de recorrer una colección cuando no necesitas la posición — el manejo profundo de
colecciones (`List`/`Set`/`Map`, métodos funcionales) llega en la semana 3; aquí solo se usa
`for-in` como mecanismo de control de flujo.

> 💡 **Comparación con otros lenguajes**: `for-in` de Dart equivale a `for...of` en JavaScript
> (NO a `for...in`, que en JS itera claves — ese comportamiento no existe en Dart) o al `for`
> de Python sobre un iterable.

### 3. `while` y `do-while`

```dart
var attempts = 0;

while (attempts < 3) {
  print('Intento ${attempts + 1}');
  attempts++;
}

// do-while: el cuerpo se ejecuta AL MENOS una vez, la condición se evalúa después
var retries = 0;
do {
  print('Reintento $retries');
  retries++;
} while (retries < 1);
```

`while` evalúa la condición **antes** de cada vuelta (puede ejecutarse cero veces). `do-while` la
evalúa **después**, garantizando al menos una ejecución — útil cuando la primera pasada siempre
debe ocurrir (ej. mostrar un menú una vez antes de preguntar si continuar).

### 4. `break` y `continue`

```dart
for (var i = 1; i <= 5; i++) {
  if (i == 3) continue; // salta esta vuelta, sigue con la siguiente
  if (i == 5) break;    // termina el bucle por completo
  print(i); // imprime: 1, 2, 4
}
```

### 5. Bucles etiquetados — `break`/`continue` sobre un bucle externo

```dart
outer:
for (var shelf = 1; shelf <= 2; shelf++) {
  for (var book = 1; book <= 3; book++) {
    if (book == 2 && shelf == 1) continue outer; // salta a la siguiente estantería
    print('Estante $shelf, libro $book');
  }
}
```

Sin la etiqueta, `continue`/`break` solo afectan al bucle **más interno**. La etiqueta permite
señalar explícitamente cuál de los bucles anidados se salta o corta — úsalo con moderación, solo
cuando de verdad clarifica la intención frente a extraer el bucle interno a una función.

## ⚠️ Errores Comunes

- Olvidar incrementar la variable de control en un `while` — produce un bucle infinito
- Usar `for-in` cuando en realidad necesitas el índice de cada elemento — en ese caso, el `for`
  clásico (o un contador manual) es más claro que forzar `for-in`
- Anidar bucles y usar `break`/`continue` sin etiqueta esperando que afecten al bucle externo —
  solo afectan al más interno

## 📚 Recursos Adicionales

- [dart.dev — Loops](https://dart.dev/language/loops)

## ✅ Checklist de Verificación

Antes de continuar a las prácticas, verifica que entiendes:

- [ ] Cuándo usar `for` clásico frente a `for-in`
- [ ] La diferencia entre `while` y `do-while`
- [ ] Qué hacen `break` y `continue`, y por qué a veces necesitas etiquetar un bucle
