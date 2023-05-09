//! Static In Dart
// If you want to define a variable or method that is shared by all instances
// of a class, you can use the static keyword. Static members are accessed using
// the class name. It is used for memory management.

// Dart Static Variable
// A static variable is a variable that is shared by all instances of a class.
// It is declared using the static keyword. It is initialized only once when the
// class is loaded. It is used to store the class-level data.

// How To Declare A Static Variable
// To declare a static variable in Dart, you must use the static keyword before
// the variable name.

/*
class ClassName {
  static dataType variableName;
}*/

// How To Initialize A Static Variable
// To initialize a static variable simply assign a value to it.

/*
class ClassName {
  static dataType variableName = value;
  /// for e.g 
  /// static int num = 10;
  /// static String name = "Dart";
}*/

// How To Access A Static Variable In Dart

// You need to use the ClassName.variableName to access a static variable in Dart.
/*
class ClassName {
  static dataType variableName = value;
  /// Accessing the static variable inside same class
  void display() {
    print(variableName);
  }
}
void main() {
  /// Accessing static variable outside the class
  dataType value =ClassName.variableName;
}*/

import 'dart:math';

// Example 1: Static Variable
class Employee {
  // Static variable
  static int count = 0;
  // Constructor
  Employee() {
    count++;
  }
  // Method to display the value of count
  void totalEmployee() {
    print("Total Employee: $count");
  }
}

void main() {
  // Creating objects of Employee class
  Employee e1 = Employee();
  e1.totalEmployee();
  Employee e2 = Employee();
  e2.totalEmployee();
  Employee e3 = Employee();
  e3.totalEmployee();

  //Example 2
  Student s1 = Student(1, "Sameer!");
  s1.display();
  Student s2 = Student(2, "Rashid");
  s2.display();

  // Example 3
  print(
      "The simple interest is ${SimpleInterest.calculateInterest(1000, 2, 2)}");
  // Example 4
  print(PasswordGenerator.generateRandomPassword());
}

// While creating the objects of the class, the static variable count is
// incremented by 1. The totalEmployee() method displays the value of the
// static variable count.

// Example 2: Static Variable

class Student {
  int id;
  String name;
  static String schoolName = "ABC School";
  Student(this.id, this.name);
  void display() {
    print("Id: $id");
    print("Name: $name");
    print("School Name: ${Student.schoolName}");
  }
}

// Dart Static Method
// A static method is shared by all instances of a class. It is declared using
// the static keyword. You can access a static method without creating an object
// of the class.

/*
class ClassName{
static returnType methodName(){
  /// statements
}
}*/

// Example 3: Static Method

class SimpleInterest {
  static double calculateInterest(double principal, double rate, double time) {
    return (principal * rate * time) / 100;
  }
}

// Example 4: Static Method

class PasswordGenerator {
  static String generateRandomPassword() {
    List<String> allalphabets = 'abcdefghijklmnopqrstuvwxyz'.split('');
    List<int> numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
    List<String> specialCharacters = ["@", "#", "%", "&", "*"];
    List<String> password = [];
    for (int i = 0; i < 5; i++) {
      password.add(allalphabets[Random().nextInt(allalphabets.length)]);
      password.add(numbers[Random().nextInt(numbers.length)].toString());
      password
          .add(specialCharacters[Random().nextInt(specialCharacters.length)]);
    }
    return password.join();
  }
}
