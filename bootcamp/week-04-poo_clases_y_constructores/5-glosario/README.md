# Glosario — Semana 04: POO: Clases y Constructores

Términos técnicos clave introducidos esta semana, ordenados alfabéticamente.

## C

**Clase**: plantilla que define los campos y métodos de un conjunto de objetos (instancias).

**Constructor**: función especial que crea e inicializa una instancia de una clase.

**Constructor const**: constructor que produce instancias inmutables, conocidas en tiempo de
compilación — exige que todos los campos sean `final`. El compilador puede deduplicar instancias
idénticas.

**Constructor factory**: constructor que controla explícitamente qué instancia retorna — puede
validar, transformar datos de entrada, o retornar una instancia cacheada, en vez de crear
siempre una nueva.

**Constructor nombrado**: variante adicional de creación para una misma clase, con un nombre
(`Clase.nombre(...)`) que documenta su propósito.

## E

**Encapsulamiento**: ocultar el estado interno de un objeto (campos privados) detrás de una
interfaz pública controlada (getters/setters, métodos).

## G

**Getter**: propiedad computada de una clase, se lee sin paréntesis (`objeto.propiedad`) aunque
por dentro sea una función.

## I

**Instancia**: un objeto concreto creado a partir de una clase, con sus propios valores para
cada campo.

## M

**Método**: función declarada dentro de una clase, con acceso implícito a los campos de la
instancia actual (`this`).

**Miembro estático**: campo o método que pertenece a la **clase**, no a cada instancia — se
accede con `NombreDeClase.miembro`.

## P

**Privado (library-private)**: identificador con prefijo `_`, accesible solo desde el mismo
archivo (`library`) donde se declara — no desde otros archivos del proyecto.

## S

**Setter**: método especial que se invoca con sintaxis de asignación (`objeto.propiedad =
valor`), típicamente usado para validar el valor antes de guardarlo.

**`static const`**: combinación de campo estático (uno por clase) y constante (conocido en
compilación, no reasignable) — para reglas de negocio fijas compartidas por todas las
instancias.

---

> 📚 Glosario global del bootcamp: [docs/plan-estudios.md](../../../docs/plan-estudios.md)
