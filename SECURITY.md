# 🔒 Política de Seguridad

## Versiones Soportadas

| Versión | Soportada |
| ------- | --------- |
| main    | ✅        |

## Reportar una Vulnerabilidad

La seguridad de este proyecto es importante para nosotros. Si descubres una vulnerabilidad de seguridad, te pedimos que la reportes de manera responsable.

### ⚠️ NO hacer público el reporte

Por favor, **NO** abras un issue público para reportar vulnerabilidades de seguridad.

### 📧 Cómo Reportar

1. **Abre un Security Advisory privado** en GitHub:
   - Ve a la pestaña "Security" del repositorio
   - Haz clic en "Report a vulnerability"
   - Completa el formulario con los detalles

2. **Incluye en tu reporte**:
   - Descripción detallada de la vulnerabilidad
   - Pasos para reproducir el problema
   - Impacto potencial
   - Sugerencias de solución (si las tienes)

### ⏱️ Tiempo de Respuesta

- **Confirmación inicial**: 48 horas
- **Evaluación**: 7 días
- **Resolución**: Dependiendo de la severidad

### 🎁 Reconocimiento

Agradecemos a todos los investigadores de seguridad que reportan vulnerabilidades de manera responsable. Tu nombre será incluido en nuestros agradecimientos (si lo deseas).

## Mejores Prácticas de Seguridad

Este bootcamp enseña las siguientes prácticas de seguridad, aplicables a programas de consola en Dart:

### Validación de Datos de Entrada

```dart
// ✅ Validar argumentos/entrada explícitamente antes de usarlos
String? validateEmail(String? value) {
  if (value == null || value.isEmpty) return 'El email es requerido';
  final regex = RegExp(r'^[\w.+-]+@[\w-]+\.[a-zA-Z]{2,}$');
  if (!regex.hasMatch(value)) return 'Email inválido';
  return null;
}
```

### Variables de Entorno y Secretos

```dart
// ✅ Nunca hardcodear secretos — usar variables de entorno vía --define o Platform.environment
final apiKey = const String.fromEnvironment('API_KEY');

// ❌ NUNCA: final apiKey = "sk-live-abc123...";
```

### Manejo Seguro de Archivos (`dart:io`)

```dart
// ✅ Validar rutas antes de leer/escribir — evita path traversal
import 'dart:io';

Future<void> readUserFile(String fileName) async {
  final safeName = fileName.split(Platform.pathSeparator).last;
  final file = File('data/$safeName');
  if (!file.existsSync()) throw FileSystemException('Archivo no encontrado', safeName);
  await file.readAsString();
}

// ❌ NUNCA usar directamente una ruta provista por el usuario sin sanear
```

### Ejecución de Procesos (`Process.run`)

```dart
// ✅ Pasar argumentos como lista — evita inyección de comandos de shell
await Process.run('git', ['status', '--short']);

// ❌ NUNCA interpolar entrada de usuario en un string de shell
// await Process.run('sh', ['-c', 'git log $userInput']);
```

### Deserialización de JSON

```dart
// ✅ Validar tipos explícitamente al parsear JSON externo, nunca confiar en el shape
final data = jsonDecode(raw) as Map<String, dynamic>;
final name = data['name'];
if (name is! String) throw const FormatException('campo "name" inválido');
```

## Dependencias

Mantenemos las dependencias actualizadas para evitar vulnerabilidades conocidas. Usamos:

- Versiones exactas (`pubspec.yaml` sin `^`/`>=` en paquetes core del curso) para reproducibilidad
- `dart pub outdated` y Dependabot para alertas automáticas
- Auditorías regulares de seguridad

---

Gracias por ayudar a mantener este proyecto seguro. 🛡️
