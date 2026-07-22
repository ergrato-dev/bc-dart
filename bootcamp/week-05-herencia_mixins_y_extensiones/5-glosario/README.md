# Glosario — Semana 05: Herencia, Mixins y Extensiones

Términos técnicos clave introducidos esta semana, ordenados alfabéticamente.

## C

**Clase abstracta**: clase declarada con `abstract` que no puede instanciarse directamente —
existe para ser extendida por subclases concretas.

## E

**`extends`**: palabra clave para heredar campos y métodos de una clase base (herencia simple:
solo una clase base a la vez).

**Extension method**: método agregado a un tipo existente mediante `extension Nombre on Tipo`,
sin modificar el tipo original ni crear una subclase.

**Extension type**: tipo nuevo (Dart 3) que envuelve otro tipo sin costo en tiempo de ejecución —
existe solo en tiempo de compilación.

## I

**Interfaz implícita**: en Dart, toda clase define automáticamente una interfaz que otra clase
puede adoptar con `implements`, sin necesidad de una declaración `interface` separada.

**`implements`**: palabra clave para adoptar el contrato (interfaz implícita) de una o más
clases, sin heredar su implementación — todo debe reimplementarse.

## M

**Mixin**: unidad de comportamiento reutilizable (campos y métodos) que se inyecta en una clase
con `with`, sin relación de herencia real entre ambos.

## O

**`on` (cláusula de mixin)**: restricción que declara que un mixin solo puede aplicarse a clases
que sean (o extiendan) un tipo específico.

**`@override`**: anotación que documenta que un miembro reemplaza uno heredado — el analyzer
avisa si la firma deja de coincidir con la del padre.

## P

**Polimorfismo**: capacidad de tratar objetos de distintas subclases de manera uniforme a través
de su tipo base, ejecutando en cada caso la implementación real del objeto concreto.

## S

**`super`**: referencia a la clase base — se usa para reenviar argumentos al constructor del
padre o para llamar a la implementación del padre de un método sobrescrito.

---

> 📚 Glosario global del bootcamp: [docs/plan-estudios.md](../../../docs/plan-estudios.md)
