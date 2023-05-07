//! Class

// In object-oriented programming, a class is a blueprint for creating objects.
// A class defines the properties and methods that an object will have.
// For example, a class called Dog might have properties like breed, color
// and methods like bark, run.

// Declaring Class

// class name and braces {}.
// It’s a good habit to write class name in PascalCase.
/*
      Syntax
      class ClassName {
      /// properties or fields
      /// methods or functions
      }
      */

// The class keyword is used for defining the class.
// ClassName is the name of the class and must start with capital letter.
// Body of the class consists of properties and functions.
// Properties are used to store the data. It is also known as fields or attributes.
// Functions are used to perform the operations. It is also known as methods.

// Example 1:

class Animal {
  String? name;
  int? numberOfLegs;
  int? lifeSpan;

  void display() {
    print("Animal name: $name.");
    print("Number of Legs: $numberOfLegs.");
    print("Life Span: $lifeSpan.");
  }
}

// This program will not print anything because we have not created
// any object of the class. You will learn about the object later.
// The ? is used for null safety. we will also learn about null safety later.

// Example 2: Declaring A Person Class

class Person {
  String? name;
  String? phone;
  bool? isMarried;
  int? age;

  void displayInfo() {
    print("Person name: $name.");
    print("Phone number: $phone.");
    print("Married: $isMarried.");
    print("Age: $age.");
  }
}
// Example 3: Declaring Area Class

class Area {
  double? length;
  double? breadth;

  double calculateArea() {
    return length! * breadth!;
  }
}
// Example 4: Declaring A Student Class

class Student {
  String? name;
  int? age;
  int? grade;

  void displayInfo() {
    print("Student name: $name.");
    print("Student age: $age.");
    print("Student grade: $grade.");
  }
}
