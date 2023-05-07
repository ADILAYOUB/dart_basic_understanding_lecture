// What is Class
// A class is a blueprint for creating objects. A class defines the properties
// and methods that an object will have. .

// What is Object
// An object is an instance of a class. You can create multiple objects of the
// same class.

//? Example Of A Class & Object
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

//? Example 2: Find Area Of Ractangle Using Class and Objects

class Rectangle {
  //properties of rectangle
  double? length;
  double? breadth;

  //functions of rectangle
  double area() {
    return length! * breadth!;
  }
}

//? Example 3: Find Simple Interest Using Class and Objectsxample below there is class SimpleInterest with three properties: principal, rate, and time. The class also has a method called interest, which calculates the simple interest.

class SimpleInterest {
  //properties of simple interest
  double? principal;
  double? rate;
  double? time;

  //functions of simple interest
  double interest() {
    return (principal! * rate! * time!) / 100;
  }
}

void main() {
  //Example 1
  // Here animal is object of class Animal.
  Animal animal = Animal();
  animal.name = "Lion";
  animal.numberOfLegs = 4;
  animal.lifeSpan = 10;
  animal.display();
  //Example 2
  //object of rectangle created
  Rectangle rectangle = Rectangle();

  //setting properties for rectangle
  rectangle.length = 10;
  rectangle.breadth = 5;

  //functions of rectangle called
  print("Area of rectangle is ${rectangle.area()}.");
  //object of simple interest created
  SimpleInterest simpleInterest = SimpleInterest();

  //setting properties for simple interest
  simpleInterest.principal = 1000;
  simpleInterest.rate = 10;
  simpleInterest.time = 2;

  //functions of simple interest called
  print("Simple Interest is ${simpleInterest.interest()}.");
}
