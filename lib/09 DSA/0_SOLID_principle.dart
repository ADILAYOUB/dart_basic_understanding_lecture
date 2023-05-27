// ? The SOLID principles are a set of five design principles that promote
//   software designs that are easy to understand, maintain, and extend.
//   They were introduced by Robert C. Martin (also known as Uncle Bob)
//   and are widely used in object-oriented programming. Let's explore
//   each principle and provide code examples in Dart.

//! 1. Single Responsibility Principle (SRP):
// This principle states that a class should have only one reason to change.
// In other words, a class should have a single responsibility.

class Order {
  void calculateTotalPrice() {
    // Calculate total price logic
  }

  void generateInvoice() {
    // Generate invoice logic
  }
}
// In the example above, the Order class violates the SRP because it has two
// responsibilities: calculating the total price and generating an invoice.
// It would be better to separate these responsibilities into different classes,
// such as OrderCalculator and InvoiceGenerator, each responsible for a single task.

//! 2. Open-Closed Principle (OCP):
//  This principle states that classes should be open for extension but closed
//  for modification. In other words, you should be able to add new
//  functionality to a class without modifying its existing code.

abstract class Shape {
  double calculateArea();
}

class Rectangle implements Shape {
  late double width;
  late double height;

  @override
  double calculateArea() {
    return width * height;
  }
}

class Circle implements Shape {
  late double radius;

  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }
}

// In this example, the Shape interface is open for extension as we can create
// new shapes that implement it, such as Rectangle and Circle.
// The calculateArea method allows us to calculate the area for different
// shapes without modifying the existing code.
// This promotes code reuse and maintainability.

//! 3. Liskov Substitution Principle (LSP):
// This principle states that objects of a superclass should be replaceable
// with objects of its subclasses without affecting the correctness of the program.

class Vehiclezz {
  void startEngine() {
    // Start the engine
  }
}

class Car extends Vehiclezz {
  @override
  void startEngine() {
    // Start the car's engine
  }
}

class Bicycle extends Vehiclezz {
  // Bicycles don't have an engine
}
// In this example, the Car class and Bicycle class are both subclasses
// of Vehicle. According to LSP, we should be able to substitute an instance
// of Vehicle with either Car or Bicycle without any issues.
// The startEngine method is overridden in the subclasses, allowing them
// to provide their own implementation.
// This principle ensures that the behavior of the superclass is preserved in
// its subclasses.

//! 4. Interface Segregation Principle (ISP):
// This principle states that clients should not be forced to depend on
// interfaces they do not use. It promotes creating specific interfaces
// for clients instead of having a single monolithic interface.

abstract class Printer {
  void print();
  void scan();
  void fax();
}

class BasicPrinter implements Printer {
  @override
  void print() {
    // Print logic
  }

  @override
  void scan() {
    // Not supported by the basic printer
  }

  @override
  void fax() {
    // Not supported by the basic printer
  }
}

class AdvancedPrinter implements Printer {
  @override
  void print() {
    // Print logic
  }

  @override
  void scan() {
    // Scan logic
  }

  @override
  void fax() {
    // Fax logic
  }
}
// In this example, the Printer interface defines three methods:
// print, scan, and fax. However, not all printers may support scanning
// or faxing. Instead of forcing all printers to implement these methods,
// we create separate interfaces (Printable, Scannable, Faxable) for clients
// based on their specific needs. The BasicPrinter and AdvancedPrinter classes
// implement the appropriate interfaces, allowing clients to depend only on the
// interfaces they require.

//! 5. Dependency Inversion Principle (DIP):
// This principle states that high-level modules should not depend on
// low-level modules. Both should depend on abstractions.
// It promotes decoupling and allows for flexibility and easy swapping
// of implementations.

class Logger {
  void log(String message) {
    // Log message to a file
  }
}

class UserService {
  Logger logger;

  UserService(this.logger);

  void createUser(String username, String password) {
    // Create user logic

    logger.log('User created: $username');
  }
}
// In this example, the UserService depends on the Logger class for logging.
// However, the UserService should not directly depend on the Logger implementation.
// Instead, it should depend on an abstraction (interface or abstract class).
// By doing so, we can easily switch the logger implementation without modifying
// the UserService code. This promotes flexibility, modularity, and testability.

// By following the SOLID principles, you can create maintainable, flexible,
// and reusable code that is easier to understand and modify.
// These principles help in achieving separation of concerns, reducing code
// duplication, promoting code reuse, and improving overall software design quality.
