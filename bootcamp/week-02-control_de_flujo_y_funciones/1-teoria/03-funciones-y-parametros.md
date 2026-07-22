# Funciones y Parámetros

## 🎯 Objetivos

Al finalizar este archivo, comprenderás:

- Cómo declarar una función con tipo de retorno explícito
- Parámetros posicionales requeridos y posicionales **opcionales** (`[]`)
- Parámetros **nombrados** (`{}`), con `required` o con valor por defecto
- Arrow functions (`=>`) para funciones de una sola expresión

## 📋 Conceptos Clave

### 1. Función básica con tipo de retorno explícito

```dart
int addCopies(int current, int incoming) {
  return current + incoming;
}
```

Igual que en `main()`, el tipo de retorno se anota explícitamente (`int`, `void`, `String`...) —
es parte del estilo idiomático de Dart (`Effective Dart`), aunque el analyzer podría inferirlo.

### 2. Parámetros posicionales opcionales — `[]`

```dart
String greet(String name, [String? title]) {
  return title != null ? '$title $name' : name;
}

print(greet('Ana'));           // Ana
print(greet('Ana', 'Dra.'));   // Dra. Ana
```

Todo lo que va dentro de `[]` es opcional y debe ir **después** de los parámetros requeridos. Si
no se pasa, su valor es `null` (a menos que declares un valor por defecto):

```dart
String greetWithDefault(String name, [String title = 'Sr./Sra.']) {
  return '$title $name';
}
```

### 3. Parámetros nombrados — `{}`

```dart
double calculateLateFee({
  required int daysOverdue,
  double dailyRate = 500,
}) {
  return daysOverdue * dailyRate;
}

print(calculateLateFee(daysOverdue: 3));               // 1500.0
print(calculateLateFee(daysOverdue: 3, dailyRate: 800)); // 2400.0
```

Los parámetros nombrados se pasan como `nombre: valor`, en cualquier orden. `required` obliga a
pasarlo aunque no tenga valor por defecto — sin `required` ni valor por defecto, el parámetro es
nullable implícitamente (`double?`).

> 💡 **Comparación con otros lenguajes**: los parámetros nombrados de Dart son similares a los
> `kwargs` de Python, pero **verificados en tiempo de compilación** (nombre y tipo exactos). No
> existen en Java/C clásico; en JavaScript se simulan pasando un objeto `{}` sin esa garantía de
> tipos.

> ⚠️ **Regla del lenguaje**: no puedes mezclar `[]` y `{}` en la misma firma — una función usa
> posicionales opcionales **o** nombrados, nunca ambos a la vez (sí puede combinar posicionales
> **requeridos** con uno de los dos grupos opcionales).

### 4. Arrow functions — `=>` para una sola expresión

```dart
int square(int n) => n * n;

String formatFee(double fee) => '\$${fee.toStringAsFixed(2)}';
```

`=>` es azúcar sintáctica para `{ return expresión; }` — solo válida cuando el cuerpo completo es
**una única expresión**. Si necesitas más de una sentencia, usa llaves `{ }` con `return`
explícito.

### 5. Ejemplo aplicado al dominio del curso (Biblioteca)

```dart
double calculateLateFee({required int daysOverdue, double dailyRate = 500}) =>
    daysOverdue <= 0 ? 0 : daysOverdue * dailyRate;

void main() {
  final fee = calculateLateFee(daysOverdue: 4);
  print('Multa: \$${fee.toStringAsFixed(0)}'); // Multa: $2000
}
```

Nota cómo una arrow function puede contener, en su única expresión, un operador ternario — sigue
siendo "una expresión", solo que compuesta.

## ⚠️ Errores Comunes

- Intentar declarar `[]` y `{}` en la misma función — error de compilación
- Marcar un parámetro nombrado como `required` y además darle un valor por defecto — son
  mutuamente excluyentes (si siempre tiene un valor, no necesita ser `required`)
- Usar `=>` para un cuerpo que en realidad necesita varias sentencias (ej. un `if` con efectos
  secundarios) — el analyzer lo rechaza si no es una única expresión

## 📚 Recursos Adicionales

- [dart.dev — Functions](https://dart.dev/language/functions)

## ✅ Checklist de Verificación

Antes de continuar a las prácticas, verifica que entiendes:

- [ ] La diferencia entre parámetros posicionales opcionales (`[]`) y nombrados (`{}`)
- [ ] Cuándo un parámetro nombrado necesita `required` y cuándo un valor por defecto
- [ ] Cuándo una arrow function (`=>`) es válida y cuándo no
