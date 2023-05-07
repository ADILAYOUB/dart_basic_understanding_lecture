// Default Constructor
// In this example below, there is a class Laptop with two properties:
// brand, and prize. Lets create constructor with no parameter and print
// something from the constructor. We also have an object of the
// class Laptop called laptop.
import 'dart:convert';

class Laptop {
  String? brand;
  int? prize;

  // Constructor
  Laptop() {
    print("This is a default constructor");
  }
}

//? Example 2: Default Constructor In Dart
// In this example below, there is a class Student with four properties: name, age, schoolname and grade. The default constructor is used to initialize the values of the school name. The reason for this is that the school name is the same for all the students. We also have an object of the class Student called student. The default constructor is called automatically when you create an object of the class.

class Student {
  String? name;
  int? age;
  String? schoolname;
  String? grade;

  // Default Constructor
  Student() {
    print(
        "Constructor called"); // this is for checking the constructor is called or not.
    schoolname = "ABC School";
  }
}

//! Parameterized Constructor

// Parameterized constructor is used to initialize the instance variables
// of the class. Parameterized constructor is the constructor that takes
// parameters. It is used to pass the values to the constructor at the time
// of object creation.

//? Syntax
class ClassName {
  // Instance Variables
  int? number;
  String? name;
  // Parameterized Constructor
  ClassName(this.number, this.name);
}

//? Example 1: Parameterized Constructor
class Students {
  String? name;
  int? age;
  int? rollNumber;
  // Constructor
  Students(name, age, rollNumber);
}

//? Example 2: Parameterized Constructor With Named Parameters
class StudentTwo {
  String? name;
  int? age;
  int? rollNumber;

  // Constructor
  StudentTwo({String? name, int? age, int? rollNumber}) {
    name = name;
    age = age;
    rollNumber = rollNumber;
  }
}

//? Example 3: Parameterized Constructor With Default Values
class StudentThree {
  String? name;
  int? age;

  // Constructor
  StudentThree({String? name = "Arshid", int? age = 0}) {
    name = name;
    age = age;
  }
}

//! Named Constructor In Dart

// In most programming languages like java, c++, c#, etc., we can create
// multiple constructors with the same name. But in Dart, this is not possible.
// Well, there is a way. We can create multiple constructors with the same name
// using named constructors.

// Named constructors improves code readability. It is useful when you want to
// create multiple constructors with the same name.

// Example 1: Named Constructor
class StudentClass {
  String? name;
  int? age;
  int? rollNumber;

  // Default Constructor
  StudentClass() {
    print("This is a default constructor");
  }

  // Named Constructor
  StudentClass.namedConstructor(String name, int age, int rollNumber) {
    name = name;
    age = age;
    rollNumber = rollNumber;
  }
}

//Example 2: Named Constructor
class Mobile {
  String? name;
  String? color;
  int? prize;

  Mobile(this.name, this.color, this.prize);
  // here Mobile() is a named constructor
  Mobile.namedConstructor(this.name, this.color, [this.prize = 0]);

  void displayMobileDetails() {
    print("Mobile name: $name.");
    print("Mobile color: $color.");
    print("Mobile prize: $prize");
  }
}

class Person {
  String? name;
  int? age;

  Person(this.name, this.age);

  Person.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    age = json['age'];
  }

  Person.fromJsonString(String jsonString) {
    Map<String, dynamic> json = jsonDecode(jsonString);
    name = json['name'];
    age = json['age'];
  }
}

//! Constant Constructor

// Constant constructor is a constructor that creates a constant object.
// A constant object is an object whose value cannot be changed.
// A constant constructor is declared using the keyword const.

// Constant Constructor is used to create a object whose value cannot be changed.
// It Improves the performance of the program.

// Rule For Declaring Constant Constructor
// All properties of the class must be final.
// It does not have any body.
// Only class containing const constructor is initialized using the const keyword.
//Example 1: Constant Constructor In Dart

class Pointz {
  final int x;
  final int y;

  const Pointz(this.x, this.y);
}

// Example 3: Constant Constructor With Named Parameters
class Carz {
  final String? name;
  final String? model;
  final int? prize;

  // Constant Constructor
  const Carz({this.name, this.model, this.prize});
}

// Benefits Of Constant Constructor In Dart => Improves the performance of the program.
void main() {
  // Example 1
  // Here student is object of class Student.
  Students student = Students("vendth", 20, 1);
  print("Name: ${student.name}");
  print("Age: ${student.age}");
  print("Roll Number: ${student.rollNumber}");

  // Here student is object of class Student.
  StudentTwo students = StudentTwo(name: "John", age: 20, rollNumber: 1);
  print("Name: ${students.name}");
  print("Age: ${students.age}");
  print("Roll Number: ${students.rollNumber}");

  //Example 2
  // Here student is object of class Student.
  StudentThree studentThree = StudentThree();
  print("Name: ${studentThree.name}");
  print("Age: ${studentThree.age}");

  //? Named Constructor
  // Here student is object of class Student.
  StudentClass studentz = StudentClass.namedConstructor("Mohammad", 20, 1);
  print("Name: ${studentz.name}");
  print("Age: ${studentz.age}");
  print("Roll Number: ${studentz.rollNumber}");
  //
  var mobile1 = Mobile("Samsung", "Black", 20000);
  mobile1.displayMobileDetails();
  var mobile2 = Mobile.namedConstructor("Apple", "White");
  mobile2.displayMobileDetails();
// Here person is object of class Person.
  String jsonString1 = '{"name": "Basit", "age": 25}';
  String jsonString2 = '{"name": "Javid", "age": 30}';

  Person p1 = Person.fromJsonString(jsonString1);
  print("Person 1 name: ${p1.name}");
  print("Person 1 age: ${p1.age}");

  Person p2 = Person.fromJsonString(jsonString2);
  print("Person 2 name: ${p2.name}");
  print("Person 2 age: ${p2.age}");
  //? Constant Constructor
  // Here car is object of class Car.
  const Carz carz = Carz(name: "BMW", model: "X5", prize: 50000);
  print("Name: ${carz.name}");
  print("Model: ${carz.model}");
  print("Prize: ${carz.prize}");

  // p1 and p2 has the same hash code.
  Pointz p11 = const Pointz(1, 2);
  print("The p1 hash code is: ${p11.hashCode}");

  Pointz p22 = const Pointz(1, 2);
  print("The p2 hash code is: ${p22.hashCode}");
  // without using const
  // this has different hash code.
  Pointz p3 = Pointz(2, 2);
  print("The p3 hash code is: ${p3.hashCode}");

  Pointz p4 = Pointz(2, 2);
  print("The p4 hash code is: ${p4.hashCode}");
}
