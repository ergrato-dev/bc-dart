# ⚙️ Configuración del Entorno

Dart CLI no necesita GUI ni emulador — a diferencia de `bc-flutter`, aquí **Docker cubre el 100%
del flujo** (`dart run`/`dart test`/`dart analyze`/`dart build`), no solo la parte headless.

Elige una opción (o ambas):

- **[🐳 Con Docker](con-docker.md)** — recomendado si no quieres instalar el SDK localmente, o
  para garantizar exactamente la misma versión que el resto de la cohorte.
- **[💻 SDK local](sdk-local.md)** — recomendado si ya usas Dart/Flutter fuera del bootcamp, o
  quieres autocompletado e integración de editor sin pasar por contenedor.

Ambas rutas son igualmente válidas para completar el bootcamp; los entregables se verifican con
`dart analyze`/`dart test` en cualquiera de las dos.
