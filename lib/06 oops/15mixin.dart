// Introduction
// In this section, you will learn about dart mixins to reuse the code
// in multiple classes.

//? Mixin
// Mixins are a way of reusing the code in multiple classes. Mixins are declared
// using the keyword mixin followed by the mixin name. Three keywords are used
// while working with mixins: mixin, with, and on. It is possible to use multiple
// mixins in a class.

// The with keyword is used to apply the mixin to the class.
// It promotes DRY(Don’t Repeat Yourself) principle.

// Rules For Mixin
// Mixin can’t be instantiated. You can’t create object of mixin.
// Use the mixin to share the code between multiple classes.
// Mixin has no constructor and cannot be extended.
// It is possible to use multiple mixins in a class.
// Syntax
mixin Mixin1 {
  // code
}

mixin Mixin2 {
  // code
}

class ClassName with Mixin1, Mixin2 {
  // code
}

//Example:
mixin ElectricVariant {
  void electricVariant() {
    print('This is an electric variant');
  }
}

mixin PetrolVariant {
  void petrolVariant() {
    print('This is a petrol variant');
  }
}

// with is used to apply the mixin to the class
class Car with ElectricVariant, PetrolVariant {
  // here we have access of electricVariant() and petrolVariant() methods
}

void main() {
  //Example 1
  var car = Car();
  car.electricVariant();
  car.petrolVariant();

  //Example 2
  var bird = Bird();
  bird.fly();
  bird.walk();

  var human = Human();
  human.walk();
  //Example: 3
  var dog = Dog('My Dog', 25);
  dog.run();
}

//Example 2
mixin CanFly {
  void fly() {
    print('I can fly');
  }
}

mixin CanWalk {
  void walk() {
    print('I can walk');
  }
}

class Bird with CanFly, CanWalk {}

class Human with CanWalk {}

//Example: 3
abstract class Animal {
  // properties
  String name;
  double speed;

  // constructor
  Animal(this.name, this.speed);

  // abstract method
  void run();
}

// mixin CanRun is only used by class that extends Animal
mixin CanRun on Animal {
  // implementation of abstract method
  @override
  void run() => print('$name is Running at speed $speed');
}

class Dog extends Animal with CanRun {
  // constructor
  Dog(String name, double speed) : super(name, speed);
}

// Not Possible
// class Bird with Animal { }

/**
 * What Is Allowed For Mixin
    1. You can add properties and static variables.
    2. You can add regular, abstract, and static methods.
    3. You can use one or more mixins in a class.
    4. What Is Not Allowed For Mixin
    5. You can’t define a constructor.
    6. You can’t extend a mixin.
    7. You can’t create an object of mixin.
 */
