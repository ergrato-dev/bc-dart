# Glosario — Semana 01: Fundamentos de Dart y Entorno

Términos técnicos clave introducidos esta semana, ordenados alfabéticamente.

## A

**AOT (Ahead-Of-Time)**: compilación que traduce el código a nativo antes de ejecutarlo —
usado por `dart compile exe` para binarios de producción.

## C

**const**: modificador para valores conocidos en tiempo de **compilación**. Más estricto que
`final`: además de no reasignarse, su valor no puede depender de una llamada a función ni de
I/O en runtime.

## D

**Dart**: lenguaje de programación de Google, con tipado fuerte y sound null safety.

**`dart analyze`**: comando que ejecuta el análisis estático del proyecto (errores de tipos,
imports no usados, lints).

**`dart format`**: comando que formatea el código según el estilo oficial de Dart.

**`dart run`**: comando que compila (en modo JIT) y ejecuta un programa Dart.

**`dynamic`**: tipo que desactiva la verificación estática de tipos del compilador — se evalúa
en runtime. Evitar salvo caso justificado; preferir `Object` + `is` cuando sea posible.

## F

**final**: modificador para valores que se asignan una sola vez, en tiempo de **ejecución**.

## I

**Inferencia de tipos**: capacidad de Dart de deducir el tipo de una variable declarada con
`var` a partir de su valor inicial, sin perder seguridad de tipos.

**Interpolación de strings**: sintaxis `$variable` o `${expresión}` dentro de un string, para
insertar valores sin concatenar con `+`.

## J

**JIT (Just-In-Time)**: compilación que ocurre durante la ejecución — permite hot reload y
ciclos de desarrollo rápidos.

## L

**`late`**: modificador que permite declarar una variable no-nulable sin inicializarla de
inmediato, prometiendo que se asignará antes de su primer uso. Si la promesa se rompe, lanza
`LateInitializationError` en runtime.

## N

**Null safety (sound)**: garantía del compilador de que una variable de tipo no-nulable nunca
puede contener `null` — verificada en tiempo de compilación, sin excepciones en runtime por
ese motivo.

**Nullable type** (`Tipo?`): tipo que admite `null` como valor válido, además de los valores de
`Tipo`.

## O

**`Object`**: tipo raíz de la jerarquía de clases de Dart (salvo `Null`). Alternativa
type-safe a `dynamic` cuando no se conoce el tipo exacto de antemano.

**Operador `?.`**: acceso seguro — si el receptor es `null`, toda la cadena se corta y el
resultado es `null`, sin lanzar excepción.

**Operador `??`**: proporciona un valor por defecto cuando el operando izquierdo es `null`.

**Operador `??=`**: asigna un valor SOLO si la variable es actualmente `null`.

**Operador `!`**: fuerza un tipo nullable a no-nulable, verificado en runtime — lanza
excepción si el valor de verdad es `null`.

## P

**`pubspec.yaml`**: archivo de manifiesto de un paquete/proyecto Dart — declara nombre, SDK
constraint y dependencias.

## S

**`String?`**: ejemplo de tipo nullable — un `String` que también puede ser `null`.

---

> 📚 Glosario global del bootcamp: [docs/plan-estudios.md](../../../docs/plan-estudios.md)
