# Semana 05 — Herencia, Mixins y Extensiones

> **Fase 2 — POO y Tipos Avanzados** | Semana 5 de 10 | ⏱️ 6 horas

Segunda semana de POO: cómo compartir comportamiento entre clases con `extends`, adoptar
contratos con `implements`, inyectar comportamiento transversal con mixins, y agregar métodos a
tipos existentes con extensiones — el arsenal completo antes de genéricos y pattern matching.

## 🎯 Objetivos de aprendizaje

Al finalizar esta semana, el estudiante será capaz de:

- [ ] Extender una clase con `extends`, usar `super`, y modelar contratos con clases abstractas
- [ ] Aplicar polimorfismo tratando distintas subclases a través de su tipo base
- [ ] Adoptar un contrato con `implements`, entendiendo que no hereda implementación
- [ ] Declarar mixins, componerlos con `with`, y restringirlos con la cláusula `on`
- [ ] Agregar extension methods a tipos existentes y distinguirlos de un extension type

## 📚 Requisitos previos

- [Semana 04 — POO: Clases y Constructores](../week-04-poo_clases_y_constructores/README.md)
  completada
- Dart SDK local (`dart --version` funcionando) y/o Docker

## 🗂️ Estructura de la semana

| Carpeta           | Contenido                    | Tiempo |
| ----------------- | ---------------------------- | ------ |
| `1-teoria/`       | Material teórico             | 2h     |
| `2-practicas/`    | Ejercicios guiados           | 2h     |
| `3-proyecto/`     | Proyecto integrador          | 2h     |

## 📝 Contenidos

### Teoría

1. [Herencia y Clases Abstractas](1-teoria/01-herencia-y-clases-abstractas.md)
2. [implements e Interfaces Implícitas](1-teoria/02-implements-e-interfaces.md)
3. [Mixins](1-teoria/03-mixins.md)
4. [Extension Methods y Extension Types](1-teoria/04-extension-methods-y-types.md)

### Prácticas

1. [Ejercicio 01 — Herencia, Clases Abstractas e Implements](2-practicas/ejercicio-01-herencia-y-abstractas/README.md)
2. [Ejercicio 02 — Mixins y Extension Methods](2-practicas/ejercicio-02-mixins-y-extensiones/README.md)

### Proyecto

[Catálogo Polimórfico](3-proyecto/README.md) — integra herencia abstracta, un mixin y una
extensión sobre `List` sobre el dominio único asignado.

## ⏱️ Distribución del tiempo (6 horas)

| Actividad  | Tiempo | Descripción                |
| ---------- | ------ | --------------------------- |
| Teoría     | 2h     | Lectura y ejemplos          |
| Prácticas  | 2h     | Ejercicios guiados          |
| Proyecto   | 2h     | Implementación propia       |

## 📌 Entregables

- [ ] Ejercicios completados (prácticas descomentadas y funcionando)
- [ ] Proyecto adaptado al dominio asignado
- [ ] `dart analyze` sin errores (verificable con Docker)
- [ ] Programa ejecutándose por consola con `dart run`

## 🔗 Navegación

[← Semana 04 — POO: Clases y Constructores](../week-04-poo_clases_y_constructores/README.md) | [Semana 06 — Genéricos y Pattern Matching →](../week-06-genericos_y_pattern_matching/README.md)
