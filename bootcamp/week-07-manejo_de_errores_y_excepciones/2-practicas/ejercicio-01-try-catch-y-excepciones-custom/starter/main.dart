/// Ejercicio 01 — Try/Catch y Excepciones Personalizadas
/// Qué: practicar on/catch por tipo, finally, excepciones propias con contexto y rethrow.
/// Para qué: reaccionar distinto según el tipo de fallo y garantizar liberación de recursos.
/// Impacto: sin esto, un error no manejado detiene el programa completo en vez de degradar con
/// un mensaje útil, y perderías el stack trace real al relanzar mal un error.

void main() {
  print('=== Ejercicio 01: Try/Catch y Excepciones Personalizadas ===');

  // ============================================
  // PASO 1: on específico + catch genérico de respaldo
  // Descomenta las siguientes líneas:
  // ============================================
  // try {
  //   final numbers = <int>[1, 2, 3];
  //   print(numbers[10]);
  // } on RangeError {
  //   print('Índice fuera de rango');
  // } catch (e) {
  //   print('Error inesperado: $e');
  // }

  // ============================================
  // PASO 2: finally — se ejecuta siempre
  // Descomenta las siguientes líneas:
  // ============================================
  // readConfig(true);
  // readConfig(false);

  // ============================================
  // PASO 3: excepción personalizada con contexto
  // Descomenta las siguientes líneas:
  // ============================================
  // try {
  //   throw BookNotFoundException('b-404');
  // } on BookNotFoundException catch (e) {
  //   print(e);
  // }

  // ============================================
  // PASO 4: rethrow — relanzar sin perder el stack trace
  // Descomenta las siguientes líneas:
  // ============================================
  // try {
  //   process();
  // } catch (e) {
  //   print('Capturado en main: $e');
  // }
}

// PASO 2: descomenta esta función junto con las llamadas del paso 2.
// void readConfig(bool shouldFail) {
//   try {
//     if (shouldFail) throw Exception('Config corrupta');
//     print('Config leída correctamente');
//   } catch (e) {
//     print('No se pudo leer: $e');
//   } finally {
//     print('Cerrando conexión al archivo');
//   }
// }

// PASO 3: descomenta esta clase junto con el bloque try del paso 3.
// class BookNotFoundException implements Exception {
//   const BookNotFoundException(this.bookId);
//   final String bookId;
//
//   @override
//   String toString() => 'BookNotFoundException: no existe el libro "$bookId"';
// }

// PASO 4: descomenta esta función junto con el bloque try del paso 4.
// void process() {
//   try {
//     throw FormatException('Dato corrupto');
//   } catch (e) {
//     print('Log local: $e');
//     rethrow;
//   }
// }
