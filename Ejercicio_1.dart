// Ejercicio 1

class Persona {
  String name;
  int age;
  String gender;

  Persona (this.name, this.age, this.gender);

void presentation () {
  print("Mi nombre es $name, tengo $age años y mi genero es: $gender.");
  }
}

void main () {
  Persona miPersona = new Persona("Santiago", 21, "Masculino");

  miPersona.presentation();
}