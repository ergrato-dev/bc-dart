# Excepciones Personalizadas

## 🎯 Objetivos

Al finalizar este archivo, comprenderás:

- La diferencia entre `Exception` y `Error` en Dart, y cuándo capturar cada uno
- Cómo declarar una excepción propia implementando `Exception`
- Cómo agregar contexto (campos) a una excepción personalizada
- Por qué sobrescribir `toString()` mejora los mensajes de error

## 📋 Conceptos Clave

### 1. `Exception` vs `Error` — no son lo mismo

```dart
void main() {
  try {
    final list = <int>[];
    print(list.first); // lanza un StateError (subtipo de Error), no de Exception
  } on Error catch (e) {
    print('Error de programación detectado: $e');
  }
}
```

- **`Exception`**: representa una condición **esperable** que el programa debe poder manejar
  (archivo no encontrado, dato con formato inválido, recurso no disponible)
- **`Error`** (`StateError`, `RangeError`, `ArgumentError`, etc.): representa un **bug del
  programador** — código que asumió algo falso sobre el estado del programa. Se puede capturar,
  pero la solución real es **corregir el código**, no capturarlo en producción

> 💡 Como regla práctica: si el `catch` de tu programa depende de capturar un `Error` para
> funcionar correctamente en el día a día, probablemente hay un bug que deberías arreglar en vez
> de manejar.

### 2. Declarar una excepción propia

```dart
class BookNotFoundException implements Exception {
  const BookNotFoundException(this.bookId);

  final String bookId;

  @override
  String toString() => 'BookNotFoundException: no existe el libro "$bookId"';
}

void main() {
  try {
    throw BookNotFoundException('b-404');
  } on BookNotFoundException catch (e) {
    print(e); // usa el toString() personalizado
  }
}
```

`implements Exception` es suficiente — `Exception` es una interfaz marcador (sin miembros
propios que implementar). Agregar campos (`bookId`) permite que quien capture la excepción tenga
**contexto** además del mensaje, no solo un texto plano.

> 💡 **Comparación con otros lenguajes**: es equivalente a extender `Exception` en Java/Python —
> Dart usa `implements` en vez de `extends` porque `Exception` es una interfaz, no una clase con
> comportamiento heredable.

### 3. `toString()` — mensajes de error legibles

```dart
class InsufficientStockException implements Exception {
  const InsufficientStockException(this.bookId, this.requested, this.available);

  final String bookId;
  final int requested;
  final int available;

  @override
  String toString() =>
      'InsufficientStockException: "$bookId" — pedidas $requested, disponibles $available';
}
```

Sin sobrescribir `toString()`, `print(exception)` mostraría algo genérico como
`Instance of 'InsufficientStockException'` — inútil para depurar. Sobrescribirlo documenta el
error con los datos exactos que causaron el problema.

### 4. Cuándo NO usar excepciones

Las excepciones son costosas de leer en el flujo de control (rompen la ejecución lineal) y el
compilador **no** obliga a nadie a manejarlas — a diferencia de un tipo de retorno, olvidarlas es
fácil. Para fallos **esperados y frecuentes** dentro de la lógica de negocio (ej. "el formulario
tiene un campo inválido"), el patrón `Result` (siguiente archivo) suele ser más claro.

## ⚠️ Errores Comunes

- Confundir `Exception` con `Error` y capturar `Error` "por si acaso" en el flujo normal — oculta
  bugs reales en vez de corregirlos
- Declarar una excepción sin campos ni `toString()` propio — el mensaje por defecto no ayuda a
  diagnosticar nada
- Usar excepciones para validaciones de negocio que ocurren constantemente (ej. cada campo de un
  formulario) — genera un flujo de control ilegible; ver el patrón `Result`

## 📚 Recursos Adicionales

- [dart.dev — Exceptions](https://dart.dev/language/error-handling#exceptions)
- [dart.dev API — Error class](https://api.dart.dev/stable/dart-core/Error-class.html)

## ✅ Checklist de Verificación

Antes de continuar a las prácticas, verifica que entiendes:

- [ ] La diferencia de intención entre `Exception` y `Error`
- [ ] Cómo declarar una excepción propia con `implements Exception`
- [ ] Por qué sobrescribir `toString()` en una excepción personalizada
- [ ] Cuándo una validación de negocio NO debería modelarse como excepción
