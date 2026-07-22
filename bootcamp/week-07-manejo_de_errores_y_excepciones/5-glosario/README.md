# Glosario — Semana 07: Manejo de Errores y Excepciones

Términos técnicos clave introducidos esta semana, ordenados alfabéticamente.

---

**`assert`** — verificación de una invariante interna que debería ser siempre verdadera si el
código es correcto. Se ejecuta en modo debug/test y se elimina por completo en compilaciones
release — nunca debe usarse para validar input de usuario en producción.

**`catch`** — cláusula que captura una excepción lanzada dentro de un bloque `try`, con acceso
opcional al objeto de la excepción (`catch (e)`) y a su `StackTrace` (`catch (e, stackTrace)`).

**`Error`** — jerarquía de tipos (`StateError`, `RangeError`, `ArgumentError`, etc.) que
representa bugs del programador, no condiciones esperables del negocio. Puede capturarse, pero
la solución real es corregir el código que la provocó.

**`Exception`** — interfaz marcador que representa una condición esperable que el programa debe
poder manejar (dato con formato inválido, recurso no disponible). Base para declarar excepciones
personalizadas con `implements Exception`.

**`finally`** — bloque que se ejecuta siempre al salir de un `try`, haya ocurrido una excepción o
no, e incluso si el `catch` la relanza. Lugar correcto para liberar recursos.

**`on TipoDeExcepcion`** — cláusula que captura únicamente excepciones de un tipo específico,
permitiendo reaccionar distinto según el tipo. Varias cláusulas `on` se evalúan en orden, de más
a menos específica.

**Patrón Result** — convención (no una feature nueva del lenguaje) que modela un fallo esperado
como parte del tipo de retorno, típicamente con una `sealed class Result<T>` y dos variantes
(`Ok`/`Err`), consumida con `switch` exhaustivo en vez de `try`/`catch`.

**`rethrow`** — relanza la excepción actualmente capturada conservando su `StackTrace` original,
a diferencia de `throw e`, que generaría uno nuevo apuntando al punto del relanzamiento.

**`throw`** — lanza una excepción, interrumpiendo el flujo normal de ejecución hasta que un
`try`/`catch` la capture (o el programa termine si nadie lo hace).

---

> 📚 Glosario global del bootcamp: [docs/plan-estudios.md](../../../docs/plan-estudios.md)
