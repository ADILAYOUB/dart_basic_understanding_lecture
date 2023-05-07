// Encapsulation

// In Dart, Encapsulation means hiding data within a library, preventing
// it from outside factors. It helps you control your program and prevent
// it from becoming too complicated.

// What Is Library In Dart? By default, every .dart file is a library.
// A library is a collection of functions and classes.
// A library can be imported into another library using the import keyword.

// Encapsulation can be achieved by:
// Declaring the class properties as private by using underscore(_).
// Providing public getter and setter methods to access and update the value of private property.

//? Example 1: Encapsulation
class Employee {
  // Private properties
  int? _id;
  String? _name;

// Getter method to access private property _id
  int getId() {
    return _id!;
  }

// Getter method to access private property _name
  String getName() {
    return _name!;
  }

// Setter method to update private property _id
  void setId(int id) {
    _id = id;
  }

// Setter method to update private property _name
  void setName(String name) {
    _name = name;
  }
}
// How To Create Getter and Setter Methods?
// You can create getter and setter methods by using the get and set keywords.
// In this example below, we have created a class named Vehicle.
// The class has two private properties _model and _year. We have also created two getter and setter methods for each property. The getter and setter methods are named model and year. The getter and setter methods are used to access and update the value of the private properties.

class Vehicle {
  late String _model;
  late int _year;

  // Getter method
  String get model => _model;

  // Setter method
  set model(String model) => _model = model;

  // Getter method
  int get year => _year;

  // Setter method
  set year(int year) => _year = year;
}

//? Getter is used to get the value of a property.
// It is mostly used to access a private property’s value.
// Getter provide explicit read access to an object properties.

// Syntax
// return_type get property_name {
//    Getter body
// }

//? Setter is used to set the value of a property.
// It is mostly used to update a private property’s value.
// Setter provide explicit write access to an object properties.

// Syntax
// set property_name (value) {
//    Setter body
// }

// Instead of writing { } after the property name,
// you can also write => (fat arrow) after the property name.

class BankAccount {
  // Private Property
  double _balance = 0.0;

  // Getter to read private property _balance
  double get balance => _balance;

  // Method to deposit money
  void deposit(double amount) {
    _balance += amount;
  }

  // Method to withdraw money
  void withdraw(double amount) {
    if (_balance >= amount) {
      _balance -= amount;
    } else {
      throw Exception("Insufficient Balance");
    }
  }
}

void main() {
  // Create an object of Employee class
  Employee emp = Employee();
  // setting values to the object using setter
  emp.setId(1);
  emp.setName("John");

  // Retrieve the values of the object using getter
  print("Id: ${emp.getId()}");
  print("Name: ${emp.getName()}");

  var vehicle = Vehicle();
  vehicle.model = "Toyota";
  vehicle.year = 2019;
  print(vehicle.model);
  print(vehicle.year);

  // Create an object of BankAccount class
  BankAccount account = BankAccount();
  // Deposit money
  account.deposit(1000);
  // Display the balance
  print("Balance after deposit: ${account.balance}");
  // Withdraw money
  account.withdraw(500);
  // Display the balance
  print("Balance after withdraw: ${account.balance}");
}
//  In dart, any identifier like (class, class properties, top-level function, or variable)
// that starts with an underscore _ it is private to its library.

// Why Encapsulation Is Important?
/*
Data Hiding: Encapsulation hides the data from the outside world. 
             It prevents the data from being accessed by the code outside the class. 
            This is known as data hiding.

Testability: Encapsulation allows you to test the class in isolation. 
             It will enable you to test the class without testing the code outside the class.

Flexibility: Encapsulation allows you to change the implementation of the
             class without affecting the code outside the class.

Security: Encapsulation allows you to restrict access to the class members.
         It will enable you to limit access to the class members from the code
          outside the library.
*/
