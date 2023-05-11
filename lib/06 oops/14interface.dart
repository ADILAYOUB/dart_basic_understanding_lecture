//? Introduction
// In this section, you will learn the dart interface and how to implement an
// interface with the help of examples.rt.

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
  //Example 2
  Rectangle rectangle = Rectangle(10, 20);
  rectangle.area();
  rectangle.perimeter();
}

// Multiple Inheritance
// Multiple inheritance means a class can inherit from more than one class.
// In dart, you can’t inherit from more than one class.
// But you can implement multiple interfaces in a class.

// Syntax For Implementing Multiple Interfaces In Dart
// class ClassName implements Interface1, Interface2, Interface3 {
//   // code
// }
// Example 3:
// abstract class as interface
abstract class Area {
  void area();
}

// abstract class as interface
abstract class Perimeter {
  void perimeter();
}

// implements multiple interfaces
class Rectangle implements Area, Perimeter {
  // properties
  int length, breadth;

  // constructor
  Rectangle(this.length, this.breadth);

// implementation of area()
  @override
  void area() {
    print('The area of the rectangle is ${length * breadth}');
  }

// implementation of perimeter()
  @override
  void perimeter() {
    print('The perimeter of the rectangle is ${2 * (length + breadth)}');
  }
}



/**
 * 
 * 
 * Difference Between Extends & Implements
extends	                                          implements
Used to inherit a class in another class.	       Used to inherit a class as an interface in another class.

Gives complete method definition to sub-class.   Gives abstract method definition to sub-class.

Only one class can be extended.	                 Multiple classes can be implemented.

It is optional to override the methods.	         Concrete class must override the methods of an interface.

Constructors of the superclass is                Constructors of the superclass is not called before the sub-class constructor.
called before the sub-class constructor.	

The super keyword is used to access the          Interface members can’t be accessed using the super keyword.
members of the superclass.	

Sub-class need not to override the fields        Subclass must override the fields of the interface.
 of the superclass.	


 Key Points To Remember:
1. An interface is a contract that defines the capabilities of a class.
2. Dart has no keyword interface, but you can use class or abstract class to declare an interface.
3. Use abstract class to declare an interface.
4. A class can extend only one class but can implement multiple interfaces.
5. Using the interface, you can achieve multiple inheritance in Dart.
6. It is used to achieve abstraction.
 */
