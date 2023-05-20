//? Late Keyword

// In dart, late keyword is used to declare a variable or field that will be
// initialized at a later time. It is used to declare a non-nullable variable
// that is not initialized at the time of declaration.

// Example 1: Late Keyword
// In this example, name variable is declared as a late variable.
// The name variable is initialized in the main method.

// late variable
late String name;

/* When you put late infront of a variable declearation, you tell Dart the following:

Don’t assign that variable a value yet.
You will assign value later.
You will make sure the variable has a value before you use it.
The late keyword is contract between you and Dart. You are telling Dart that
 you will assign a value to the variable before you use it. If you don’t assign
  a value to the variable before you use it, Dart will throw an error.
*/

//Example 2: Late Keyword

class PersonZ {
  // late variable
  late String name;

  void greet() {
    print("Hello $name");
  }
}

/* Usecase of Late Keyword In Dart
   1. Dart late keyword has two use cases:
   Declaring a non-nullable variable or field that is not initialized 
   at the point of declaration.

  2.Lazy initialization of a variable or field.

What Is Lazy Initialization

Lazy initialization is a design pattern that delays the creation of an object,
 the calculation of a value, or some other expensive process until the first time you need it.

Using late means dart doesn’t initialize value right away, it only initializes
 when you access it for the first time. This is also called lazy loading.
*/
//? Example 3: Late Keyword

// function
String provideCountry() {
  print("Function is called");
  return "USA";
}

//? Example 4: Late Keyword

// Person class
class PersonS {
  final int age;
  final String name;
  late String description = heavyComputation();

// constructor
  PersonS(this.age, this.name) {
    print("Constructor is called");
  }
// method
  String heavyComputation() {
    print("heavyComputation is called");
    return "Heavy Computation";
  }
}

//? Example 5: Late Keyword In Class

class Personm {
  // declaring late variables
  late String fullName = _getFullName();
  late String firstName = fullName.split(" ").first;
  late String lastName = fullName.split(" ").last;

// method
  String _getFullName() {
    print("_getFullName is called");
    return "Adil Ayoub";
  }
}
// main method
// If you remove the late keyword from the fullName variable, the _getFullName
// function will be called when the Person class is instantiated.

// Late Final Keyword
// If you want to assign a value to a variable only once, you can use the
// late final keyword. This is useful when you want to initialize a variable only once.

// Example 6: Late Final Keyword
// Student class
class Student {
  // late final variable
  late final String name;

  // constructor
  Student(this.name);
}

void main() {
  print("Starting");
  // late variable
  late String value = provideCountry();
  print("End");
  print(value);

// object of Person class
  PersonS persons = PersonS(10, "John");
  print(persons.name);
  print(persons.description);

  // object of Student class
  Student student = Student("Hassan");
  print(student.name);
  student.name = "Doe"; // Error

  // assigning value to late variable
  name = "Nasheed";
  print(name);
  //Example 2:
  PersonZ person = PersonZ();
  // late variable is initialized here
  person.name = "John";
  person.greet();

  print("Start");
  Personm personx = Personm();
  print("First Name: ${personx.firstName}");
  print("Last Name: ${personx.lastName}");
  print("Full Name: ${personx.fullName}");
  print("End");
}
