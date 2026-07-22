# Ejercicio 02 — Null Safety

> Practicarás `?`, `?.`, `??`, `??=` y `!` descomentando código paso a paso.

## 🎯 Objetivos

- Declarar variables nullable con criterio
- Usar `?.`, `??` y `??=` para manejar ausencia de datos sin crashear
- Entender el riesgo real de `!`

## 📋 Requisitos

- Dart SDK local o Docker configurado
- [Ejercicio 01](../ejercicio-01-variables-y-tipos/README.md) completado

## 🚀 Cómo ejecutar

```bash
cd starter
dart run main.dart
```

---

## Paso 1: Declarar un tipo nullable

```dart
String? nickname;
print(nickname); // null — Dart no lanza excepción al imprimir null
```

**Abre `starter/main.dart`** y descomenta la sección `PASO 1`.

✅ **Verifica**: debe imprimir `null` (la palabra, no un error).

---

## Paso 2: `?.` — acceso seguro

```dart
print(nickname?.length); // null, sin lanzar excepción
nickname = 'Dashy';
print(nickname?.length); // 5
```

**Descomenta la sección `PASO 2`.**

✅ **Verifica**: primero imprime `null`, luego `5`.

---

## Paso 3: `??` y `??=`

```dart
String? city;
final displayCity = city ?? 'Sin ciudad';
print(displayCity);

city ??= 'Bogotá';
print(city);

city ??= 'Medellín'; // no hace nada: city ya no es null
print(city);
```

**Descomenta la sección `PASO 3`.**

✅ **Verifica**: debe imprimir `Sin ciudad`, `Bogotá`, `Bogotá` (la tercera línea NO cambia).

---

## Paso 4: `!` y su riesgo

```dart
String? maybeNull = 'seguro';
String definitelyNotNull = maybeNull!;
print(definitelyNotNull);

String? riskyNull;
try {
  print(riskyNull!); // esto SÍ lanza excepción: riskyNull de verdad es null
} catch (e) {
  print('Capturado: $e');
}
```

**Descomenta la sección `PASO 4`.**

✅ **Verifica**: imprime `seguro`, y luego una línea `Capturado: ...` — el segundo `!` sí
explota porque `riskyNull` de verdad es `null`, y por eso lo envolvimos en `try/catch`.

---

## ✅ Resultado final

Al descomentar los 4 pasos, `dart run main.dart` debe imprimir 9 líneas (encabezado + 8 datos)
sin ningún error de `dart analyze`. El único "error" esperado es el capturado explícitamente en
el Paso 4.

> 💡 **Nota sobre `dart analyze`**: es normal que veas *advertencias* (no errores) como
> "unnecessary null-aware operator" en algunas líneas — el analyzer es capaz de probar
> estáticamente que, en ESE punto exacto del código, la variable ya no puede ser `null` (por
> ejemplo, justo después de un `??=`). Es una confirmación de que null safety funciona, no un
> fallo tuyo. La rúbrica de esta semana exige 0 **errores**, no 0 advertencias.
