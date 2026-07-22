# Ejercicio 01 — Try/Catch y Excepciones Personalizadas

> Practicarás capturar excepciones por tipo, usar `finally`, declarar una excepción propia con
> contexto, y relanzarla con `rethrow` descomentando código paso a paso.

## 🎯 Objetivos

- Capturar un tipo específico de excepción con `on` y usar un `catch` genérico como respaldo
- Usar `finally` para garantizar una acción que siempre debe ocurrir
- Declarar una excepción propia (`implements Exception`) con campos y `toString()` propio
- Relanzar una excepción con `rethrow` conservando su stack trace original

## 📋 Requisitos

- Dart SDK local o Docker configurado
- [1-teoria/](../../1-teoria/) leído completo

## 🚀 Cómo ejecutar

```bash
cd starter
dart run main.dart
```

---

## Paso 1: `on` específico + `catch` genérico de respaldo

```dart
try {
  final numbers = <int>[1, 2, 3];
  print(numbers[10]);
} on RangeError {
  print('Índice fuera de rango');
} catch (e) {
  print('Error inesperado: $e');
}
```

**Abre `starter/main.dart`** y descomenta la sección `PASO 1`.

✅ **Verifica**: debe imprimir `Índice fuera de rango`.

---

## Paso 2: `finally` — se ejecuta siempre

```dart
readConfig(true);
readConfig(false);
```

**Descomenta la sección `PASO 2`** (incluye la función `readConfig` al final del archivo).

✅ **Verifica**: debe imprimir 4 líneas — `No se pudo leer: ...`, `Cerrando conexión...`,
`Config leída correctamente`, `Cerrando conexión...` — el `finally` corre en **ambas** llamadas.

---

## Paso 3: Excepción personalizada con contexto

```dart
try {
  throw BookNotFoundException('b-404');
} on BookNotFoundException catch (e) {
  print(e);
}
```

**Descomenta la sección `PASO 3`** (incluye la clase `BookNotFoundException` al final del
archivo).

✅ **Verifica**: debe imprimir `BookNotFoundException: no existe el libro "b-404"` — usa el
`toString()` personalizado, no el genérico de Dart.

---

## Paso 4: `rethrow` — relanzar sin perder el stack trace

```dart
try {
  process();
} catch (e) {
  print('Capturado en main: $e');
}
```

**Descomenta la sección `PASO 4`** (incluye la función `process` al final del archivo).

✅ **Verifica**: debe imprimir `Log local: FormatException: ...` y luego
`Capturado en main: FormatException: ...` — el mismo error pasó por dos manejadores.

---

## ✅ Resultado final

Al descomentar los 4 pasos, `dart run main.dart` debe imprimir 9 líneas (encabezado + 8 datos)
sin ningún error de `dart analyze`.
