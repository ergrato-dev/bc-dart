# Ejercicio 01 — Condicionales y Bucles

> Practicarás `if`/`else`, `switch` statement, `switch` expression y bucles (`for`/`while`)
> descomentando código paso a paso.

## 🎯 Objetivos

- Usar `if`/`else` y el operador ternario
- Escribir un `switch` statement clásico y un `switch` expression exhaustivo
- Recorrer datos con `for`/`for-in` y controlar la repetición con `while`

## 📋 Requisitos

- Dart SDK local o Docker configurado
- [1-teoria/](../../1-teoria/) leído completo

## 🚀 Cómo ejecutar

```bash
cd starter
dart run main.dart
```

---

## Paso 1: `if`/`else` y ternario

```dart
final copies = 0;

if (copies > 0) {
  print('Disponible');
} else {
  print('Agotado');
}

final status = copies > 0 ? 'Disponible' : 'Agotado';
print(status);
```

**Abre `starter/main.dart`** y descomenta la sección `PASO 1`.

✅ **Verifica**: debe imprimir `Agotado` dos veces (una por el `if`, otra por el ternario).

---

## Paso 2: `switch` statement clásico

```dart
const eventCode = 2;

switch (eventCode) {
  case 1:
    print('Alta');
    break;
  case 2:
  case 3:
    print('Movimiento');
    break;
  default:
    print('Desconocido');
}
```

**Descomenta la sección `PASO 2`.**

✅ **Verifica**: debe imprimir `Movimiento` — `case 2` está vacío y por eso cae (fallthrough
válido) al cuerpo de `case 3`.

---

## Paso 3: `switch` expression exhaustivo

```dart
String describeEvent(int eventCode) => switch (eventCode) {
  1 => 'Alta',
  2 => 'Renovación',
  3 => 'Baja',
  _ => 'Desconocido',
};

print(describeEvent(2));
print(describeEvent(99));
```

**Descomenta la sección `PASO 3`.**

✅ **Verifica**: debe imprimir `Renovación` y luego `Desconocido` (el comodín `_` cubre el 99).

---

## Paso 4: Bucles `for` y `while`

```dart
for (var i = 1; i <= 3; i++) {
  if (i == 2) continue;
  print('Vuelta $i');
}

var attempts = 0;
while (attempts < 2) {
  print('Intento ${attempts + 1}');
  attempts++;
}
```

**Descomenta la sección `PASO 4`.**

✅ **Verifica**: el `for` imprime `Vuelta 1` y `Vuelta 3` (salta la 2 por el `continue`); el
`while` imprime `Intento 1` e `Intento 2`.

---

## ✅ Resultado final

Al descomentar los 4 pasos, `dart run main.dart` debe imprimir 10 líneas (encabezado + 9 datos)
sin ningún error de `dart analyze`.
