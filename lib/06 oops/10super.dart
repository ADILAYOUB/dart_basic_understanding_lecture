//! Super In Dart

// In this example below, the show() method of the MacBook class calls
// the show() method of the parent class using the super keyword.

// ignore_for_file: overridden_fields

class LaptopS {
  // Method
  void show() {
    print("Laptop show method");
  }
}

class MacBookS extends LaptopS {
  @override
  void show() {
    super.show(); // Calling the show method of the parent class
    print("MacBook show method");
  }
}

void main() {
  // Creating an object of the MacBook class
  MacBookS macbook = MacBookS();
  macbook.show();
  var tesla = Tesla();
  tesla.display();
  // ignore: unused_local_variable
  Manager manager = Manager("John", 25000.0);
  var macbookpro = MacBookPro();
  macbookpro.display();
}

// Example 2: Accessing Super Properties

class Car {
  int noOfSeats = 4;
}

class Tesla extends Car {
  @override
  int noOfSeats = 6;

  void display() {
    print("No of seats in Tesla: $noOfSeats");
    print("No of seats in Car: ${super.noOfSeats}");
  }
}
// Example 3: Super With Constructor

class Employee {
  // Constructor
  Employee(String name, double salary) {
    print("Employee constructor");
    print("Name: $name");
    print("Salary: $salary");
  }
}

class Manager extends Employee {
  // Constructor
  Manager(String name, double salary) : super(name, salary) {
    print("Manager constructor");
  }
}

class Laptop {
  // Method
  void display() {
    print("Laptop display");
  }
}

class MacBook extends Laptop {
  // Method
  @override
  void display() {
    print("MacBook display");
    super.display();
  }
}

class MacBookPro extends MacBook {
  // Method
  @override
  void display() {
    print("MacBookPro display");
    super.display();
  }
}
