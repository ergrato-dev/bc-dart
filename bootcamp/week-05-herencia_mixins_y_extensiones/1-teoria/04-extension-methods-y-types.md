# Extension Methods y Extension Types

## 🎯 Objetivos

Al finalizar este archivo, comprenderás:

- **Extension methods**: agregar métodos a un tipo existente sin modificarlo ni heredar de él
- Cómo Dart resuelve qué extensión aplicar (y cuándo hay ambigüedad)
- **Extension types** (Dart 3): una envoltura sin costo en tiempo de ejecución
- Cuándo usar una extensión frente a una función independiente

## 📋 Conceptos Clave

### 1. Extension method — agregar comportamiento a un tipo que no controlas

```dart
extension StringFormatting on String {
  String capitalize() {
    if (isEmpty) return this;
    return '${this[0].toUpperCase()}${substring(1)}';
  }
}

void main() {
  print('clean code'.capitalize()); // Clean code
}
```

`String` es una clase del SDK — no puedes editarla ni heredar de ella para agregarle
`capitalize()`. Una `extension` inyecta el método como si fuera parte del tipo, sin tocar su
código fuente ni crear una subclase.

> 💡 **Comparación con otros lenguajes**: equivale a los *extension functions* de Kotlin o los
> *extension methods* de C# — la sintaxis (`extension Nombre on Tipo`) es la particularidad de
> Dart.

### 2. Extensiones sobre tipos genéricos y colecciones

```dart
extension CatalogSummary on List<int> {
  int get total => fold<int>(0, (sum, value) => sum + value);
}

void main() {
  final copies = [3, 0, 5];
  print(copies.total); // 8 — se lee como si fuera una propiedad de List<int>
}
```

También puedes extender tipos genéricos como `List<int>` — el método/getter aparece disponible
en cualquier variable de ese tipo, en cualquier archivo que importe la extensión.

### 3. Resolución de extensiones — cuándo hay ambigüedad

```dart
extension Loud on String {
  String shout() => '${toUpperCase()}!';
}

extension Louder on String {
  String shout() => '${toUpperCase()}!!!';
}

void main() {
  // print('hola'.shout()); // ❌ Error: ambas extensiones aplican, Dart no sabe cuál usar
  print(Louder('hola').shout()); // ✅ forzar la extensión explícitamente
}
```

Si dos extensiones importadas definen el **mismo** nombre de método sobre el **mismo** tipo, el
analyzer marca ambigüedad — se resuelve invocando la extensión explícitamente como si fuera una
función (`Louder('hola').shout()`) en vez de con sintaxis de método.

### 4. Extension type (Dart 3) — una envoltura sin costo en runtime

```dart
extension type Meters(double value) {
  Meters operator +(Meters other) => Meters(value + other.value);

  @override
  String toString() => '${value}m';
}

void main() {
  const distance = Meters(5.5);
  print(distance); // 5.5m

  // print(distance + 2.0); // ❌ Error: 2.0 no es Meters — el tipo evita mezclar unidades
  print(distance + const Meters(1.5)); // 7.0m
}
```

Un `extension type` crea un tipo **nuevo** en tiempo de compilación (con su propia API), pero en
runtime **no existe** como objeto separado — es literalmente el valor envuelto (`double` en este
caso), sin overhead de memoria. Útil para dar significado a un tipo primitivo (evitar mezclar
`Meters` con `Seconds`, ambos `double` por dentro) sin pagar el costo de una clase real.

### 5. Extensión vs función independiente — cuándo usar cada una

- **Extension method**: cuando quieres que se **lea como parte del tipo** (`valor.metodo()`),
  mejorando la legibilidad en cadenas de llamadas
- **Función independiente**: cuando el comportamiento no pertenece conceptualmente al tipo, o
  cuando quieres evitar el riesgo de colisiones de nombres entre extensiones

## ⚠️ Errores Comunes

- Definir dos extensiones con el mismo nombre de método sobre el mismo tipo e importarlas ambas
  sin darse cuenta — produce ambigüedad en cada sitio donde se use ese nombre
- Confundir `extension` (agrega métodos a un tipo existente) con `extension type` (crea un tipo
  nuevo envolviendo otro) — son conceptos relacionados pero distintos
- Abusar de extensiones para lógica de negocio compleja que en realidad merece su propia función
  con nombre explícito

## 📚 Recursos Adicionales

- [dart.dev — Extension methods](https://dart.dev/language/extension-methods)
- [dart.dev — Extension types](https://dart.dev/language/extension-types)

## ✅ Checklist de Verificación

Antes de continuar a las prácticas, verifica que entiendes:

- [ ] Cómo declarar una extensión sobre un tipo existente con `extension Nombre on Tipo`
- [ ] Qué pasa cuando dos extensiones importadas colisionan en el mismo nombre
- [ ] La diferencia entre un `extension method` y un `extension type`
