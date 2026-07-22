# Introducción a Dart y al Entorno de Trabajo

## 🎯 Objetivos

Al finalizar este archivo, comprenderás:

- Qué es Dart y por qué este bootcamp lo enseña como lenguaje independiente, antes que Flutter
- Cómo se ejecuta un programa Dart (compilación JIT vs AOT)
- Cómo configurar y validar tu entorno de trabajo (SDK local y/o Docker)
- La estructura mínima de un programa Dart y las herramientas de línea de comandos que usarás
  toda la duración del curso

## 📋 Conceptos Clave

### 1. ¿Qué es Dart?

Dart es un lenguaje desarrollado por Google, con **tipado fuerte y null safety sólido (sound
null safety)**, pensado originalmente para construir interfaces de usuario rápidas en cualquier
plataforma — hoy es también un lenguaje de propósito general sólido para scripts, CLIs y
servidores.

- **Compilación AOT** (Ahead-Of-Time) a código nativo → programas rápidos, sin runtime pesado
- **Compilación JIT** (Just-In-Time) → iteración rápida durante desarrollo
- Un modelo de objetos único (todo es un objeto, incluso los números) que simplifica el
  aprendizaje de la biblioteca estándar

> 💡 **Comparación con TypeScript**: Dart no necesita un transpilador para tener tipado fuerte —
> el análisis de tipos es parte del lenguaje desde el día uno, no una capa añadida encima (como
> TypeScript sobre JavaScript). El binario compilado con `dart compile` no requiere Node.js ni
> ningún runtime externo.

### 2. Cómo se ejecuta un programa Dart

```dart
// hello.dart
void main() {
  print('Hola, bootcamp de Dart');
}
```

```bash
dart run hello.dart
```

`dart run` compila en modo JIT y ejecuta inmediatamente — ideal para desarrollo. Para producción
existe `dart compile exe` (genera un binario nativo standalone).

### 3. Herramientas de línea de comandos que usarás todo el curso

| Comando | Para qué sirve |
|---|---|
| `dart run <archivo>` | Ejecuta un programa Dart |
| `dart format .` | Formatea el código según el estilo oficial |
| `dart analyze` | Análisis estático — errores de tipos, imports no usados, lints |
| `dart doc` | Genera documentación HTML a partir de comentarios `///` |
| `dart pub get` | Descarga las dependencias declaradas en `pubspec.yaml` |
| `dart test` | Corre los tests del proyecto (lo usarás desde la semana 9) |

Corre `dart --help` en cualquier momento para ver el resto de subcomandos disponibles.

### 4. Validar tu entorno

Con SDK local:

```bash
dart --version
```

Con Docker (ver [docs/setup/con-docker.md](../../../../docs/setup/con-docker.md)):

```bash
docker compose run --rm dart dart --version
```

Cualquiera de las dos rutas es válida para completar el bootcamp — elige la que prefieras según
[docs/setup/README.md](../../../../docs/setup/README.md).

### 5. Estructura mínima de un programa Dart

```dart
// Un archivo .dart con función main() es un punto de entrada ejecutable
void main() {
  // El cuerpo del programa vive aquí
  print('Todo programa Dart necesita exactamente una función main()');
}
```

No hace falta declarar una clase ni un `namespace` — a diferencia de Java o C#, una función
`main()` a nivel de archivo es suficiente para tener un programa ejecutable.

## ⚠️ Errores Comunes

- Olvidar `void` o el tipo de retorno en `main()` — Dart requiere anotar el tipo de retorno de
  las funciones top-level, aunque en `main()` casi siempre sea `void` o `Future<void>`
- Confundir `dart run archivo.dart` (ejecuta) con `dart archivo.dart` (también funciona, pero
  `dart run` es la forma recomendada — es más explícita y soporta más flags)
- No correr `dart analyze` antes de dar un ejercicio por terminado — el analyzer detecta errores
  que el programa podría "funcionar" a pesar de tener

## 📚 Recursos Adicionales

- [dart.dev — Get started](https://dart.dev/get-started) — instalación y primeros pasos
- [dart.dev — Language tour](https://dart.dev/language) — referencia completa del lenguaje
- [dart.dev — dart command reference](https://dart.dev/tools/dart-tool) — todos los subcomandos

## ✅ Checklist de Verificación

Antes de continuar a las prácticas, verifica que entiendes:

- [ ] Qué hace `dart run` frente a `dart compile exe`
- [ ] Para qué sirven `dart analyze`, `dart format` y `dart doc`
- [ ] Que un archivo `.dart` con `void main() {}` ya es un programa ejecutable
- [ ] Cómo verificar que tu entorno (SDK local o Docker) está listo
