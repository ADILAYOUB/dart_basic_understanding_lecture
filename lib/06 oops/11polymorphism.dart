//? Polymorphism In Dart

// Poly means many and morph means forms. Polymorphism is the ability of an
// object to take on many forms. As humans, we have the ability to take on many
// forms. We can be a student, a teacher, a parent, a friend, and so on.
// Similarly, in object-oriented programming, polymorphism is the ability of an
// object to take on many forms.

// In the real world, polymorphism is updating or modifying the feature,
// function, or implementation that already exists in the parent class.

// Polymorphism By Method Overriding
// Method overriding is a technique in which you can create a method in the
// child class that has the same name as the method in the parent class.
// The method in the child class overrides the method in the parent class.

// Syntax
// class ParentClass{
// void functionName(){
//   }
// }
// class ChildClass extends ParentClass{
// @override
// void functionName(){
//   }
// }

// ? Example 1: Polymorphism By Method Overriding

class Animal {
  void eat() {
    print("Animal is eating");
  }
}

class Dog extends Animal {
  @override
  void eat() {
    print("Dog is eating");
  }
}

// Example 2: Polymorphism By Method Overriding

class Vehicle {
  void run() {
    print("Vehicle is running");
  }
}

class Bus extends Vehicle {
  @override
  void run() {
    print("Bus is running");
  }
}

// If you don’t write @override, the program still runs.
// But, it is a good practice to write @override.

// Example 3: Polymorphism By Method Overriding

class Car {
  void power() {
    print("It runs on petrol.");
  }
}

class Honda extends Car {}

class Tesla extends Car {
  @override
  void power() {
    print("It runs on electricity.");
  }
}

// Example 4: Polymorphism By Method Overriding

class Employee {
  void salary() {
    print("Employee salary is \$1000.");
  }
}

class Manager extends Employee {
  @override
  void salary() {
    print("Manager salary is \$2000.");
  }
}

class Developer extends Employee {
  @override
  void salary() {
    print("Developer salary is \$3000.");
  }
}

void main() {
  Animal animal = Animal();
  animal.eat();

  Dog dog = Dog();
  dog.eat();

  Vehicle vehicle = Vehicle();
  vehicle.run();

  Bus bus = Bus();
  bus.run();

  Honda honda = Honda();
  Tesla tesla = Tesla();

  honda.power();
  tesla.power();

  Manager manager = Manager();
  Developer developer = Developer();

  manager.salary();
  developer.salary();
}
