//! Object In Dart

// In object-oriented programming, an object is a self-contained unit of code
// and data. Objects are created from templates called classes.
// An object is made up of properties(variables) and methods(functions).
// An object is an instance of a class.

// To create an object, you must create a class first. It’s a good practice
// to declare the object name in lower case.

// Instantiation
// In object-oriented programming, instantiation is the process of creating
// an instance of a class. In other words, you can say that instantiation is
// the process of creating an object of a class.
// For example, if you have a class called Bicycle, then you can create an
// object of the class called bicycle.

// Syntax
// ClassName objectName = ClassName();
//
//Example 1: Declaring An Object
class Bicycle {
  String? color;
  int? size;
  int? currentSpeed;

  void changeGear(int newValue) {
    currentSpeed = newValue;
  }

  void display() {
    print("Color: $color");
    print("Size: $size");
    print("Current Speed: $currentSpeed");
  }
}

//  Once you create an object, you can access the properties and methods
//  of the object using the dot(.) operator.

//Example 2: Declaring Animal Class Object

class Animal {
  String? name;
  int? numberOfLegs;
  int? lifeSpan;

  void display() {
    print("Animal name: $name.");
    print("Number of Legs: $numberOfLegs.");
    print("Life Span: $lifeSpan.");
  }
}

//Example 3: Declaring Car Class Object
class Car {
  String? name;
  String? color;
  int? numberOfSeats;

  void start() {
    print("$name Car Started.");
  }
}

void main() {
  //Example 1
  // Here bicycle is object of class Bicycle.
  Bicycle bicycle = Bicycle();
  bicycle.color = "Red";
  bicycle.size = 26;
  bicycle.currentSpeed = 0;
  bicycle.changeGear(5);

  //example 2
  // Here animal is object of class Animal.
  Animal animal = Animal();
  animal.name = "Lion";
  animal.numberOfLegs = 4;
  animal.lifeSpan = 10;
  animal.display();
  // Here car is object of class Car.
  Car car = Car();
  car.name = "BMW";
  car.color = "Red";
  car.numberOfSeats = 4;
  car.start();

  // Here car2 is another object of class Car.
  Car car2 = Car();
  car2.name = "Audi";
  car2.color = "Black";
  car2.numberOfSeats = 4;
  car2.start();
}

// The main method is the program’s entry point, so it is always needed to see the result.
// The new keyword can be used to create a new object, but it is unnecessary.
