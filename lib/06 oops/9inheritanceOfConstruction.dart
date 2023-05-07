//? Example 1: Inheritance Of Constructor

// In this example below, there is class named Laptop with a constructor.
// There is another class named MacBook which extends the Laptop class.
// The MacBook class has its own constructor.

class Laptop {
  // Constructor
  Laptop() {
    print("Laptop constructor");
  }
}

class MacBook extends Laptop {
  // Constructor
  MacBook(String s, String ss) {
    print("MacBook constructor");
  }
}

void main() {
  var macbook = MacBook('Dell', 'Black');
  print(macbook);
  var macbookZ = MacBook("MacBook Pro", "Silver");
  print(macbookZ);
  var student = Student("Fasil", 20, 1);
  print("Student name: ${student.name}");
  print("Student age: ${student.age}");
  print("Student roll number: ${student.rollNumber}");
  var macbookzz = MacBookSu(name: "MacBook Pro", color: "Silver");
  print(macbookzz);
}

//The constructor of the parent class is called first and then the constructor of the child class is called.

// Example 2: Inheritance Of Constructor With Parameters

class LaptopZ {
  // Constructor
  LaptopZ(String name, String color) {
    print("Laptop constructor");
    print("Name: $name");
    print("Color: $color");
  }
}

class MacBookZ extends LaptopZ {
  // Constructor
  MacBookZ(String name, String color) : super(name, color) {
    print("MacBook constructor");
  }
}

// Example 3: Inheritance Of Constructor

class Person {
  String name;
  int age;

  // Constructor
  Person(this.name, this.age);
}

class Student extends Person {
  int rollNumber;

  // Constructor
  Student(String name, int age, this.rollNumber) : super(name, age);
}

// Example 4: Inheritance Of Constructor With Named Parameters

class LaptopSu {
  // Constructor
  LaptopSu({required String name, required String color}) {
    print("Laptop constructor");
    print("Name: $name");
    print("Color: $color");
  }
}

class MacBookSu extends LaptopSu {
  // Constructor
  MacBookSu({required String name, required String color})
      : super(name: name, color: color) {
    print("MacBook constructor");
  }
}
