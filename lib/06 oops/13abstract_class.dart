// Abstract Class
// Abstract classes are classes that cannot be initialized.
// It is used to define the behavior of a class that can be inherited
// by other classes. An abstract class is declared using
// the keyword abstract.

// Syntax
// abstract class ClassName {
//   //Body of abstract class

//   method1();
//   method2();
// }
// Abstract Method An abstract method is a method that is declared without
// an implementation. It is declared with a semicolon (;)
// instead of a method body.

// Why We Need Abstract Class
// Subclasses of an abstract class must implement all the abstract methods
// of the abstract class. It is used to achieve abstraction in the
// Dart programming language.

//? Example 1:
abstract class Vehicle {
  // Abstract method
  void start();
  // Abstract method
  void stop();
}

class Car extends Vehicle {
  // Implementation of start()
  @override
  void start() {
    print('Car started');
  }

  // Implementation of stop()

  @override
  void stop() {
    print('Car stopped');
  }
}

class Bike extends Vehicle {
  // Implementation of start()

  @override
  void start() {
    print('Bike started');
  }

  // Implementation of stop()

  @override
  void stop() {
    print('Bike stopped');
  }
}
// The abstract class is used to define the behavior of a class that can be inherited by other classes. You can define an abstract method inside an abstract class.

// Example 2: Abstract Class In Dart
abstract class Shape {
  int dim1, dim2;
  // Constructor
  Shape(this.dim1, this.dim2);
  // Abstract method
  void area();
}

class RectangleZ extends Shape {
  // Constructor
  RectangleZ(int dim1, int dim2) : super(dim1, dim2);

  // Implementation of area()
  @override
  void area() {
    print('The area of the rectangle is ${dim1 * dim2}');
  }
}

class TriangleZ extends Shape {
  // Constructor
  TriangleZ(int dim1, int dim2) : super(dim1, dim2);

  // Implementation of area()
  @override
  void area() {
    print('The area of the triangle is ${0.5 * dim1 * dim2}');
  }
}

// Constructor In Abstract Class
// You can’t create an object of an abstract class. However,
// you can define a constructor in an abstract class.
// The constructor of an abstract class is called when an object
// of a subclass is created.

// Example 3:

abstract class Bank {
  String name;
  double rate;

  // Constructor
  Bank(this.name, this.rate);

  // Abstract method
  void interest();

  //Non-Abstract method: It have an implementation
  void display() {
    print('Bank Name: $name');
  }
}

class SBI extends Bank {
  // Constructor
  SBI(String name, double rate) : super(name, rate);

  // Implementation of interest()
  @override
  void interest() {
    print('The rate of interest of SBI is $rate');
  }
}

class ICICI extends Bank {
  // Constructor
  ICICI(String name, double rate) : super(name, rate);

  // Implementation of interest()
  @override
  void interest() {
    print('The rate of interest of ICICI is $rate');
  }
}

void main() {
  Car car = Car();
  car.start();
  car.stop();

  Bike bike = Bike();
  bike.start();
  bike.stop();
  RectangleZ rectangle = RectangleZ(10, 20);
  rectangle.area();

  TriangleZ triangle = TriangleZ(10, 20);
  triangle.area();

  SBI sbi = SBI('SBI', 8.4);
  ICICI icici = ICICI('ICICI', 7.3);

  sbi.interest();
  icici.interest();
  icici.display();
}

// You can’t create an object of an abstract class.
// It can have both abstract and non-abstract methods.
// It is used to define the behavior of a class that other classes can inherit.
// Abstract method only has a signature and no implementation.
