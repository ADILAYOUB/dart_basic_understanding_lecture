// Constructor In Dart

// A constructor is a special method used to initialize an object.
// It is called automatically when an object is created, and it can be used
// to set the initial values for the object’s properties.
// For example, Person person = Person("Khan", 30);
// Without Constructor Person person = Person():

// The constructor’s name should be the same as the class name.
// Constructor doesn’t have any return type.
// Syntax
class ClassName {
  // Constructor declaration: Same as class name
  ClassName() {
    // body of the constructor
  }
}

//? Example 1: How To Declare Constructor

class Student {
  String? name;
  int? age;
  int? rollNumber;

  // Constructor
  Student(String name, int age, int rollNumber) {
    print(
        "Constructor called"); // this is for checking the constructor is called or not.
    name = name;
    age = age;
    rollNumber = rollNumber;
  }
}

// Example 2:
class Teacher {
  String? name;
  int? age;
  String? subject;
  double? salary;

  // Constructor
  Teacher(String name, int age, String subject, double salary) {
    name = name;
    age = age;
    subject = subject;
    salary = salary;
  }
  // Method
  void display() {
    print("Name: $name");
    print("Age: $age");
    print("Subject: $subject");
    print("Salary: $salary\n"); // \n is used for new line
  }
}

// Example 3: Write Constructor Single Line
class Person {
  String? name;
  int? age;
  String? subject;
  double? salary;

  // Constructor in short form
  Person(name, age, subject, salary);

  // display method
  void display() {
    print("Name: $name");
    print("Age: $age");
    print("Subject: $subject");
    print("Salary: $salary");
  }
}

// Example 4: Constructor With Optional Parameters

class Employee {
  String? name;
  int? age;
  String? subject;
  double? salary;

  // Constructor
  Employee(name, age, [subject = "N/A", salary = 0]);

  // Method
  void display() {
    print("Name: $name");
    print("Age: $age");
    print("Subject: $subject");
    print("Salary: $salary");
  }
}

// Example 5 : Constructor With Named Parameters

class Chair {
  String? name;
  String? color;

// Constructor
  Chair({this.name, this.color});

// Method
  void display() {
    print("Name: $name");
    print("Color: $color");
  }
}

// Example 6: Constructor With Default Values

class Table {
  String? name;
  String? color;

  // Constructor
  Table({name = "Table1", color = "White"});

  // Method
  void display() {
    print("Name: $name");
    print("Color: $color");
  }
}

void main() {
  //Example 1
  // Here student is object of class Student.
  Student student = Student("John", 20, 1);
  print("Name: ${student.name}");
  print("Age: ${student.age}");
  print("Roll Number: ${student.rollNumber}");

  //Example 2
  // Each object will have its own copy of the properties.
  // Creating teacher1 object of class Teacher
  Teacher teacher1 = Teacher("Bhat Ali", 30, "Maths", 100000.0);
  teacher1.display();

  // Creating teacher2 object of class Teacher
  Teacher teacher2 = Teacher("Abubakar", 35, "Science", 90000.0);
  teacher2.display();

  //Example 3
  Person person = Person("Umar ", 30, "Maths", 80000.0);
  person.display();
  //Example 4
  Employee employee = Employee("Usman", 30);
  employee.display();
  // Example 5
  Chair chair = Chair(name: "Chair1", color: "Red");
  chair.display();

  Table table = Table();
  table.display();
}

// The constructor’s name should be the same as the class name.
// Constructor doesn’t have any return type.
// Constructor is only called once at the time of the object creation.
// Constructor is called automatically when an object is created.
// Constructor is used to initialize the values of the properties of the class.
