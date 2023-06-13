//! Introduction

// In this section, you will learn inheritance in Dart programming and
// how to define a class that reuses the properties and methods of another class.

// Inheritance is a sharing of behaviour between two classes.
// It allows you to define a class that extends the functionality of another class.
// The extend keyword is used for inheriting from parent class.

// Whenever you use inheritance, it always create a is-a relation between
// the parent and child class like Student is a Person, Truck is a Vehicle,
// Cow is a Animal etc.

// Dart supports single inheritance, which means that a class can only inherit
// from a single class. Dart does not support multiple inheritance which means
// that a class cannot inherit from multiple classes.

//? Syntax
class ParentClass {
  // Parent class code
}

class ChildClass extends ParentClass {
  // Child class code
}

// In this syntax, ParentClass is the super class and ChildClass is the sub class.
// The ChildClass inherits the properties and methods of the ParentClass.

//? Example 1: Inheritance

class Person {
  // Properties
  String? name;
  int? age;

  // Method
  void displayPerson() {
    print("Name: $name");
    print("Age: $age");
  }
}

// Here In student class, we are extending the
// properties and methods of the Person class
class Student extends Person {
  // Fields
  String? schoolName;
  String? schoolAddress;

  // Method
  void displaySchoolInfo() {
    print("School Name: $schoolName");
    print("School Address: $schoolAddress");
  }
}

void main() {
  // Creating an object of the Student class
  var student = Student();
  student.name = "Vaid";
  student.age = 20;
  student.schoolName = "ABC School";
  student.schoolAddress = "Anantnag";
  student.displayPerson();
  student.displaySchoolInfo();

  //Example 2
  // Create an object of Tesla class
  Tesla t = Tesla();
  // setting values to the object
  t.name = "Tesla Model 3";
  t.prize = 50000.00;
  // Display the values of the object
  t.displayTesla();

  //example 3
  Model3 m = Model3();
// setting values to the object
  m.name = "Tesla Model 3";
  m.prize = 50000.00;
  m.color = "Red";
// Display the values of the object
  m.displayZ();
//Example 4
  // Create an object of Specialist class
  Specialist s = Specialist();
  // setting values to the object
  s.name = "Bilal";
  s.age = 30;
  s.listofdegrees = ["MBBS", "MD"];
  s.hospitalname = "ABC Hospital";
  s.specialization = "Cardiologist";
  // Display the values of the object
  s.displayPersonz();
  //example 5
  // Create an object of Rectangle class
  Rectangle r = Rectangle();
  // setting values to the object
  r.diameter1 = 10.0;
  r.diameter2 = 20.0;
  // Display the area of the rectangle
  print("Area of the rectangle: ${r.area()}");

  // Create an object of Triangle class
  Triangle tz = Triangle();
  // setting values to the object
  tz.diameter1 = 10.0;
  tz.diameter2 = 20.0;
  // Display the area of the triangle
  print("Area of the triangle: ${tz.area()}");
}

//* Advantages Of Inheritance In Dart
/*
 It promotes reusability of the code and reduces redundant code.
 It helps to design a program in a better way.
 It makes code simpler, cleaner and saves time and money on maintenance.
 It facilitates the creation of class libraries.
 It can be used to enforce standard interface to all children classes.
*/

//** Types Of Inheritance In Dart

//? Single Inheritance -
// In this type of inheritance, a class can inherit from only one class.
// In Dart, we can only extend one class at a time.

//? Multilevel Inheritance -
//  In this type of inheritance, a class can inherit from another class
//  and that class can also inherit from another class.
//  In Dart, we can extend a class from another class which is already extended
//  from another class.

//? Hierarchical Inheritance -
//  In this type of inheritance, parent class is inherited by multiple subclasses.
//  For example, the Car class can be inherited by the Toyota class and Honda class.

//? Multiple Inheritance -
//  In this type of inheritance, a class can inherit from multiple classes.
//  Dart does not support multiple inheritance.
//  For e.g. Class Toyota extends Car, Vehicle {} is not allowed in Dart.

//? Example 3: Single Inheritance In Dart

class Car {
  // Properties
  String? name;
  double? prize;
}

class Tesla extends Car {
  // Method to display the values of the properties
  void displayTesla() {
    print("Name: $name");
    print("Prize: $prize");
  }
}

//? Example 4: Multilevel Inheritance In Dart

class CarZ {
// Properties
  String? name;
  double? prize;
}

class TeslaZ extends CarZ {
// Method to display the values of the properties
  void displayCarZ() {
    print("Name: $name");
    print("Prize: $prize");
  }
}

class Model3 extends TeslaZ {
// Properties
  String? color;

// Method to display the values of the properties
  void displayZ() {
    super.displayCarZ();
    print("Color: $color");
  }
}

//? Example 5: Multilevel Inheritance

class Personz {
  // Properties
  String? name;
  int? age;
}

class Doctor extends Personz {
  // Properties
  List<String>? listofdegrees;
  String? hospitalname;

  // Method to display the values of the properties
  void displayPersonz() {
    print("Name: $name");
    print("Age: $age");
    print("List of Degrees: $listofdegrees");
    print("Hospital Name: $hospitalname");
  }
}

class Specialist extends Doctor {
  // Properties
  String? specialization;

  // Method to display the values of the properties
  void displaySpecialist() {
    super.displayPersonz();
    print("Specialization: $specialization");
  }
}

//? Example 6: Hierarchical Inheritance

class Shape {
  // Properties
  double? diameter1;
  double? diameter2;
}

class Rectangle extends Shape {
  // Method to calculate the area of the rectangle
  double area() {
    return diameter1! * diameter2!;
  }
}

class Triangle extends Shape {
  // Method to calculate the area of the triangle
  double area() {
    return 0.5 * diameter1! * diameter2!;
  }
}

/*
Key Points

Inheritance is used to reuse the code.

Inheritance is a concept which is achieved by using the //? extends keyword.

Properties and methods of the super class can be accessed by the sub class.

Class Dog extends class Animal{} means Dog is sub class and Animal is super class.

The sub class can have its own properties and methods.

Why Dart Does Not Support Multiple Inheritance?

Dart does not support multiple inheritance because it can lead to ambiguity.
 For example, if class Apple inherits class Fruit and class Vegetable,
 then there may be two methods with the same name eat.
 If the method is called, then which method should be called?
 This is the reason why Dart does not support multiple inheritance.

What’s problem Of Copy Paste Instead Of Inheritance?
If you copy the code from one class to another class, then you will have to
maintain the code in both the classes. If you make any changes in one class,
then you will have to make the same changes in the other class. This can lead
to errors and bugs in the code.

Does Inheritance Finished If I Learned Extending Class?
No, there is a lot more to learn about inheritance. You need to learn about
Constructor Inheritance, Method Overriding, Abstract Class, Interface and Mixin etc.
You will learn about these concepts in the next chapters.
*/
