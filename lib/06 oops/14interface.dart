//? Introduction
// In this section, you will learn the dart interface and how to implement an
// interface with the help of examples.
// In Dart, every class is implicit interface. Before learning about the
// interface in dart, you should have a basic understanding of the class
// and objects, inheritance and abstract class in Dart.

// Interface In Dart
// An interface defines a syntax that a class must follow.
// It is a contract that defines the capabilities of a class.
// It is used to achieve abstraction in the Dart programming language.
// When we implement an interface, you must implement all the properties
// and methods defined in the interface. Keyword implements is used to
// implement an interface.

// Syntax Of Interface In Dart
// class InterfaceName {
// code
// }

// class ClassName implements InterfaceName {
//   code
// }

// Declaring Interface

// In dart there is no keyword interface but you can use class or abstract class
// to declare an interface. All classes implicitly define an interface.
// Mostly abstract class is used to declare an interface.

// creating an interface using abstract class
abstract class Person {
  canWalk();
  canRun();
}

// Implementing Interface
// You must use the implements keyword to implement an interface.
// The class that implements an interface must implement all the methods
// and properties of the interface.

// class Student implements Person {
//  // implementation of canWalk()
//   @override
//   canWalk() {
//     print('Student can walk');
//   }

// // implementation of canRun()
//   @override
//   canRun() {
//     print('Student can run');
//   }
// }

// Example 2
// creating an interface using concrete class
class Laptop {
  // method
  turnOn() {
    print('Laptop turned on');
  }

  // method
  turnOff() {
    print('Laptop turned off');
  }
}

class MacBook implements Laptop {
  // implementation of turnOn()
  @override
  turnOn() {
    print('MacBook turned on');
  }

  // implementation of turnOff()
  @override
  turnOff() {
    print('MacBook turned off');
  }
}

void main() {
  var macBook = MacBook();
  macBook.turnOn();
  macBook.turnOff();
}
