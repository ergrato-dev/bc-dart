// ============================================
// Reporte de Lote en Consola — Proyecto Semana 2
// ============================================
//
// NOTA PARA EL APRENDIZ:
// Adapta los nombres de evento y los datos literales de abajo a tu dominio.
// Los 3 códigos de evento son siempre Alta(1) / Renovación(2) / Baja(3):
// - Biblioteca: Nuevo libro / Renovación de préstamo / Retiro del catálogo
// - Farmacia: Ingreso de lote / Reabastecimiento / Vencimiento de lote
// - Gimnasio: Inscripción / Renovación de membresía / Cancelación
//
// Esta semana solo viste condicionales, bucles y funciones — todavía no hay
// clases ni colecciones (List/Map). El proyecto se queda a propósito dentro
// de ese alcance: los 3 eventos se seleccionan con un switch sobre el índice
// del for, no se guardan en una lista.

// TODO: implementa `eventName` con un switch EXPRESSION exhaustivo (usa `_`)
// que mapee el código de evento (1, 2, 3) al nombre adaptado a tu dominio.
// String eventName(int code) => switch (code) {
//   ???
// };

// TODO: implementa `formatEvent` con parámetros NOMBRADOS: `code` y `detail`
// requeridos, `note` opcional (String?). Usa `eventName(code)` y `??` para
// mostrar un valor por defecto legible cuando `note` sea null.
// String formatEvent({required int code, required String detail, String? note}) {
//   ???
// }

// TODO: implementa `printLine` como ARROW FUNCTION que imprima el texto con
// un prefijo visual, ej. '📋 $text'.
// void printLine(String text) => ???;

void main() {
  print('=== Reporte de Lote ===');

  // TODO: recorre 3 iteraciones con un `for` clásico (i de 1 a 3). Dentro,
  // usa un `switch` STATEMENT sobre `i` para asignar, en cada caso, un
  // `code`, un `detail` y (en al menos un caso) un `note` literales de tu
  // dominio. Luego llama a `printLine(formatEvent(...))` con esos datos.
  //
  // for (var i = 1; i <= 3; i++) {
  //   late int code;
  //   late String detail;
  //   String? note;
  //
  //   switch (i) {
  //     case 1:
  //       code = 1;
  //       detail = '???';
  //     case 2:
  //       code = 2;
  //       detail = '???';
  //       note = '???';
  //     default:
  //       code = 3;
  //       detail = '???';
  //   }
  //
  //   printLine(formatEvent(code: code, detail: detail, note: note));
  // }

  // TODO (bonus opcional): implementa una función-fábrica que retorne un
  // closure contador, y úsalo para numerar cada línea del reporte en vez
  // de depender directamente del índice del for.
}
