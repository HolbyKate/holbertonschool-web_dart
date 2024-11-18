# Dart - Classes
Classes in Dart are templates for creating objects

```
dartCopyclass Person {
  String name;
  int age;
  
  Person(this.name, this.age);  // Constructeur
}
```

## Constructors

```
dartCopyclass Person {
  String name;
  
  // Constructeur par défaut
  Person(this.name);
  
  // Constructeur nommé
  Person.guest() {
    name = "Invité";
  }
```

## Properties :

```
dartCopyclass Rectangle {
  double _width;  // Privé
  double length;  // Public
  
  // Getter
  double get area => _width * length;
  
  // Setter
  set width(double value) {
    if (value > 0) _width = value;
  }
}
```

## Heritage :

```
dartCopyclass Student extends Person {
  String school;
  
  Student(String name, this.school) : super(name);
}
````

## Methods :

```
dartCopyclass Calculator {
  int add(int a, int b) => a + b;
  
  // Méthode statique
  static int multiply(int a, int b) => a * b;
}
```